---
title: "Raspi²USBL: An Open-Source Raspberry Pi-Based Passive Inverted Ultrashort Baseline Positioning System for Underwater Robotics"
date: 2026-06-15T00:00:00+08:00
description: "An open-source Raspberry Pi-based passive inverted USBL (piUSBL) system for reproducible underwater acoustic positioning experiments, validated across tank, lake, and sea trials."
authors: "Jin Huang, Yingqiang Wang, Ying Chen"
venue: "IEEE Journal of Oceanic Engineering, Early Access, 2026"
publication: "IEEE Journal of Oceanic Engineering"
status: "Early Access"
typeLabel: "Journal article"
dateLabel: "2026"
doi: "10.1109/JOE.2026.3708044"
zoteroKey: "UIMNH9KM"
abstract: >-
  In this work, we built Raspi²USBL, a Raspberry Pi-based passive inverted ultrashort baseline (piUSBL) positioning system for underwater robotics. The goal is simple: make underwater acoustic positioning easier to reproduce, modify, and test in real experiments. The system includes a compact acoustic receiver, an active beacon, OCXO-based one-way travel-time synchronization, and a C++ real-time processing framework for TOF and DOA estimation. We validated the system in an anechoic tank, a freshwater lake, and open-sea trials, achieving sub-0.1% slant-range accuracy, about 0.1° bearing precision, and stable tracking up to approximately 1.3 km.
image: "/images/research/raspi2usbl_open_2025/fig_rxtxcabin.png"
imageWidth: "clamp(280px, 72vw, 760px)"
links:
  - icon: fas fa-file-pdf
    name: "PDF"
    url: "https://arxiv.org/pdf/2511.06998"
  - icon: fas fa-link
    name: "arXiv"
    url: "https://arxiv.org/abs/2511.06998"
  - icon: fas fa-quote-right
    name: "CITE"
    url: "#"
  - icon: fas fa-link
    name: "DOI"
    url: "https://doi.org/10.1109/JOE.2026.3708044"
  - icon: fab fa-github
    name: "Code & Data"
    url: "https://github.com/ethanjinhuang/Raspi2USBL"
citationFileName: "raspi2usbl_open_2026.bib"
citation: |-
  @ARTICLE{11615047,
    author={Huang, Jin and Wang, Yingqiang and Chen, Ying},
    journal={IEEE Journal of Oceanic Engineering},
    title={Raspi$^{2}$USBL: An Open-Source Raspberry Pi-Based Passive Inverted Ultrashort Baseline Positioning System for Underwater Robotics},
    year={2026},
    volume={},
    number={},
    pages={1-12},
    keywords={Distance measurement;Timing;Arrays;Oceans;Synchronization;Navigation;Software;Global navigation satellite system;Hardware;Location awareness;Acoustic positioning;open source;passive inverted ultrashort baseline (piUSBL);ultrashort baseline (USBL);underwater robotics},
    doi={10.1109/JOE.2026.3708044}
  }
tags:
  - "Underwater acoustic positioning"
  - "Passive inverted USBL (piUSBL)"
  - "Open-source hardware"
  - "Raspberry Pi"
  - "AUV swarm localization"
showInHome: true
showTitle: true
---

## What We Built
Accurate positioning is one of the first problems that appears in underwater robotics, because GNSS signals cannot be used below the water surface. Commercial acoustic positioning systems are useful, but they are often expensive, closed, and difficult to modify for research experiments.

In this work, we built Raspi²USBL as a small, reproducible acoustic positioning platform based on Raspberry Pi. It is designed for students and researchers who want to understand the full positioning chain, from acoustic transmission and reception to signal processing, logging, and field validation.

## How It Works
Raspi²USBL consists of an acoustic receiver and an acoustic beacon. The receiver integrates a Raspberry Pi 5, a six-channel hydrophone array, low-noise amplification, adaptive gain control, an OCXO timing module, and an MCC data acquisition board. The beacon uses the same embedded platform with a DAC board, impedance-matching network, power amplifier, and acoustic transducer.

Before deployment, we synchronize the receiver and beacon clocks using a GNSS-referenced 1 PPS signal. After that, the system can work underwater without GNSS by using one-way travel time. In practice, the beacon broadcasts an acoustic signal, the receiver records it with the hydrophone array, and the software estimates both the travel time and incoming direction.

{{< fig "/images/research/raspi2usbl_open_2025/fig_softwareflow.png" "Software workflow for receiving, transmitting, signal processing, communication, and data logging on the Raspberry Pi platform." "large" >}}

The software is written in C++ and runs on Raspberry Pi OS. Configuration files control the operating mode, waveform, sampling setup, gain range, and logging options. The processing pipeline uses a 10-12 kHz LFM waveform, bandpass filtering, matched filtering for TOF extraction, conventional beamforming for DOA estimation, and adaptive gain control to keep the received signal usable in changing acoustic conditions.

{{< fig "/images/research/raspi2usbl_open_2025/fig_signalprocessflow.png" "Signal processing workflow for LFM transmission, acoustic reception, matched filtering, and array beamforming-based direction-of-arrival estimation." "medium" >}}

## What Is Included
- A Raspberry Pi-based piUSBL receiver and beacon architecture.
- A C++ software framework for acoustic transmission, reception, TOF estimation, DOA estimation, adaptive gain control, and data logging.
- Raw acoustic data and processing scripts for reproducing selected results.
- Experimental validation in a tank, lake, and sea environment.

## Field Validation
We tested the system in three environments. In an anechoic tank, controlled range and bearing sweeps showed a distance RMSE of 0.07 m and an average DOA RMSE of 0.05°. After compensation, the system reached better than 0.1% slant-range accuracy and approximately 0.1° angular accuracy.

In the lake experiment, the Raspi²USBL trajectory followed a DGNSS ground-truth trajectory despite multipath, shoreline reflections, ambient noise, and platform disturbance. The horizontal positioning RMSE was 4.29 m, with most measurements falling within ±5 m.

{{< fig "/images/research/raspi2usbl_open_2025/fig_exp_lake_res.png" "Freshwater lake validation showing the Raspi²USBL positioning trajectory against the ground-truth trajectory." "small" >}}

In the sea trial, we used the system to track an AUV over an operational range of approximately 1309 m. The slant-range and DOA measurements remained stable throughout the mission, showing that this low-cost platform can support long-range trajectory reconstruction in realistic coastal conditions.

{{< fig "/images/research/raspi2usbl_open_2025/fig_exp_sea_res.png" "Open-sea validation showing the AUV positioning trajectory, start and end locations, slant range, and direction-of-arrival measurements." "medium" >}}

## Open-Source Resources
The project materials are available here:

- **Source code & Data:** [github.com/ethanjinhuang/Raspi2USBL](https://github.com/ethanjinhuang/Raspi2USBL)

Our hope is that the repository can serve as a starting point for researchers who want to build their own acoustic positioning system, reproduce the signal processing pipeline, or adapt the platform for cooperative underwater robotics experiments.

## Keywords
- Underwater acoustic positioning
- Passive inverted USBL (piUSBL)
- Open-source
- Swarm positioning
