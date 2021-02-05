/*
 * robot_4DOF_jointspace_acc_data.c
 *
 * Real-Time Workshop code generation for Simulink model "robot_4DOF_jointspace_acc.mdl".
 *
 * Model Version              : 1.25
 * Real-Time Workshop version : 7.3  (R2009a)  15-Jan-2009
 * C source code generated on : Sat Aug 14 22:26:07 2010
 *
 * Target selection: accel.tlc
 *   Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Emulation hardware selection:
 *   Differs from embedded hardware (MATLAB Host)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "robot_4DOF_jointspace_acc.h"
#include "robot_4DOF_jointspace_acc_private.h"

/* Block parameters (auto storage) */
Parameters rtDefaultParameters = {
  0.0,                                 /* P_0 : '<S2>/Integrator'
                                        */

  /*  P_1 : '<Root>/desired joint'
   */
  { 5.2359877559829882E-001, 2.6179938779914941E-001, 2.6179938779914941E-001,
    1.0471975511965976E+000 },

  /*  P_2 : '<S1>/Derivative Gain'
   */
  { 50.0, 35.0, 35.0, 30.0 },

  /*  P_3 : '<S1>/Integral Gain'
   */
  { 0.0, 0.0, 0.0, 0.0 },
  0.0,                                 /* P_4 : '<S1>/Integrator'
                                        */

  /*  P_5 : '<S1>/Proportional Gain'
   */
  { 600.0, 500.0, 400.0, 400.0 },
  0.0                                  /* P_6 : '<S2>/Integrator1'
                                        */
};
