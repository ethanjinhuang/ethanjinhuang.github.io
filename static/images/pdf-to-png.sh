#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./pdf-to-png.sh <pdf-file-or-directory> [--recursive]

Examples:
  ./pdf-to-png.sh research/raspi2usbl_open_2025
  ./pdf-to-png.sh research/raspi2usbl_open_2025/fig_rxtxcabin.pdf
  ./pdf-to-png.sh research --recursive

The script converts the first page of each PDF to a same-name PNG, e.g.
  fig_rxtxcabin.pdf -> fig_rxtxcabin.png
After a PNG is successfully generated or confirmed up to date, the source PDF
is removed.
EOF
}

if ! command -v pdftoppm >/dev/null 2>&1; then
  echo "error: pdftoppm is required. Install poppler first." >&2
  exit 1
fi

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  usage
  exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="$1"
recursive=false

if [ "${2:-}" = "--recursive" ]; then
  recursive=true
elif [ "$#" -eq 2 ]; then
  usage
  exit 1
fi

if [ -e "$target" ]; then
  target_path="$(cd "$(dirname "$target")" && pwd)/$(basename "$target")"
elif [ -e "$script_dir/$target" ]; then
  target_path="$script_dir/$target"
else
  echo "error: target not found: $target" >&2
  exit 1
fi

convert_pdf() {
  local pdf_path="$1"
  local png_path="${pdf_path%.*}.png"
  local tmp_prefix="${pdf_path%.*}.$$"
  local tmp_png="${tmp_prefix}.png"

  if [ -f "$png_path" ] && [ "$png_path" -nt "$pdf_path" ]; then
    echo "up to date: ${png_path#$script_dir/}"
    rm -f "$pdf_path"
    echo "removed: ${pdf_path#$script_dir/}"
    return
  fi

  pdftoppm \
    -f 1 \
    -l 1 \
    -singlefile \
    -png \
    -r 180 \
    "$pdf_path" \
    "$tmp_prefix" >/dev/null

  if [ ! -f "$tmp_png" ]; then
    echo "error: conversion did not create ${tmp_png}" >&2
    exit 1
  fi

  mv "$tmp_png" "$png_path"
  echo "generated: ${png_path#$script_dir/}"
  rm -f "$pdf_path"
  echo "removed: ${pdf_path#$script_dir/}"
}

converted=0

if [ -f "$target_path" ]; then
  case "$target_path" in
    *.pdf|*.PDF)
      convert_pdf "$target_path"
      converted=$((converted + 1))
      ;;
    *)
      echo "error: target file is not a PDF: $target_path" >&2
      exit 1
      ;;
  esac
elif [ -d "$target_path" ]; then
  if [ "$recursive" = true ]; then
    while IFS= read -r -d '' pdf_path; do
      convert_pdf "$pdf_path"
      converted=$((converted + 1))
    done < <(find "$target_path" -type f \( -iname '*.pdf' \) -print0)
  else
    while IFS= read -r -d '' pdf_path; do
      convert_pdf "$pdf_path"
      converted=$((converted + 1))
    done < <(find "$target_path" -maxdepth 1 -type f \( -iname '*.pdf' \) -print0)
  fi
else
  echo "error: target is neither a file nor a directory: $target_path" >&2
  exit 1
fi

if [ "$converted" -eq 0 ]; then
  echo "no PDF files found."
else
  echo "done: ${converted} PDF file(s) processed."
fi
