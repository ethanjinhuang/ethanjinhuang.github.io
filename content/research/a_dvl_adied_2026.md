---
title: "A DVL-Aided Loosely Coupled Inertial Navigation Strategy for AUVs with Attitude Error Modeling and Variance Propagation"
date: 2026-01-30T00:00:00+08:00
build:
  render: never
  list: never
  publishResources: false
description: "A DVL-aided loosely coupled SINS navigation strategy that explicitly models attitude-induced velocity projection errors and statistically consistent variance propagation, achieving robust long-term accuracy for AUVs."
authors: "Jin Huang, Zichen Liu, Haoda Li, Zhikun Wang, Ying Chen"
venue: "arXiv preprint (2026)"
publication: "arXiv:2601.19509"
status: "Preprint"
typeLabel: "Preprint"
dateLabel: "January 2026"
doi: "10.48550/arXiv.2601.19509"
zoteroKey: "NP5FFPZL"
abstract: >-
  In underwater navigation systems, strap-down inertial navigation system/Doppler velocity log (SINS/DVL)-based loosely coupled architectures are widely adopted. Conventional approaches project DVL velocities from the body coordinate system to the navigation coordinate system using SINS-derived attitude; however, accumulated attitude estimation errors introduce biases into velocity projection and degrade navigation performance during long-term operation. To address this issue, two complementary improvements are introduced. First, a vehicle attitude error-aware DVL velocity transformation model is formulated by incorporating attitude error terms into the observation equation to reduce projection-induced velocity bias. Second, a covariance matrix-based variance propagation method is developed to transform DVL measurement uncertainty across coordinate systems, introducing an expectation-based attitude error compensation term to achieve statistically consistent noise modeling. Simulation and field experiment results demonstrate that both improvements individually enhance navigation accuracy and confirm that accumulated attitude errors affect both projected velocity measurements and their associated uncertainty. When jointly applied, long-term error divergence is effectively suppressed. Field experimental results show that the proposed approach achieves a 78.3% improvement in 3D position RMSE and a 71.8% reduction in the maximum component-wise position error compared with the baseline IMU+DVL method, providing a robust solution for improving long-term SINS/DVL navigation performance.
image: "/images/research/a_dvl_adied_2026/abstractfig.png"
links:
  - icon: fas fa-file-pdf
    name: "PDF"
    url: "https://arxiv.org/pdf/2601.19509"
  - icon: fas fa-link
    name: "arXiv"
    url: "https://arxiv.org/abs/2601.19509"
  - icon: fas fa-quote-right
    name: "CITE"
    url: "https://arxiv.org/bibtex/2601.19509"
  - icon: fas fa-link
    name: "DOI"
    url: "https://doi.org/10.48550/arXiv.2601.19509"
citationFileName: "a_dvl_adied_2026.bib"
citation: |-
  @misc{huangDVLAidedLoosely2026,
    title = {A DVL Aided Loosely Coupled Inertial Navigation Strategy for AUVs with Attitude Error Modeling and Variance Propagation},
    author = {Huang, Jin and Liu, Zichen and Li, Haoda and Wang, Zhikun and Chen, Ying},
    year = 2026,
    number = {arXiv:2601.19509},
    eprint = {2601.19509},
    primaryclass = {cs},
    publisher = {arXiv},
    doi = {10.48550/arXiv.2601.19509},
    urldate = {2026-01-28},
    archiveprefix = {arXiv}
  }
tags:
  - "Underwater integrated navigation"
  - "SINS/DVL loosely coupled fusion"
  - "Attitude error compensation"
  - "Covariance propagation"
  - "Autonomous underwater vehicle"
showInHome: false
showTitle: true
---

## Research Overview
Loosely coupled SINS/DVL architectures are widely adopted in autonomous underwater vehicles due to their simplicity and robustness, yet their long-term performance is often limited by attitude estimation errors. This work proposes a DVL-aided loosely coupled inertial navigation strategy that explicitly accounts for attitude-induced velocity projection errors and the associated uncertainty propagation. By jointly correcting the projected DVL velocity and its statistical characteristics, the method suppresses error divergence during long-duration missions. The framework targets practical AUV deployments where accumulated attitude errors cannot be ignored.

## Problem Addressed
In conventional loosely coupled SINS/DVL systems, DVL velocities measured in the body frame are projected into the navigation frame using SINS-derived attitude. This procedure implicitly assumes accurate attitude estimation, which rarely holds in long-term underwater operation. Accumulated attitude errors introduce biases into the projected velocity measurements, degrading both velocity and position estimates. Moreover, DVL measurement uncertainty—typically provided as standard deviations in the body frame—is often naively rotated across coordinate systems, leading to statistically inconsistent noise modeling. These two issues jointly undermine the reliability and robustness of loosely coupled SINS/DVL navigation systems.

## Methodology
The proposed approach reconstructs the DVL observation model in a loosely coupled SINS/DVL framework by explicitly incorporating vehicle attitude error terms into the velocity projection from the body frame to the navigation frame. This attitude error-aware velocity transformation mitigates systematic biases introduced by inaccurate attitude estimates during long-term navigation.

To address uncertainty modeling, a covariance matrix-based variance propagation method is introduced. Instead of directly rotating standard deviation vectors, the DVL measurement uncertainty is represented using a covariance matrix, which can be consistently transformed across coordinate systems. An expectation-based attitude error compensation term is derived to account for the influence of attitude uncertainty on the transformed covariance. Together, the attitude error-aware velocity projection and covariance-based variance propagation form a statistically consistent observation model for loosely coupled SINS/DVL navigation.

## Key Contributions
- An attitude error-aware DVL velocity projection model for loosely coupled SINS/DVL navigation systems.
- A covariance matrix-based variance propagation method that ensures statistically consistent transformation of DVL measurement uncertainty.
- Explicit treatment of attitude-induced degradation in both projected velocity measurements and their associated uncertainty.
- Extensive validation demonstrating effective suppression of long-term navigation error divergence.

## Experimental Validation
The proposed strategy is evaluated through comprehensive simulations and field experiments. Simulation results show that both attitude error compensation and covariance-based variance propagation individually improve navigation accuracy and stability. When jointly applied, long-term error divergence is effectively suppressed.

Field experiments conducted in a freshwater lake further validate the approach under real-world conditions, using DGNSS as ground truth. Compared with the baseline IMU+DVL method, the proposed method achieves approximately a 78.3% improvement in 3D position RMSE and a 71.8% reduction in the maximum component-wise position error. These results confirm the robustness and practical effectiveness of the proposed loosely coupled navigation strategy.

## Research Impact
This work highlights that attitude errors in loosely coupled SINS/DVL systems affect not only velocity projection but also the statistical properties of measurement uncertainty. By jointly addressing both effects, the proposed framework provides a more reliable and theoretically consistent solution for long-term underwater navigation. The methodology is applicable to a wide range of DVL-aided inertial navigation systems and offers a principled pathway for improving robustness without increasing system complexity.

## Keywords
- Underwater navigation
- SINS/DVL
- Attitude error
- Autonomous underwater vehicle  
