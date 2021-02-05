/*
 * This file is not available for use in any application other than as a
 * MATLAB(R) MEX file for use with the Simulink(R) product.
 */

/*
 * robot_4DOF_jointspace_acc.c
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
#include <math.h>
#include "robot_4DOF_jointspace_acc.h"
#include "robot_4DOF_jointspace_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat                     S-Function
#define AccDefine1                     Accelerator_S-Function

void MWDSPCG_Pseudoinverse_D(real_T pS[], real_T pU[], real_T pV[], real_T pX[],
  const int32_T M, const int32_T N)
{
  int32_T ppSIdx;
  real_T tol;
  real_T cabsS;
  int32_T P;
  int32_T rank;
  int32_T ppXIdx;
  int32_T ppUIdx;
  int32_T ppVIdx;
  int32_T j;
  int32_T k;
  rank = 0;
  P = rt_MIN(M, N);
  tol = (real_T)rt_MAX(M, N) * pS[0U] * 2.2204460492503131E-016;
  ppSIdx = P - 1;
  while (P > 0) {
    cabsS = muDoubleScalarAbs(pS[ppSIdx]);
    ppSIdx = ppSIdx - 1;
    if (cabsS >= tol) {
      rank = P;
      P = 0;
    }

    P = P - 1;
  }

  if (rank != 0) {
    ppXIdx = 0;

    /* Initialize output array */
    for (P = 0; P < N * M; P = P + 1) {
      pX[ppXIdx] = 0.0;
      ppXIdx = ppXIdx + 1;
    }

    ppXIdx = 0;
    for (j = 0; j < M; j = j + 1) {
      for (P = 0; P < N; P = P + 1) {
        ppVIdx = P;
        ppUIdx = j;
        ppSIdx = 0;
        for (k = 0; k < rank; k = k + 1) {
          tol = pV[ppVIdx] * pU[ppUIdx] / pS[ppSIdx];
          pX[ppXIdx] = pX[ppXIdx] + tol;
          ppSIdx = ppSIdx + 1;
          ppVIdx = ppVIdx + N;
          ppUIdx = ppUIdx + M;
        }

        ppXIdx = ppXIdx + 1;
      }
    }
  }
}

/* Outputs for root system: '<Root>' */
static void mdlOutputs(SimStruct *S, int_T tid)
{
  /* local block i/o variables */
  real_T B_0_6_0[4];

  {
    real_T B_0_15_0[16];
    int32_T i;
    real_T B_0_4_0_idx;
    real_T B_0_4_0_idx_0;
    real_T B_0_4_0_idx_1;
    real_T B_0_4_0_idx_2;
    real_T B_0_4_0_idx_3;
    ((BlockIO *) _ssGetBlockIO(S))->B_0_0_0[0] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator_CSTATE[0];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_0_0[1] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator_CSTATE[1];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_0_0[2] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator_CSTATE[2];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_0_0[3] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator_CSTATE[3];
    if (ssIsSampleHit(S, 1, 0)) {
      /* Scope: '<Root>/Scope' */
      /* Call into Simulink for Scope */
      ssCallAccelRunBlock(S, 0, 1, SS_CALL_MDL_OUTPUTS);
    }

    /* MATLABFcn: '<Root>/G' */

    /* Call into Simulink to run the Matlab Fcn block. */
    ssCallAccelRunBlock(S, 0, 2, SS_CALL_MDL_OUTPUTS);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[0] = ((Parameters *)
        ssGetDefaultParam(S))->P_1[0];
      ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[1] = ((Parameters *)
        ssGetDefaultParam(S))->P_1[1];
      ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[2] = ((Parameters *)
        ssGetDefaultParam(S))->P_1[2];
      ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[3] = ((Parameters *)
        ssGetDefaultParam(S))->P_1[3];
    }

    B_0_4_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[0] - ((BlockIO *)
      _ssGetBlockIO(S))->B_0_0_0[0];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_2[0] * B_0_4_0_idx;
    B_0_4_0_idx_0 = B_0_4_0_idx;
    B_0_4_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[1] - ((BlockIO *)
      _ssGetBlockIO(S))->B_0_0_0[1];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_2[1] * B_0_4_0_idx;
    B_0_4_0_idx_1 = B_0_4_0_idx;
    B_0_4_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[2] - ((BlockIO *)
      _ssGetBlockIO(S))->B_0_0_0[2];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_2[2] * B_0_4_0_idx;
    B_0_4_0_idx_2 = B_0_4_0_idx;
    B_0_4_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0[3] - ((BlockIO *)
      _ssGetBlockIO(S))->B_0_0_0[3];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[3] = ((Parameters *)
      ssGetDefaultParam(S))->P_2[3] * B_0_4_0_idx;

    /* Derivative Block: '<S1>/B_0_2' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->IdealDerivative_RWORK.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->IdealDerivative_RWORK.TimeStampB;
      if (timeStampA >= t && timeStampB >= t) {
        B_0_6_0[0] = 0.0;
        B_0_6_0[1] = 0.0;
        B_0_6_0[2] = 0.0;
        B_0_6_0[3] = 0.0;
      } else {
        real_T deltaT;
        real_T *lastBank = &((D_Work *) ssGetRootDWork(S))
          ->IdealDerivative_RWORK.TimeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastBank += 5;
          }
        } else if (timeStampA >= t) {
          lastBank += 5;
        }

        deltaT = t - *lastBank++;
        B_0_6_0[0] = (((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[0] - *lastBank++) /
          deltaT;
        B_0_6_0[1] = (((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[1] - *lastBank++) /
          deltaT;
        B_0_6_0[2] = (((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[2] - *lastBank++) /
          deltaT;
        B_0_6_0[3] = (((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[3] - *lastBank++) /
          deltaT;
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_0_7_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_3[0] * B_0_4_0_idx_0;
    B_0_4_0_idx_0 = (((Parameters *) ssGetDefaultParam(S))->P_5[0] *
                     B_0_4_0_idx_0 + ((ContinuousStates *) ssGetContStates(S))
                     ->Integrator_CSTATE_m[0]) + B_0_6_0[0];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_7_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_3[1] * B_0_4_0_idx_1;
    B_0_4_0_idx_1 = (((Parameters *) ssGetDefaultParam(S))->P_5[1] *
                     B_0_4_0_idx_1 + ((ContinuousStates *) ssGetContStates(S))
                     ->Integrator_CSTATE_m[1]) + B_0_6_0[1];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_7_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_3[2] * B_0_4_0_idx_2;
    B_0_4_0_idx_2 = (((Parameters *) ssGetDefaultParam(S))->P_5[2] *
                     B_0_4_0_idx_2 + ((ContinuousStates *) ssGetContStates(S))
                     ->Integrator_CSTATE_m[2]) + B_0_6_0[2];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_7_0[3] = ((Parameters *)
      ssGetDefaultParam(S))->P_3[3] * B_0_4_0_idx;
    B_0_4_0_idx = (((Parameters *) ssGetDefaultParam(S))->P_5[3] * B_0_4_0_idx +
                   ((ContinuousStates *) ssGetContStates(S))
                   ->Integrator_CSTATE_m[3]) + B_0_6_0[3];
    if (ssIsSampleHit(S, 1, 0)) {
      /* Scope: '<S2>/Scope' */
      /* Call into Simulink for Scope */
      ssCallAccelRunBlock(S, 0, 11, SS_CALL_MDL_OUTPUTS);
    }

    /* MATLABFcn: '<S2>/G' */

    /* Call into Simulink to run the Matlab Fcn block. */
    ssCallAccelRunBlock(S, 0, 12, SS_CALL_MDL_OUTPUTS);
    ((BlockIO *) _ssGetBlockIO(S))->B_0_13_0[0] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator1_CSTATE[0];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_13_0[1] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator1_CSTATE[1];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_13_0[2] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator1_CSTATE[2];
    ((BlockIO *) _ssGetBlockIO(S))->B_0_13_0[3] = ((ContinuousStates *)
      ssGetContStates(S))->Integrator1_CSTATE[3];

    /* MATLABFcn: '<S2>/M' */

    /* Call into Simulink to run the Matlab Fcn block. */
    ssCallAccelRunBlock(S, 0, 14, SS_CALL_MDL_OUTPUTS);

    /* Copy input to temporary space */
    memcpy((void *)(&((D_Work *) ssGetRootDWork(S))->Pseudoinverse_X[0]), (void *)
           (&((BlockIO *) _ssGetBlockIO(S))->B_0_14_0[0]), sizeof(real_T) << 4U);

    /* Call SVD */
    i = MWDSP_SVD_D(&((D_Work *) ssGetRootDWork(S))->Pseudoinverse_X[0], 4, 4,
                    &((D_Work *) ssGetRootDWork(S))->Pseudoinverse_S[0],
                    &((D_Work *) ssGetRootDWork(S))->Pseudoinverse_E[0],
                    &((D_Work *) ssGetRootDWork(S))->Pseudoinverse_WORK[0],
                    &((D_Work *) ssGetRootDWork(S))->Pseudoinverse_U[0],
                    &((D_Work *) ssGetRootDWork(S))->Pseudoinverse_V[0], 1);

    /* Only call 'pinv' function if SVD succeeded */
    if (i == 0) {
      MWDSPCG_Pseudoinverse_D(&((D_Work *) ssGetRootDWork(S))->Pseudoinverse_S[0],
        &((D_Work *) ssGetRootDWork(S))->Pseudoinverse_U[0], &((D_Work *)
        ssGetRootDWork(S))->Pseudoinverse_V[0], &B_0_15_0[0U], (const int32_T)4,
                              (const int32_T)4);
    }

    /* MATLABFcn: '<Root>/V' */

    /* Call into Simulink to run the Matlab Fcn block. */
    ssCallAccelRunBlock(S, 0, 16, SS_CALL_MDL_OUTPUTS);
    B_0_4_0_idx_0 = (B_0_4_0_idx_0 + ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0[0])
      + ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[0];
    B_0_4_0_idx_1 = (B_0_4_0_idx_1 + ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0[1])
      + ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[1];
    B_0_4_0_idx_2 = (B_0_4_0_idx_2 + ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0[2])
      + ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[2];
    B_0_4_0_idx = (B_0_4_0_idx + ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0[3]) +
      ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[3];

    /* MATLABFcn: '<S2>/V' */

    /* Call into Simulink to run the Matlab Fcn block. */
    ssCallAccelRunBlock(S, 0, 18, SS_CALL_MDL_OUTPUTS);
    B_0_4_0_idx_3 = (B_0_4_0_idx_0 - ((BlockIO *) _ssGetBlockIO(S))->B_0_12_0[0])
      - ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[0];
    B_0_4_0_idx_1 = (B_0_4_0_idx_1 - ((BlockIO *) _ssGetBlockIO(S))->B_0_12_0[1])
      - ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[1];
    B_0_4_0_idx_0 = (B_0_4_0_idx_2 - ((BlockIO *) _ssGetBlockIO(S))->B_0_12_0[2])
      - ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[2];
    B_0_4_0_idx = (B_0_4_0_idx - ((BlockIO *) _ssGetBlockIO(S))->B_0_12_0[3]) -
      ((BlockIO *) _ssGetBlockIO(S))->B_0_18_0[3];
    for (i = 0; i < 4; i++) {
      ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i] = 0.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i] = B_0_15_0[i] * B_0_4_0_idx_3
        + ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i];
      ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i] = B_0_15_0[i + 4] *
        B_0_4_0_idx_1 + ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i];
      ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i] = B_0_15_0[i + 8] *
        B_0_4_0_idx_0 + ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i];
      ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i] = B_0_15_0[i + 12] *
        B_0_4_0_idx + ((BlockIO *) _ssGetBlockIO(S))->B_0_20_0[i];
    }
  }

  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Update for root system: '<Root>' */
#define MDL_UPDATE

static void mdlUpdate(SimStruct *S, int_T tid)
{
  /* Derivative Block: '<S1>/B_0_2' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->IdealDerivative_RWORK.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->IdealDerivative_RWORK.TimeStampB;
    real_T *lastBank = &((D_Work *) ssGetRootDWork(S))
      ->IdealDerivative_RWORK.TimeStampA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastBank += 5;
      } else if (timeStampA >= timeStampB) {
        lastBank += 5;
      }
    }

    *lastBank++ = ssGetTaskTime(S,0);
    *lastBank++ = ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[0];
    *lastBank++ = ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[1];
    *lastBank++ = ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[2];
    *lastBank++ = ((BlockIO *) _ssGetBlockIO(S))->B_0_5_0[3];
  }

  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Derivatives for root system: '<Root>' */
#define MDL_DERIVATIVES

static void mdlDerivatives(SimStruct *S)
{
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE[0] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_13_0[0];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_m[0] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_7_0[0];
  ((StateDerivatives *) ssGetdX(S))->Integrator1_CSTATE[0] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_20_0[0];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE[1] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_13_0[1];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_m[1] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_7_0[1];
  ((StateDerivatives *) ssGetdX(S))->Integrator1_CSTATE[1] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_20_0[1];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE[2] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_13_0[2];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_m[2] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_7_0[2];
  ((StateDerivatives *) ssGetdX(S))->Integrator1_CSTATE[2] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_20_0[2];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE[3] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_13_0[3];
  ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_m[3] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_7_0[3];
  ((StateDerivatives *) ssGetdX(S))->Integrator1_CSTATE[3] = ((BlockIO *)
    _ssGetBlockIO(S))->B_0_20_0[3];
}

/* Function to initialize sizes */
static void mdlInitializeSizes(SimStruct *S)
{
  /* checksum */
  ssSetChecksumVal(S, 0, 2543481504U);
  ssSetChecksumVal(S, 1, 4055846518U);
  ssSetChecksumVal(S, 2, 318509046U);
  ssSetChecksumVal(S, 3, 689784027U);

  /* options */
  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE);

  /* Accelerator check memory map size match for DWork */
  if (ssGetSizeofDWork(S) != sizeof(D_Work)) {
    ssSetErrorStatus(S,"Unexpected error: Internal DWork sizes do "
                     "not match for accelerator mex file.");
  }

  /* Accelerator check memory map size match for BlockIO */
  if (ssGetSizeofGlobalBlockIO(S) != sizeof(BlockIO)) {
    ssSetErrorStatus(S,"Unexpected error: Internal BlockIO sizes do "
                     "not match for accelerator mex file.");
  }

  /* model parameters */
  _ssSetDefaultParam(S, (real_T *) &rtDefaultParameters);

  /* non-finites */
  rt_InitInfAndNaN(sizeof(real_T));
}

/* Empty mdlInitializeSampleTimes function (never called) */
static void mdlInitializeSampleTimes(SimStruct *S)
{
}

/* Empty mdlTerminate function (never called) */
static void mdlTerminate(SimStruct *S)
{
}

/* MATLAB MEX Glue */
#include "simulink.c"
