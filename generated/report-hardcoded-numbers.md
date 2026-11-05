## Potentially Hardcoded Numeric Constants


We found the following set of hard coded numbers. This may be completely legitimate (parameter input, thresholds for computations, etc), and is hence only for information.

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20260415-1/replication-package/REJOINDER REPLICATION MATERIAL/2026_10_28_Tables_Rejoinder.do**

- Line 263, : winsor max_cal_point_c1, gen(max_cal_point_c1_`numberi') p(0.0`numberi') highonly   /*NOTICE.. here we are using the fact that 0.1 is almost equal to 0.09999999999*/
- Line 264, : winsor max_cal_point_t,  gen(max_cal_point_t_`numberi')  p(0.0`numberi') highonly	/*NOTICE.. here we are using the fact that 0.1 is almost equal to 0.09999999999*/
- Line 425, : winsor max_cal_point_c1, gen(max_cal_point_c1_`numberi') p(0.0`numberi') highonly   /*NOTICE.. here we are using the fact that 0.1 is almost equal to 0.09999999999*/
- Line 426, : winsor max_cal_point_t,  gen(max_cal_point_t_`numberi')  p(0.0`numberi') lowonly	/*NOTICE.. here we are using the fact that 0.1 is almos equal to 0.09999999999*/

