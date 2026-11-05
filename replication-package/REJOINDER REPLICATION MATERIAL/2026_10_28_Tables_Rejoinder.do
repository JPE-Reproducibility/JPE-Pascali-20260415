*===============================================================================
*
*                  REPLICATION MATERIALS
*
*The Origin of the State: Land Productivity or Appropriability? Rejoinder  
*Joram Mayshar, Omer Moav, and Luigi Pascali
*
*===============================================================================
*
*  Contents
*  --------
*  1. Setup and required packages
*  2. Conley standard errors: auxiliary programs
*  3. Data preparation and sample selection
*  4. Table R1: Winsorization of upper tails
*  5. Table A1: Alternative winsorization
*
*===============================================================================


*===============================================================================
* 1. SETUP AND REQUIRED PACKAGES
*===============================================================================

clear all
set more off

* Root directory of the replication package


global MAIN "XXXXXXXXXXXX"     /* < Users should modify this path to match their local installation.*/

cd "$MAIN"

* Create output directory
capture mkdir "RESULTS"

*-------------------------------------------------------------------------------
* 1.1. Install required Stata packages
*-------------------------------------------------------------------------------
/*
foreach package in ivreg2 ranktest estout pdslasso lassopack winsor outreg2 {
    capture which `package'
    if _rc {
        ssc install `package'
    }
}
*/

*===============================================================================
* INSTALL REQUIRED STATA PACKAGES
*===============================================================================

* Package name                 Command to verify
local packages "ivreg2 ranktest estout pdslasso lassopack winsor outreg2"
local commands "ivreg2 ranktest esttab pdslasso ivlasso winsor outreg2"

local n : word count `packages'

forvalues i = 1/`n' {

    local package : word `i' of `packages'
    local command : word `i' of `commands'

    capture which `command'

    if _rc {
        display as text "Installing `package'..."
        ssc install `package', replace
    }
}

*-------------------------------------------------------------------------------
* 1.2. Load custom programs for Conley standard errors
*-------------------------------------------------------------------------------

capture program drop xgmlt
capture program drop x_ols
capture program drop x_gmm

do "$MAIN/PACKAGES/xgmlt.ado"
do "$MAIN/PACKAGES/x_ols.ado"
do "$MAIN/PACKAGES/x_gmm.ado"


*===============================================================================
* 2. CONLEY STANDARD ERRORS
*===============================================================================

global outopts dec(3) label nocons excel ctitle(" ") cttop(" ") nonotes drop(const) 

***Preamble
capture program drop newcov
	program define newcov, eclass   
	ereturn repost V=cov_dep        
end

capture program drop F_stat_ei
program define F_stat_ei, eclass   
ereturn scalar widstat=Fstat        
end

***Conley's IV
cap program drop conleyiv
program define conleyiv
args depvar outfile nregr ninstr

preserve
ereturn clear
		
for @ in any latitude longitude `depvar' const $currentendoregressors $currentexoregressors $currentinstruments: drop if missing(@)==1		

local num_instr : list sizeof global(currentinstruments)
local num_exoreg : list sizeof global(currentexoregressors)
display `num_instr'
display `num_exoreg'

scalar nreg_num=`num_instr'+`num_exoreg'+1
local nreg_num1=nreg_num
cap drop zubar* 
cap drop dis1 dis2
display `nreg_num1'
x_ols latitude longitude c1 c2 $currentendoregressors $currentinstruments $currentexoregressors const, xreg(`nreg_num1') coord(2)
matrix coefficient=e(b)
scalar main_coef=coefficient[1,1]
scalar main_var=cov_dep[1,1]
scalar main_se=sqrt(main_var)
scalar main_t=main_coef/main_se
scalar Fstat=main_t*main_t

cap drop zubar* 
cap drop dis1 dis2
x_gmm latitude longitude c1 c2 `depvar' $currentendoregressors $currentexoregressors const  $currentinstruments  $currentexoregressors const, xreg(`nregr') coord(2) inst(`ninstr')

ivreg2 `depvar' ($currentendoregressors =$currentinstruments ) $currentexoregressors const, noc 
newcov
F_stat_ei
estimates replay	
outreg2 using "RESULTS/`outfile'", $outopts append  addstat(Cragg-Donald Wald F, `e(widstat)') tex(fragment) sortvar($currentendoregressors std_max* LandProd depend_agric) title($current_title)  stats(coef pval) 

est clear

restore
end



*===============================================================================
* 3. DATA PREPARATION AND SAMPLE SELECTION
*===============================================================================

use  "DATASET_ETHNOATLAS.dta", clear

keep if year~=. 
keep if year>=1500
keep if Barley_point_cal!=. /*Delete observations without agricultural data*/

gen L_hier1=V33 if V33~=0           /*Jurisdictional Hierarchy Beyond Local Community: 0(missing) 1 (no political authority beyond community), 2 (one level) to 5 (for levels)*/

gen L_crop_cereals=1 if V29==6
replace L_crop_cereals=0 if L_crop_cereals==. & V29~=. & V29~=0 
gen cereals=L_crop_cereals

gen L_surplus=0 if TUDEN_MARSHALL_v93==1
replace L_surplus=1 if TUDEN_MARSHALL_v93<10 & TUDEN_MARSHALL_v93>1

gen Tax_burden=0 if SCSS_v1737==1 
replace Tax_burden=1 if SCSS_v1737==2 | SCSS_v1737==3  | SCSS_v1737==6
replace Tax_burden=2 if SCSS_v1737==4 | SCSS_v1737==5  | SCSS_v1737==7
label var Tax_burden "=0 no tax; =1 small tax; =2 regular and relevant tax"

gen depend_agric = (5-0)/2 if V5==0
replace depend_agric = 6+(15-6)/2   if V5==1
replace depend_agric = 16+(25-16)/2   if V5==2
replace depend_agric = 26+(35-26)/2   if V5==3
replace depend_agric = 36+(45-36)/2   if V5==4
replace depend_agric = 46+(55-46)/2   if V5==5
replace depend_agric = 56+(65-56)/2   if V5==6
replace depend_agric = 66+(75-66)/2   if V5==7
replace depend_agric = 76+(85-76)/2   if V5==8
replace depend_agric = 86+(100-86)/2   if V5==9
replace depend_agric = depend_agric/100

gen Cal_positive_plow1=max(Wheat_point_cal, Barley_point_cal ,Rye_point_cal)				
gen Cal_negative_plow1=max(Foxtail_Millet_point_cal , Pearl_Millet_point_cal  ,Sorghum_point_cal)	
gen Plow_advantage1 =Cal_positive_plow1-Cal_negative_plow1  

gen Animal_husbandry1b=1 if V4>0 & V4!=.
replace Animal_husbandry1b=0 if V4==0
tabulate Animal_husbandry1b, gen(dummy_Animal_husbandry1b_)

gen     Animal_cultivation2=(V39==2 | V39==3) if V39!=0
tabulate Animal_cultivation2, gen(dummy_Animal_cultivation2_)

gen Ruminants=1 if  V40==3 | V40==7
replace Ruminants=0 if Ruminants==.

gen max_cal_point_c1=max(Barley_point_cal, Buckwheat_point_cal , Dryland_Rice_point_cal ,Foxtail_Millet_point_cal, Maize_point_cal ,Oat_point_cal ,Pearl_Millet_point_cal, Rye_point_cal ,Sorghum_point_cal, Wetland_Rice_point_cal, Wheat_point_cal )
gen max_cal_point_t=max(Cassava_point_cal ,Sweet_Potato_point_cal, White_Potato_point_cal, Yams_point_cal)

label var max_cal_point_c1  "cal/ha cereal with MaxCalYield (on a circle(5cell radius)around Ethnoatlas point)(LowInput RainFed)"	
label var max_cal_point_t 	"cal/ha root/tub with MaxCalYield (on a circle(5cell radius)around Ethnoatlas point)(LowInput RainFed)"	

gen diff= max_cal_point_c1- max_cal_point_t
gen max = max(max_cal_point_c1,  max_cal_point_t)

egen std_max=std(max)
egen std_diff=std(diff)

gen sample_non_desertic=1 if  max_cal_point_t~=0 & max_cal_point_c1 ~=0 	/*non-desertic points; cereals and roots/tubers can be planted */

gen hierarchyA="1.tribe" if L_hier1==1
replace hierarchyA="2.small chiefd" if L_hier1==2
replace hierarchyA="3.large chiefd" if L_hier1==3
replace hierarchyA="4.small state" if L_hier1==4
replace hierarchyA="5.large state" if L_hier1==5

egen rainmean_std=std(rainmean) 
egen atemp_std=std(atemp) 
egen elevation_std=std(elevation) 
egen ruggedness_std=std(ruggedness) 
egen abslat_std=std(abslat) 
egen river_std=std(river) 
egen distcoast_std=std(distcoast) 
egen popd95_std=std(popd95) 
egen histpopd_std=std(histpopd)  
egen historicpopdB_std=std(historicpopdB)  
egen Plow_advantage1_std=std(Plow_advantage1) 
gen Plow_advantage1_std_7squared= Plow_advantage1_std*Plow_advantage1_std
egen ramank_std=std(ramank) 
egen suit_GalOz_std=std(suit_GalOz) 
egen irrigation_dep_std=std(irrigation_dep) 

tab dummy_continental3, gen(continent3_d)

tab dummy_continental_ref1, gen(continental_ref1_d) 

gen const=1

* labeling preamble
label var cereals "CerMain"
label var std_max "LandProd"
label var depend_agric "Dep. Agri."
label var std_diff "CerAdv"

*define relevant sample 
keep if sample_non_desertic==1
ivreg2  L_hier1  (cereals =  std_diff) std_max 		i.dummy_continental3, cluster(iso)
keep if e(sample)



*===============================================================================
* 4. TABLE R1: TOP WINSORIZATION
*===============================================================================

*-------------------------------------------------------------------------------
* 4.1. Construct alternative winsorized productivity measures
*-------------------------------------------------------------------------------
preserve

foreach numberi in 1 2 3 4 5 9999999999 {            
winsor max_cal_point_c1, gen(max_cal_point_c1_`numberi') p(0.0`numberi') highonly   /*NOTICE.. here we are using the fact that 0.1 is almost equal to 0.09999999999*/
winsor max_cal_point_t,  gen(max_cal_point_t_`numberi')  p(0.0`numberi') highonly	/*NOTICE.. here we are using the fact that 0.1 is almost equal to 0.09999999999*/
	
gen diff`numberi'= max_cal_point_c1_`numberi'- max_cal_point_t_`numberi'
gen max`numberi' = max(max_cal_point_c1_`numberi',  max_cal_point_t_`numberi')

egen std_max_new`numberi'=std(max`numberi')
egen std_diff_new`numberi'=std(diff`numberi')
	
label var std_diff_new`numberi' std_diff
label var std_max_new`numberi' std_max
}
gen std_diff_new0=std_diff
gen std_max_new0=std_max

est clear

foreach numberi in 0 1 2 3 5 9999999999 {


capture: drop std_diff_new
capture: drop std_max_new

gen std_diff_new=std_diff_new`numberi'
gen std_max_new=std_max_new`numberi'

*-------------------------------------------------------------------------------
* 4.2. Country-clustered IV estimates
*-------------------------------------------------------------------------------

*col 1
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi')  				, cluster(iso) ffirst
est store a2
estadd local  FE  "NO"
estadd local  Method  "2SLS"

*col 2
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi')  			 		continent3_d* , cluster(iso) ffirst
est store a3
estadd local  FE  "YES"
estadd local  Method  "2SLS"

*col 3
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi') std_max_new`numberi' 	 			continent3_d* , cluster(iso) ffirst
est store a4
estadd local  FE  "YES"
estadd local  Method  "2SLS"

*col 4
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi' ) depend_agric 		continent3_d* , cluster(iso) ffirst
est store a5
estadd local  FE  "YES"
estadd local  Method  "2SLS"

*col 5
local varcontrols "std_max_new`numberi' continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d5 continent3_d6 rainmean_std atemp_std elevation_std ruggedness_std abslat_std latitude longitude river_std distcoast_std histpopd_std Plow_advantage1_std Plow_advantage1_std_7squared 	dummy_Animal_husbandry1b_1 dummy_Animal_husbandry1b_2 Ruminants dummy_Animal_cultivation2_2 irrigation_dep_std"
ivlasso L_hier1 (L_crop_cereals=std_diff_new`numberi') (`varcontrols') ,     sqrt pnotpen(std_diff_new`numberi') cluster(iso) idstats
local selected_regressors= e(xselected)
local selected_regressors2= "`selected_regressors'"
macro list

gen missing_var=0
foreach vari of local  varcontrols {
replace missing_var=1 if missing(`vari')==1
}

xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi' ) 	`selected_regressors2' if missing_var==0, cluster(iso) ffirst
est sto a6
estadd local  FE "..."
estadd local  Method  "2SLS PDS"
drop missing_var


esttab a2 a3 a4 a5 a6 using "RESULTS/TableR1_winsorize_top_`numberi'_percent_se_clustered.tex",   ///
 cells(b(fmt(3)) p(fmt(3) star par)) ///
 keep(L_crop_cereals std_max_new`numberi' depend_agric) ///
 star(* 0.10 ** 0.05 *** 0.01) ///
 label noobs nonotes nomtitle collabels(none) compress ///
 scalars("N Observations" "widstat F" "FE Continent FE" "Method Estimation")  ///
 varlabels(L_crop_cereals CerMain std_max_new`numberi' LandProd depend_agric "Dep. agriculture") ///
 brackets  ///
 title("Winsorize at percentile `numberi'") ///
 replace

est clear

*-------------------------------------------------------------------------------
* 4.3. Conley standard errors
*-------------------------------------------------------------------------------

xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new)  	 			continent3_d* , cluster(iso) ffirst
est store a`numberi'
estadd local  FE  "YES"
estadd local  Method  "2SLS"
estadd local  Winsorize "`numberi'"

global current_title "windsorize at  `numberi'"

foreach c in 5 10 {
cap drop c1 c2  
gen c1=`c'						
gen c2=c1

global currentendoregressors  cereals  
global currentexoregressors   
global currentinstruments 	  std_diff_new    
conleyiv L_hier1 TableR1_winsorize_top_`numberi'_percent_se_conley_cutoff_`c' 2 2
  
global currentendoregressors  cereals  
global currentexoregressors   continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d6
global currentinstruments 	  std_diff_new      
conleyiv L_hier1 TableR1_winsorize_top_`numberi'_percent_se_conley_cutoff_`c' 7 7

global currentendoregressors  cereals 
global currentexoregressors   std_max_new continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d6
global currentinstruments 	  std_diff_new     
conleyiv L_hier1 TableR1_winsorize_top_`numberi'_percent_se_conley_cutoff_`c' 8 8

global currentendoregressors  cereals 
global currentexoregressors   depend_agric continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d6
global currentinstruments 	  std_diff_new     
conleyiv L_hier1 TableR1_winsorize_top_`numberi'_percent_se_conley_cutoff_`c' 8 8

}
}

*-------------------------------------------------------------------------------
* 4.4. Remove intermediate output files and reorganize file names
*-------------------------------------------------------------------------------

copy "RESULTS/TableR1_winsorize_top_9999999999_percent_se_clustered.tex" "RESULTS/TableR1_winsorize_top_10_percent_se_clustered.tex", replace
erase "RESULTS/TableR1_winsorize_top_9999999999_percent_se_clustered.tex"

copy "RESULTS/TableR1_winsorize_top_9999999999_percent_se_conley_cutoff_5.tex" "RESULTS/TableR1_winsorize_top_10_percent_se_conley_cutoff_5.tex", replace
erase "RESULTS/TableR1_winsorize_top_9999999999_percent_se_conley_cutoff_5.tex"

copy "RESULTS/TableR1_winsorize_top_9999999999_percent_se_conley_cutoff_10.tex" "RESULTS/TableR1_winsorize_top_10_percent_se_conley_cutoff_10.tex", replace
erase "RESULTS/TableR1_winsorize_top_9999999999_percent_se_conley_cutoff_10.tex"


local files : dir "RESULTS" files "*.txt"
foreach file of local files {
    erase "RESULTS/`file'"
}
local files : dir "RESULTS" files "*.xml"
foreach file of local files {
    erase "RESULTS/`file'"
}

restore



*===============================================================================
* 5. TABLE A1: ALTERNATIVE WINSORIZATION
*===============================================================================

*-------------------------------------------------------------------------------
* 5.1. Construct alternative winsorized productivity measures
*-------------------------------------------------------------------------------

foreach numberi in 1 2 3 4 5 9999999999 {            
winsor max_cal_point_c1, gen(max_cal_point_c1_`numberi') p(0.0`numberi') highonly   /*NOTICE.. here we are using the fact that 0.1 is almost equal to 0.09999999999*/
winsor max_cal_point_t,  gen(max_cal_point_t_`numberi')  p(0.0`numberi') lowonly	/*NOTICE.. here we are using the fact that 0.1 is almos equal to 0.09999999999*/
	
gen diff`numberi'= max_cal_point_c1_`numberi'- max_cal_point_t_`numberi'
gen max`numberi' = max(max_cal_point_c1_`numberi',  max_cal_point_t_`numberi')

egen std_max_new`numberi'=std(max`numberi')
egen std_diff_new`numberi'=std(diff`numberi')
	
label var std_diff_new`numberi' std_diff
label var std_max_new`numberi' std_max
}
gen std_diff_new0=std_diff
gen std_max_new0=std_max

est clear

foreach numberi in 0 1 2 3 5 9999999999 {


capture: drop std_diff_new
capture: drop std_max_new

gen std_diff_new=std_diff_new`numberi'
gen std_max_new=std_max_new`numberi'

*-------------------------------------------------------------------------------
* 5.2. Country-clustered IV estimates
*-------------------------------------------------------------------------------

*col 1
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi')  				, cluster(iso) ffirst
est store a2
estadd local  FE  "NO"
estadd local  Method  "2SLS"
*col 2
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi')  			 		continent3_d* , cluster(iso) ffirst
est store a3
estadd local  FE  "YES"
estadd local  Method  "2SLS"
*col 3
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi') std_max_new`numberi' 	 			continent3_d* , cluster(iso) ffirst
est store a4
estadd local  FE  "YES"
estadd local  Method  "2SLS"
*col 4
xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi' ) depend_agric 		continent3_d* , cluster(iso) ffirst
est store a5
estadd local  FE  "YES"
estadd local  Method  "2SLS"
*col 5 
local varcontrols "std_max_new`numberi' continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d5 continent3_d6 rainmean_std atemp_std elevation_std ruggedness_std abslat_std latitude longitude river_std distcoast_std histpopd_std Plow_advantage1_std Plow_advantage1_std_7squared 	dummy_Animal_husbandry1b_1 dummy_Animal_husbandry1b_2 Ruminants dummy_Animal_cultivation2_2 irrigation_dep_std"
ivlasso L_hier1 (L_crop_cereals=std_diff_new`numberi') (`varcontrols') ,     sqrt pnotpen(std_diff_new`numberi') cluster(iso) idstats
local selected_regressors= e(xselected)
local selected_regressors2= "`selected_regressors'"
macro list

gen missing_var=0
foreach vari of local  varcontrols {
replace missing_var=1 if missing(`vari')==1
}

xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new`numberi' ) 	`selected_regressors2' if missing_var==0, cluster(iso) ffirst
est sto a6
estadd local  FE "..."
estadd local  Method  "2SLS PDS"
drop missing_var


esttab a2 a3 a4 a5 a6 using "RESULTS/TableA1_winsorize_`numberi'_percent_se_clustered.tex",   ///
 cells(b(fmt(3)) p(fmt(3) star par)) ///
 keep(L_crop_cereals std_max_new`numberi' depend_agric) ///
 star(* 0.10 ** 0.05 *** 0.01) ///
 label noobs nonotes nomtitle collabels(none) compress ///
 scalars("N Observations" "widstat F" "FE Continent FE" "Method Estimation")  ///
 varlabels(L_crop_cereals CerMain std_max_new`numberi' LandProd depend_agric "Dep. agriculture") ///
 brackets  ///
 title("Winsorize at percentile `numberi'") ///
 replace

est clear

*-------------------------------------------------------------------------------
* 5.3. Conley standard errors
*-------------------------------------------------------------------------------

xi: ivreg2  L_hier1  (L_crop_cereals =  std_diff_new)  	 			continent3_d* , cluster(iso) ffirst
est store a`numberi'
estadd local  FE  "YES"
estadd local  Method  "2SLS"
estadd local  Winsorize "`numberi'"

global current_title "windsorize at  `numberi'"

foreach c in 5 10 {
cap drop c1 c2  
gen c1=`c'						
gen c2=c1

global currentendoregressors  cereals  
global currentexoregressors   
global currentinstruments 	  std_diff_new    
conleyiv L_hier1 TableA1_winsorize_`numberi'_percent_se_conley_cutoff_`c' 2 2
  
global currentendoregressors  cereals  
global currentexoregressors   continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d6
global currentinstruments 	  std_diff_new      
conleyiv L_hier1 TableA1_winsorize_`numberi'_percent_se_conley_cutoff_`c' 7 7

global currentendoregressors  cereals 
global currentexoregressors   std_max_new continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d6
global currentinstruments 	  std_diff_new     
conleyiv L_hier1 TableA1_winsorize_`numberi'_percent_se_conley_cutoff_`c' 8 8

global currentendoregressors  cereals 
global currentexoregressors   depend_agric continent3_d1 continent3_d2 continent3_d3 continent3_d4 continent3_d6
global currentinstruments 	  std_diff_new     
conleyiv L_hier1 TableA1_winsorize_`numberi'_percent_se_conley_cutoff_`c' 8 8

}
}

*-------------------------------------------------------------------------------
* 5.4. Remove intermediate output files and reorganize file names
*-------------------------------------------------------------------------------

copy "RESULTS/TableA1_winsorize_9999999999_percent_se_clustered.tex" "RESULTS/TableA1_winsorize_10_percent_se_clustered.tex", replace
erase "RESULTS/TableA1_winsorize_9999999999_percent_se_clustered.tex"

copy "RESULTS/TableA1_winsorize_9999999999_percent_se_conley_cutoff_5.tex" "RESULTS/TableA1_winsorize_10_percent_se_conley_cutoff_5.tex", replace
erase "RESULTS/TableA1_winsorize_9999999999_percent_se_conley_cutoff_5.tex"

copy "RESULTS/TableA1_winsorize_9999999999_percent_se_conley_cutoff_10.tex" "RESULTS/TableA1_winsorize_10_percent_se_conley_cutoff_10.tex", replace
erase "RESULTS/TableA1_winsorize_9999999999_percent_se_conley_cutoff_10.tex"


local files : dir "RESULTS" files "*.txt"
foreach file of local files {
    erase "RESULTS/`file'"
}
local files : dir "RESULTS" files "*.xml"
foreach file of local files {
    erase "RESULTS/`file'"
}

