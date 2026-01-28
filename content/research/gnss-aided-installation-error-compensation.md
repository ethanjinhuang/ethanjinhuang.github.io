---
title: "GNSS-aided installation error compensation for DVL/INS integrated navigation system using error-state Kalman filter"
date: 2026-01-28T00:00:00+08:00
description: "GNSS-aided estimation and compensation of DVL installation errors for robust AUV navigation."
image: "/images/gallary/zju.jpg"
badges:
  - "INS/DVL"
  - "ESKF"
  - "GNSS-aided"
links:
  - icon: fas fa-file-pdf
    url: "https://example.com"
tags:
  - "INS/DVL integration"
  - "Installation error compensation"
  - "Error-state Kalman filter"
  - "GNSS-aided calibration"
  - "Autonomous underwater vehicle"
showInHome: true
---

# GNSS-aided installation error compensation for DVL/INS integrated navigation system using error-state Kalman filter

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
- INS/DVL integration
- Installation error compensation
- Error-state Kalman filter
- GNSS-aided calibration
- Autonomous underwater vehicle
