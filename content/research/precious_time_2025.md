---
title: "Precise Time Delay Measurement and Compensation for Tightly Coupled Underwater SINS/piUSBL Navigation"
date: 2026-01-30T00:00:00+08:00
description: "A tightly coupled SINS/piUSBL navigation framework with precise time delay measurement and compensation using synchronized clocks, validated through simulations and field experiments."
authors: "Jin Huang, Yingqiang Wang, Haoda Li, Zichen Liu, Zhikun Wang, Ying Chen"
venue: "Preprint / Journal manuscript (2025)"
image: "/images/research/precious_time_2025/abstractfig.png"
badges:
  - "SINS/piUSBL"
  - "Time delay compensation"
  - "Tightly coupled navigation"
  - "OCXO synchronization"
links:
  - icon: fas fa-file-pdf
    url: "https://example.com"
tags:
  - "Underwater integrated navigation"
  - "Passive inverted USBL (piUSBL)"
  - "Time synchronization"
  - "Tightly coupled sensor fusion"
  - "Autonomous underwater vehicle"
showInHome: true
showTitle: true
---

## Research Overview
Time misalignment between acoustic positioning systems and inertial navigation sensors is a critical yet often underappreciated source of error in underwater integrated navigation. This work proposes a tightly coupled SINS/piUSBL/depth gauge navigation framework that explicitly measures and compensates time delay using synchronized clocks and acoustic signal timing. By transforming time delay from an implicit, unobservable disturbance into a quantifiable parameter, the proposed approach enables delay-aware sensor fusion. The framework targets latency-sensitive underwater navigation scenarios where acoustic propagation and processing delays cannot be neglected.

## Problem Addressed
In underwater environments, GNSS is unavailable and acoustic positioning systems must be integrated with inertial navigation to constrain drift. However, due to the slow propagation speed of sound and non-negligible signal processing latency, acoustic measurements are inherently delayed relative to high-rate inertial sensors. When these delayed observations are fused without proper handling, significant navigation errors can accumulate. Existing approaches either estimate delay as an additional filter state or assume known delay values, often without addressing observability or accurately characterizing the physical sources of delay. This mismatch between measurement time and fusion time remains a key limitation in practical SINS/acoustic navigation systems.

## Methodology
The proposed system tightly integrates a strapdown inertial navigation system (SINS), a passive inverted ultra-short baseline (piUSBL) acoustic positioning system, and a depth gauge under a unified time-synchronized architecture. An OCXO-based clock synchronization scheme aligns acoustic transmission, reception, signal processing, and inertial sensing to a common time base. This enables precise timestamping of the acoustic time-of-flight (TOF) and subsequent signal processing stages.

Based on synchronized timing, the system explicitly measures the delay between the true acoustic observation epoch and the time at which processed measurements become available. A reconstruction-based filtering strategy is then employed to compensate for this delay within the tightly coupled navigation filter. The observation model uses a minimal yet observable measurement set—slant range, azimuth, and depth—avoiding poor vertical-angle observability inherent to planar acoustic arrays while maintaining low system complexity.

## Key Contributions
- A tightly coupled SINS/piUSBL/depth gauge navigation framework with explicit time synchronization across sensors.
- A systematic delay measurement method that quantifies both acoustic propagation delay and system processing delay using synchronized clocks.
- Transformation of time delay from an unobservable error source into a measurable and compensable parameter within the navigation framework.
- Comprehensive validation through simulations and real-world field experiments demonstrating significant accuracy improvement.

## Experimental Validation
The proposed approach is validated through both simulation studies and field experiments. Simulations analyze the impact of time delay on USBL, iUSBL, and piUSBL-based navigation systems, showing that unmodeled delay can severely degrade positioning accuracy. When precise delay measurement and compensation are applied, the tightly coupled SINS/piUSBL system achieves substantial reductions in navigation error.

Field experiments conducted in a freshwater reservoir further confirm the method’s effectiveness. Using DGNSS as ground truth, the delay-compensated system reduces position RMSE by approximately 40% and maximum error by over 30% compared with the uncompensated case. The results demonstrate robustness across real acoustic environments and validate the practical feasibility of delay-aware integrated navigation.

## Open-Source and Research Impact
By leveraging synchronized clocks and exposing the timing structure of acoustic signal processing, this work provides a generalizable framework for addressing latency in acoustic-aided navigation systems. The methodology is applicable beyond piUSBL to other delay-sensitive underwater sensing modalities. It also lays the groundwork for deeper coupling between raw acoustic data and inertial navigation, supporting future research on high-precision and reproducible underwater navigation systems.

## Keywords
- Underwater integrated navigation  
- Passive inverted USBL (piUSBL)  
- Time delay measurement and compensation  
- Tightly coupled sensor fusion  
- Autonomous underwater vehicle  
