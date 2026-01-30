---
title: "Raspi²USBL: An open-source Raspberry Pi–Based Passive Inverted Ultra-Short Baseline Positioning System for Underwater Robotics"
date: 2026-01-30T00:00:00+08:00
description: "An open-source Raspberry Pi–based passive inverted USBL (piUSBL) system for reproducible underwater acoustic positioning experiments, validated across tank, lake, and sea trials."
authors: "Jin Huang, Yingqiang Wang, Ying Chen"
venue: "Preprint / Journal manuscript (2025)"
image: "/images/research/raspi2usbl_open_2025/abstractfig.png"
badges:
  - "piUSBL"
  - "OWTT"
  - "Raspberry Pi"
  - "Open-source"
links:
  - icon: fas fa-file-pdf
    url: "https://example.com"
tags:
  - "Underwater acoustic positioning"
  - "Passive inverted USBL (piUSBL)"
  - "Open-source hardware"
  - "Raspberry Pi"
  - "AUV swarm localization"
showInHome: true
showTitle: true
---

## Research Overview
Underwater robotics experiments often require positioning capability in environments where GNSS is unavailable, yet many existing solutions are difficult to reproduce due to cost and limited openness. Raspi²USBL is an open-source, Raspberry Pi–based passive inverted ultra-short baseline (piUSBL) positioning system designed to provide a practical and reproducible research platform. The system targets field-deployable underwater robots and supports experimental workflows that emphasize repeatability and transparent implementation. It is intended to be suitable for multi-robot and swarm research where scalable and consistent positioning infrastructure is needed.

## Problem Addressed
Underwater positioning remains challenging because GNSS cannot be used below the surface and acoustic sensing must operate under multipath, attenuation, and platform motion. Commercial USBL systems can provide strong performance, but they are typically expensive, closed, and difficult to adapt for research-driven modifications or benchmarking. Implementing acoustic positioning from scratch also carries non-trivial engineering overhead in transducer interfacing, timing, signal processing, and synchronization. Existing passive inverted USBL (piUSBL) systems reduce some hardware constraints, but closed-source designs or limited extensibility can still prevent systematic comparison, extension, and reproducible validation.

## System Architecture and Methodology
Raspi²USBL follows a modular hardware–software architecture centered on a Raspberry Pi 5, a multi-channel hydrophone array, and a signal chain that includes low-noise amplification (LNA) with automatic gain control (AGC). The timing and synchronization design uses an OCXO-based clock discipline, and the system integrates DAQ/DAC boards for acquisition and signal interfacing required by the positioning workflow. On the methodology side, Raspi²USBL implements an one-way travel time (OWTT)–based piUSBL framework that estimates range and bearing using passive receptions.

The real-time processing pipeline is organized as a sequence of bandpass filtering, matched filtering for time-of-flight (TOF) estimation, conventional beamforming for direction-of-arrival (DOA) estimation, and adaptive gain control for stable operation across varying signal conditions. The pipeline is designed so that key stages are independently testable and replaceable, supporting reproducible experiments and enabling researchers to extend components (e.g., alternative beamformers or detection logic) without reworking the entire stack.

## Key Contributions
- A fully open-source piUSBL system with released hardware design files and C++ software for end-to-end positioning.
- High-precision OWTT-based TOF and DOA estimation using low-cost, field-deployable components.
- A unified hardware–software framework that supports reproducible underwater acoustic positioning experiments.
- A design intended to scale toward multi-vehicle and swarm positioning studies through consistent instrumentation and modular processing.

## Experimental Validation
The system is validated across controlled and operational environments, including an anechoic tank, a freshwater lake, and open-sea trials. Reported performance includes slant-range accuracy better than 0.1% and bearing accuracy within 0.1° under the tested conditions. Stable positioning is demonstrated up to approximately 1.3 km, indicating practical operating range for many underwater robotics deployments. The multi-environment evaluation is used to assess robustness from controlled acoustic settings to real-world variability.

## Open-Source Impact
By releasing the hardware designs, software implementation, and raw data, Raspi²USBL lowers the entry barrier for research groups that need underwater positioning but cannot rely on proprietary systems. The open artifacts support benchmarking and controlled comparisons across algorithms, hardware variants, and experimental sites, which is difficult to achieve with closed platforms. This openness also facilitates extension toward cooperative navigation and swarm robotics by enabling shared baselines and repeatable validation workflows.

## Keywords
- Underwater acoustic positioning
- Passive inverted USBL (piUSBL)
- Open-source hardware
- Raspberry Pi
- AUV swarm localization
