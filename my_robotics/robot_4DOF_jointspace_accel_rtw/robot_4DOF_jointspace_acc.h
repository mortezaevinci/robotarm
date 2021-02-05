/*
 * robot_4DOF_jointspace_acc.h
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
#ifndef RTW_HEADER_robot_4DOF_jointspace_acc_h_
#define RTW_HEADER_robot_4DOF_jointspace_acc_h_
#ifndef robot_4DOF_jointspace_acc_COMMON_INCLUDES_
# define robot_4DOF_jointspace_acc_COMMON_INCLUDES_
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#define S_FUNCTION_NAME                simulink_only_sfcn
#define S_FUNCTION_LEVEL               2
#define RTW_GENERATED_S_FUNCTION
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "dspsvd_rt.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"
#include "rt_MAX.h"
#include "rt_MIN.h"
#endif                                 /* robot_4DOF_jointspace_acc_COMMON_INCLUDES_ */

#include "robot_4DOF_jointspace_acc_types.h"

/* Block signals (auto storage) */
typedef struct {
  real_T B_0_0_0[4];                   /* '<S2>/Integrator' */
  real_T B_0_3_0[4];                   /* '<Root>/desired joint' */
  real_T B_0_5_0[4];                   /* '<S1>/Derivative Gain' */
  real_T B_0_7_0[4];                   /* '<S1>/Integral Gain' */
  real_T B_0_13_0[4];                  /* '<S2>/Integrator1' */
  real_T B_0_20_0[4];                  /* '<S2>/Matrix Multiply' */
  real_T B_0_2_0[4];                   /* '<Root>/G' */
  real_T B_0_12_0[4];                  /* '<S2>/G' */
  real_T B_0_14_0[16];                 /* '<S2>/M' */
  real_T B_0_18_0[4];                  /* '<S2>/V' */
} BlockIO;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T Pseudoinverse_X[16];          /* '<S2>/Pseudoinverse' */
  real_T Pseudoinverse_E[4];           /* '<S2>/Pseudoinverse' */
  real_T Pseudoinverse_WORK[4];        /* '<S2>/Pseudoinverse' */
  real_T Pseudoinverse_S[4];           /* '<S2>/Pseudoinverse' */
  real_T Pseudoinverse_U[16];          /* '<S2>/Pseudoinverse' */
  real_T Pseudoinverse_V[16];          /* '<S2>/Pseudoinverse' */
  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA[4];
    real_T TimeStampB;
    real_T LastUAtTimeB[4];
  } IdealDerivative_RWORK;             /* '<S1>/Ideal Derivative' */

  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<Root>/Scope' */

  struct {
    void *LoggedData;
  } Scope_PWORK_k;                     /* '<S2>/Scope' */
} D_Work;

/* Continuous states (auto storage) */
typedef struct {
  real_T Integrator_CSTATE[4];         /* '<S2>/Integrator' */
  real_T Integrator_CSTATE_m[4];       /* '<S1>/Integrator' */
  real_T Integrator1_CSTATE[4];        /* '<S2>/Integrator1' */
} ContinuousStates;

/* State derivatives (auto storage) */
typedef struct {
  real_T Integrator_CSTATE[4];         /* '<S2>/Integrator' */
  real_T Integrator_CSTATE_m[4];       /* '<S1>/Integrator' */
  real_T Integrator1_CSTATE[4];        /* '<S2>/Integrator1' */
} StateDerivatives;

/* State disabled  */
typedef struct {
  boolean_T Integrator_CSTATE[4];      /* '<S2>/Integrator' */
  boolean_T Integrator_CSTATE_m[4];    /* '<S1>/Integrator' */
  boolean_T Integrator1_CSTATE[4];     /* '<S2>/Integrator1' */
} StateDisabled;

/* Parameters (auto storage) */
struct Parameters_ {
  real_T P_0;                          /* Expression: 0
                                        * '<S2>/Integrator'
                                        */
  real_T P_1[4];                       /* Expression: [pi/6;pi/12;pi/12;pi/3]
                                        * '<Root>/desired joint'
                                        */
  real_T P_2[4];                       /* Expression: D
                                        * '<S1>/Derivative Gain'
                                        */
  real_T P_3[4];                       /* Expression: I
                                        * '<S1>/Integral Gain'
                                        */
  real_T P_4;                          /* Expression: 0
                                        * '<S1>/Integrator'
                                        */
  real_T P_5[4];                       /* Expression: P
                                        * '<S1>/Proportional Gain'
                                        */
  real_T P_6;                          /* Expression: 0
                                        * '<S2>/Integrator1'
                                        */
};

extern Parameters rtDefaultParameters; /* parameters */

#endif                                 /* RTW_HEADER_robot_4DOF_jointspace_acc_h_ */
