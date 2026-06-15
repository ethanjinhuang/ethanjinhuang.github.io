---
title: "GNSS-aided installation error compensation for DVL/INS integrated navigation system using error-state Kalman filter"
date: 2026-01-28T00:00:00+08:00
description: "GNSS-aided estimation and compensation of DVL installation errors for robust AUV navigation."
authors: "Jin Huang, Haoda Li, Zichen Liu, Zhikun Wang, Yingqiang Wang, Ying Chen"
venue: "Measurement (2025)"
publication: "Measurement, Volume 242, 116224"
status: "Journal article"
typeLabel: "Journal article"
dateLabel: "January 2025"
doi: "10.1016/j.measurement.2024.116224"
zoteroKey: "4MLFFMZT"
abstract: >-
  The integrated navigation system (INS), which integrates the strap-down inertial navigation system (SINS) and the Doppler velocity log (DVL), is widely used in the application of autonomous underwater vehicle (AUV) navigation and positioning. However, due to the constraints imposed by the AUV's size and system design, a coordinate system mismatch occurs between the DVL and SINS, which can be modeled as installation error (IE), including installation error angles and lever arm errors that significantly impact the system's accuracy. To address these issues, we introduce an INS based on feedback error-state Kalman filter (ESKF) that accounts for DVL installation error (IE) and propose a DVL IE compensation method. This paper details the system design of the ESKF-based INS, including the coarse initial alignment of the moving base, fine alignment, mechanization, and data fusion. The proposed IE compensation method is designed to successively estimate and correct the DVL IE, utilizing the global navigation satellite system (GNSS) for observations, minimizing the error model output to estimate the IE value. Simulations and field experiments indicate that the cumulative accuracy has been improved by 50.3% after compensation. Finally, carried by a disc-shaped AUV, the ESKF-based INS with DVL IE compensation performs well in practical AUV navigation applications.
image: "/images/research/gnss_aided_2025/abstractfig.png"
links:
  - icon: fas fa-file-pdf
    name: "PDF"
    url: "https://doi.org/10.1016/j.measurement.2024.116224"
  - icon: fas fa-link
    name: "DOI"
    url: "https://doi.org/10.1016/j.measurement.2024.116224"
  - icon: fas fa-quote-right
    name: "CITE"
    url: "#"
citationFileName: "gnss_aided_2025.bib"
citation: |-
  @article{huangGNSSaidedInstallationError2025,
    title = {GNSS-Aided Installation Error Compensation for DVL/INS Integrated Navigation System Using Error-State Kalman Filter},
    author = {Huang, Jin and Li, Haoda and Liu, Zichen and Wang, Zhikun and Wang, Yingqiang and Chen, Ying},
    year = 2025,
    journal = {Measurement},
    volume = {242},
    pages = {116224},
    issn = {0263-2241},
    doi = {10.1016/j.measurement.2024.116224},
    urldate = {2025-01-10},
    lccn = {2}
  }
tags:
  - "INS/DVL integration"
  - "Installation error compensation"
  - "Error-state Kalman filter"
  - "GNSS-aided calibration"
  - "Autonomous underwater vehicle"
showInHome: true
showTitle: true
---

## Research Overview
This work addresses installation errors of Doppler Velocity Log (DVL) sensors in SINS/DVL integrated navigation for autonomous underwater vehicles (AUVs). It proposes a GNSS-aided strategy to estimate and compensate DVL misalignment and lever-arm errors rather than treating them as fixed biases. The core idea is to use surface-referenced GNSS information to infer installation errors and then apply compensation during underwater navigation. The motivation is to improve navigation reliability in real AUV deployments where precise mechanical alignment is difficult to guarantee.

## Problem Addressed
DVL installation errors, including sensor misalignment and lever-arm offsets, can introduce systematic velocity and position drift that accumulates during long-duration AUV missions. In practice, AUVs face tight mechanical constraints, limited access for precise alignment, and changes after maintenance or payload reconfiguration. Existing calibration approaches often require controlled environments or assume stable geometry, which can be impractical for field operations.

## Methodology
The study adopts an error-state Kalman filter (ESKF) within a SINS/DVL integrated navigation framework. A GNSS-referenced estimation strategy is used to infer installation errors when GNSS is available at the surface. Instead of directly augmenting the navigation filter with installation error states, an optimization-based compensation method estimates the misalignment and lever-arm errors and then corrects the navigation solution.

## Key Contributions
- Joint estimation of DVL misalignment angles and lever-arm errors in a GNSS-referenced setting.
- Separation of installation error compensation from navigation state estimation to preserve filter stability.
- Validation across simulation, lake experiments, and real AUV trials.

## Experimental Validation
Simulations and field experiments show that compensating installation errors reduces cumulative navigation error by roughly 50% compared with uncompensated integration. Lake tests and real AUV deployments demonstrate robust performance under practical operating conditions. The results indicate that the compensation approach remains effective when GNSS is only intermittently available.

## Keywords
- SINS/DVL
- Installation error
- Error-state Kalman filter
- Calibration
- Autonomous underwater vehicle
