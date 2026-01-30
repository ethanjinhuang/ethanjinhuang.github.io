---
title: "A DVL-Aided Loosely Coupled Inertial Navigation Strategy for AUVs with Attitude Error Modeling and Variance Propagation"
date: 2026-01-30T00:00:00+08:00
description: "A DVL-aided loosely coupled SINS navigation strategy that explicitly models attitude-induced velocity projection errors and statistically consistent variance propagation, achieving robust long-term accuracy for AUVs."
authors: "Jin Huang, Zichen Liu, Haoda Li, Zhikun Wang, Ying Chen"
venue: "Preprint / Journal manuscript (2026)"
image: "/images/research/a_dvl_adied_2026/abstractfig.png"
badges:
  - "SINS/DVL"
  - "Loosely coupled navigation"
  - "Attitude error modeling"
  - "Variance propagation"
links:
  - icon: fas fa-file-pdf
    url: "https://example.com"
tags:
  - "Underwater integrated navigation"
  - "SINS/DVL loosely coupled fusion"
  - "Attitude error compensation"
  - "Covariance propagation"
  - "Autonomous underwater vehicle"
showInHome: true
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
- Underwater integrated navigation  
- SINS/DVL loosely coupled fusion  
- Attitude error modeling  
- Variance propagation  
- Autonomous underwater vehicle  
