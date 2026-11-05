## Appendix: Detailed PII Detection Results

*Generated on 2026-11-05 18:50:57*

This appendix lists all detected instances of potential personally identifiable information (PII) in the project files. Each entry shows the matched PII terms and, for data files, sample values to help verify whether the flagged content is indeed sensitive.

### Full Summary Table

| File Type | File | Variables/References | PII Categories |
|-----------|------|----------------------|----------------|
| Data | `DATASET_ETHNOATLAS.dta` | 61 | name, lat, lon, husband, community, second, loc, sex, house |
| Code | `2026_10_28_Tables_Rejoinder.do` | 65 | lat, loc, name, lon, coord, community, husband, country |
| Code | `x_gmm.ado` | 61 | loc, location, coord, lat, son, name |
| Code | `x_ols.ado` | 46 | loc, location, coord, name, lon |
| Code | `xgmlt.ado` | 48 | loc, location, coord, lat, name |

### Data Files

**/replication-package/REJOINDER REPLICATION MATERIAL/DATASET_ETHNOATLAS.dta**

- Variable: `Barley_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 62432.359375, 76985.0078125
- Variable: `Buckwheat_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 30351.951171875, 26068.177734375
- Variable: `Cassava_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 64949.9296875, 60105.9296875
- Variable: `Dryland_Rice_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 63259.4765625, 52047.26953125
- Variable: `Foxtail_Millet_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 11013.486328125, 87969.40625
- Variable: `Maize_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 91952.3125, 185443.59375
- Variable: `Oat_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 19317.57421875, 29445.58203125
- Variable: `Pearl_Millet_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 11013.486328125, 7294.16650390625
- Variable: `Rye_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 23028.58203125, 45729.90625
- Variable: `Sorghum_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 32797.37109375, 94879.671875
- Variable: `Sweet_Potato_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 31093.2265625, 36996.75390625
- Variable: `V104` (label: *Latitude*)
  - Matched terms: lat
  - Sample values: 24, 4, -29
- Variable: `V106` (label: *Longitude*)
  - Matched terms: lon
  - Sample values: 34, 27, -145
- Variable: `V15` (label: *Community Marriage Organization*)
  - Matched terms: community
  - Sample values: 3.0, 6.0, 2.0
- Variable: `V16` (label: *Community Marriage Organization*)
  - Matched terms: community
  - Sample values: 9.0, 1.0, 0.0
- Variable: `V22` (label: *Secondary Cognatic Kin Group: Kindreds and Ramages*)
  - Matched terms: second
  - Sample values: 9.0, 0.0, 2.0
- Variable: `V31` (label: *Mean Size of Local Communities*)
  - Matched terms: loc
  - Sample values: 1.0, 0.0, 4.0
- Variable: `V32` (label: *Jurisdictional Hierarchy of Local Community*)
  - Matched terms: community, loc
  - Sample values: 2.0, 3.0, 0.0
- Variable: `V33` (label: *Jurisdictional Hierarchy Beyond Local Community*)
  - Matched terms: community, loc
  - Sample values: 2.0, 1.0, 0.0
- Variable: `V36` (label: *Post-partum Sex Taboos*)
  - Matched terms: sex
  - Sample values: 0.0, 4.0, 6.0
- Variable: `V37` (label: *Male Genital Mutilations*)
  - Matched terms: lat
  - Sample values: 5.0, 1.0, 0.0
- Variable: `V4` (label: *Animal Husbandry*)
  - Matched terms: husband
  - Sample values: 8.0, 1.0, 6.0
- Variable: `V40` (label: *Predominant Type of Animal Husbandry*)
  - Matched terms: husband
  - Sample values: 6.0, 3.0, 2.0
- Variable: `V44` (label: *Sex Differences: Metal Working*)
  - Matched terms: sex
  - Sample values: 0.0, 9.0, 1.0
- Variable: `V45` (label: *Sex Difference: Weaving*)
  - Matched terms: sex
  - Sample values: 0.0, 9.0, 6.0
- Variable: `V46` (label: *Sex Differences; Leather Working*)
  - Matched terms: sex
  - Sample values: 0.0, 9.0, 6.0
- Variable: `V47` (label: *Sex Differences: Pottery Making*)
  - Matched terms: sex
  - Sample values: 0.0, 6.0, 9.0
- Variable: `V48` (label: *Sex Differences: Boat Building*)
  - Matched terms: sex
  - Sample values: 0.0, 1.0, 9.0
- Variable: `V49` (label: *Sex Difference: House Building*)
  - Matched terms: house, sex
  - Sample values: 0.0, 1.0, 4.0
- Variable: `V50` (label: *Sex Differences: Gathering*)
  - Matched terms: sex
  - Sample values: 0.0, 5.0, 8.0
- Variable: `V51` (label: *Sex Differnces: Hunting*)
  - Matched terms: sex
  - Sample values: 0.0, 1.0, 9.0
- Variable: `V52` (label: *Sex Differences: Fishing*)
  - Matched terms: sex
  - Sample values: 0.0, 1.0, 8.0
- Variable: `V53` (label: *Sex Differences: Animal Husbandry*)
  - Matched terms: husband, sex
  - Sample values: 0.0, 6.0, 4.0
- Variable: `V54` (label: *Sex Differences: Agriculture*)
  - Matched terms: sex
  - Sample values: 0.0, 3.0, 9.0
- Variable: `V60` (label: *Age or Occupational Specialization: House Construction*)
  - Matched terms: house
  - Sample values: 0.0, 9.0, 3.0
- Variable: `V64` (label: *Age or Occupational Specialization: Animal Husbandry*)
  - Matched terms: husband
  - Sample values: 0.0, 9.0, 1.0
- Variable: `V67` (label: *Class Stratification, Secondary Features*)
  - Matched terms: second
  - Sample values: 0.0, 9.0, 4.0
- Variable: `V69` (label: *Class Stratification (Endogamy), Secondary Type*)
  - Matched terms: second
  - Sample values: 0.0, 9.0, 2.0
- Variable: `V72` (label: *Succession to the Office of Local Headman*)
  - Matched terms: loc
  - Sample values: 3.0, 0.0, 9.0
- Variable: `V73` (label: *Succession to the office of Local Headman: Type of Hereditary Succession*)
  - Matched terms: loc
  - Sample values: 5.0, 0.0, 9.0
- Variable: `V78` (label: *Norms of Premarital Sexual Behavior of Girls*)
  - Matched terms: sex
  - Sample values: 0.0, 1.0, 2.0
- Variable: `V84` (label: *Secondary or Alternative House Types: Ground Plan*)
  - Matched terms: house, second
  - Sample values: 2.0, 0.0, 5.0
- Variable: `V85` (label: *Secondary or Alternative House Type: Floor Level*)
  - Matched terms: house, second
  - Sample values: 2.0, 0.0, 3.0
- Variable: `V86` (label: *Secondary or Alternative House Type: Wall Material*)
  - Matched terms: house, second
  - Sample values: 0.0, 9.0, 8.0
- Variable: `V87` (label: *Secondary or Alternative House Type: Shape of Roof*)
  - Matched terms: house, second
  - Sample values: 2.0, 0.0, 4.0
- Variable: `V88` (label: *Secondary or Alternative house Type: Roofing Material*)
  - Matched terms: house, second
  - Sample values: 7.0, 0.0, 8.0
- Variable: `V94` (label: *Political Succession for the Local Community*)
  - Matched terms: community, loc
  - Sample values: 0.0, 11.0, 49.0
- Variable: `V96` (label: *Climate: Secondary Environments*)
  - Matched terms: second
  - Sample values: 0.0, 99.0, 52.0
- Variable: `V98` (label: *Linguistic Affiliation: Language Affilation*)
  - Matched terms: lat
  - Sample values: 7.0, 3.0, 14.0
- Variable: `Wetland_Rice_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 110467.0078125, 332.0431213378906
- Variable: `Wheat_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 64056.01171875, 76015.2109375
- Variable: `White_Potato_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 29857.1484375, 25620.171875
- Variable: `Yams_point_cal` (label: *MeanCalories(Cal/ha) on a circle with radius 5 ArcGis cell around LatLon society*)
  - Matched terms: lat, lon
  - Sample values: 0.0, 34976.21875, 33049.5625
- Variable: `abslat` (label: *Absolute latitude*)
  - Matched terms: lat
  - Sample values: 23.16177749633789, 3.7029542922973633, 4.238574981689453
- Variable: `latitude` (label: *Latitude*)
  - Matched terms: lat
  - Sample values: 23.161777967748115, 3.702954217826994, -4.2385749742812795
- Variable: `longitude` (label: *Longitude*)
  - Matched terms: lon
  - Sample values: 33.70163280611042, 26.797254283026238, 144.49574693385557
- Variable: `name_ETHNOATLAS` (label: *name of the society in the ethnoatlas dataset*)
  - Matched terms: name
  - Sample values: ABABDA. ., ABARAMBO., ABELAM. .
- Variable: `name_MAP` (label: *name of the closest population that could be map in ARCGIS (there might be more*)
  - Matched terms: name, lat
  - Sample values: Ababda, Abarambo, Abu
- Variable: `name_SCSS` (label: *name of the society in the SCSS dataset*)
  - Matched terms: name
  - Sample values: , Abipon, Abkhaz
- Variable: `nameinatlas` (label: *Society Name*)
  - Matched terms: name
  - Sample values: ababda, abarambo, abelam
- Variable: `uniqueid` (label: *unique id that maps nameinmap2 to the corresponding poligon in the arcgis file a*)
  - Matched terms: name
  - Sample values: 7581.0, 7582.0, 955.0

### Code Files

**/replication-package/REJOINDER REPLICATION MATERIAL/2026_10_28_Tables_Rejoinder.do**

- Line 31: lat, loc
  ```
  global MAIN "XXXXXXXXXXXX"     /* < Users should modify this path to match their local installation.
  ```
- Line 54: name
  ```
  * Package name                 Command to verify
  ```
- Line 55: loc
  ```
  local packages "ivreg2 ranktest estout pdslasso lassopack winsor outreg2"
  ```
- Line 56: loc
  ```
  local commands "ivreg2 ranktest esttab pdslasso ivlasso winsor outreg2"
  ```
- Line 58: loc
  ```
  local n : word count `packages'
  ```
- Line 62: loc
  ```
  local package : word `i' of `packages'
  ```
- Line 63: loc
  ```
  local command : word `i' of `commands'
  ```
- Line 111: lat, lon
  ```
  for @ in any latitude longitude `depvar' const $currentendoregressors $currentexoregressors $current
  ```
- Line 113: loc
  ```
  local num_instr : list sizeof global(currentinstruments)
  ```
- Line 114: loc
  ```
  local num_exoreg : list sizeof global(currentexoregressors)
  ```
- Line 119: loc
  ```
  local nreg_num1=nreg_num
  ```
- Line 123: coord, lat, lon
  ```
  x_ols latitude longitude c1 c2 $currentendoregressors $currentinstruments $currentexoregressors cons
  ```
- Line 133: coord, lat, lon
  ```
  x_gmm latitude longitude c1 c2 `depvar' $currentendoregressors $currentexoregressors const  $current
  ```
- Line 158: community, loc
  ```
  gen L_hier1=V33 if V33~=0           /*Jurisdictional Hierarchy Beyond Local Community: 0(missing) 1 
  ```
- Line 188: husband
  ```
  gen Animal_husbandry1b=1 if V4>0 & V4!=.
  ```
- Line 189: husband
  ```
  replace Animal_husbandry1b=0 if V4==0
  ```
- Line 190: husband, lat
  ```
  tabulate Animal_husbandry1b, gen(dummy_Animal_husbandry1b_)
  ```
- Line 193: lat
  ```
  tabulate Animal_cultivation2, gen(dummy_Animal_cultivation2_)
  ```
- Line 222: lat
  ```
  egen abslat_std=std(abslat)
  ```
- Line 290: country
  ```
  * 4.2. Country-clustered IV estimates
  ```
- Line 296: loc
  ```
  estadd local  FE  "NO"
  ```
- Line 297: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 302: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 303: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 308: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 309: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 314: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 315: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 318: husband, lat, loc, lon
  ```
  local varcontrols "std_max_new`numberi' continent3_d1 continent3_d2 continent3_d3 continent3_d4 cont
  ```
- Line 320: loc
  ```
  local selected_regressors= e(xselected)
  ```
- Line 321: loc
  ```
  local selected_regressors2= "`selected_regressors'"
  ```
- Line 325: loc
  ```
  foreach vari of local  varcontrols {
  ```
- Line 331: loc
  ```
  estadd local  FE "..."
  ```
- Line 332: loc
  ```
  estadd local  Method  "2SLS PDS"
  ```
- Line 355: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 356: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 357: loc
  ```
  estadd local  Winsorize "`numberi'"
  ```
- Line 390: name
  ```
  * 4.4. Remove intermediate output files and reorganize file names
  ```
- Line 403: loc
  ```
  local files : dir "RESULTS" files "*.txt"
  ```
- Line 404: loc
  ```
  foreach file of local files {
  ```
- Line 407: loc
  ```
  local files : dir "RESULTS" files "*.xml"
  ```
- Line 408: loc
  ```
  foreach file of local files {
  ```
- Line 452: country
  ```
  * 5.2. Country-clustered IV estimates
  ```
- Line 458: loc
  ```
  estadd local  FE  "NO"
  ```
- Line 459: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 463: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 464: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 468: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 469: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 473: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 474: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 476: husband, lat, loc, lon
  ```
  local varcontrols "std_max_new`numberi' continent3_d1 continent3_d2 continent3_d3 continent3_d4 cont
  ```
- Line 478: loc
  ```
  local selected_regressors= e(xselected)
  ```
- Line 479: loc
  ```
  local selected_regressors2= "`selected_regressors'"
  ```
- Line 483: loc
  ```
  foreach vari of local  varcontrols {
  ```
- Line 489: loc
  ```
  estadd local  FE "..."
  ```
- Line 490: loc
  ```
  estadd local  Method  "2SLS PDS"
  ```
- Line 513: loc
  ```
  estadd local  FE  "YES"
  ```
- Line 514: loc
  ```
  estadd local  Method  "2SLS"
  ```
- Line 515: loc
  ```
  estadd local  Winsorize "`numberi'"
  ```
- Line 548: name
  ```
  * 5.4. Remove intermediate output files and reorganize file names
  ```
- Line 561: loc
  ```
  local files : dir "RESULTS" files "*.txt"
  ```
- Line 562: loc
  ```
  foreach file of local files {
  ```
- Line 565: loc
  ```
  local files : dir "RESULTS" files "*.xml"
  ```
- Line 566: loc
  ```
  foreach file of local files {
  ```

**/replication-package/REJOINDER REPLICATION MATERIAL/PACKAGES/x_gmm.ado**

- Line 3: loc, location
  ```
  /*GMM ESTIMATION FOR X-SECTIONAL DATA WITH LOCATION-BASED DEPENDENCE	*/
  ```
- Line 17: coord
  ```
  /*	>>x_gmm coordlist cutofflist depvar regressorlist 			*/
  ```
- Line 18: coord
  ```
  /*	   instrumentlist,  xreg() inst() coord()					*/
  ```
- Line 25: coord
  ```
  /*	coord() options.									*/
  ```
- Line 29: coord
  ```
  /*		coord()	denotes dimension of coordinates                */
  ```
- Line 33: coord
  ```
  /*	(5) Your cutofflist must correspond to coordlist (same order)	*/
  ```
- Line 37: lat
  ```
  /* 					Correlation						*/
  ```
- Line 42: son
  ```
  /*		For Comparison:								*/
  ```
- Line 54: loc
  ```
  local varlist	"req ex min(1)";	/*must specify at least one variable...
  ```
- Line 56: coord, loc
  ```
  local options	"xreg(int -1) inst(int -1) COord(int -1)";
  ```
- Line 57: coord, loc, location
  ```
  /* # regressors, # instruments, dimension of location coordinates*/
  ```
- Line 79: coord
  ```
  if `coord'<1{;
  ```
- Line 80: coord
  ```
  if `coord'==-1{;
  ```
- Line 81: coord
  ```
  di in red "option coord() required!!!";
  ```
- Line 83: coord
  ```
  di in red "coord(`coord') is invalid";
  ```
- Line 87: coord
  ```
  coordinates, cutoffs, dependent, regressors, instruments*/
  ```
- Line 90: loc
  ```
  local a=1;
  ```
- Line 91: coord
  ```
  while `a'<=`coord'{;
  ```
- Line 92: coord
  ```
  tempvar coord`a';
  ```
- Line 93: coord
  ```
  gen `coord`a''=``a'';	/*get coordinates*/
  ```
- Line 94: loc
  ```
  local a=`a'+1};
  ```
- Line 96: loc
  ```
  local aa=1;
  ```
- Line 97: coord
  ```
  while `aa'<=`coord'{;
  ```
- Line 100: loc
  ```
  local a=`a'+1;
  ```
- Line 101: loc
  ```
  local aa=`aa'+1};
  ```
- Line 105: loc
  ```
  local depend : word `a' of `varlist';
  ```
- Line 107: loc
  ```
  local a=`a'+1;
  ```
- Line 109: loc
  ```
  local b=1;
  ```
- Line 112: loc
  ```
  local ind`b'="`b'";
  ```
- Line 114: loc
  ```
  local ind`b' : word `a' of `varlist';
  ```
- Line 115: loc
  ```
  local a=`a'+1;
  ```
- Line 116: loc
  ```
  local b=`b'+1};			/*get indep variable(s)*/
  ```
- Line 118: loc
  ```
  local c=1;
  ```
- Line 122: loc
  ```
  local a=`a'+1;
  ```
- Line 123: loc
  ```
  local c=`c'+1};			/*get instrument(s)*/
  ```
- Line 129: name
  ```
  tempname A B Zk Zkk W B_N A_N invN ZZ ZZ_N invZZ;
  ```
- Line 139: loc
  ```
  local d=1;
  ```
- Line 148: loc
  ```
  local d=`d'+1};
  ```
- Line 153: name
  ```
  tempname sigma BinvZZ BinvZZB invBZZB cov BZZA;
  ```
- Line 162: loc
  ```
  local e=1;
  ```
- Line 166: loc
  ```
  local e=`e'+1};
  ```
- Line 175: name
  ```
  tempname BB BA invBB BAZUUZ ZUUZ1 ZUUZ2 ZUUZ ZUUZt fix;
  ```
- Line 183: loc
  ```
  local f=1;
  ```
- Line 187: loc
  ```
  local f=`f'+1};
  ```
- Line 192: loc
  ```
  local i=1;
  ```
- Line 194: loc
  ```
  local j=1;
  ```
- Line 196: coord
  ```
  while `j'<=`coord'{;	/*loop through coordinates*/
  ```
- Line 199: coord
  ```
  replace dis`j'=abs(`coord`j''-`coord`j''[`i']);
  ```
- Line 202: loc
  ```
  local j=`j'+1};			/*create window*/
  ```
- Line 204: loc
  ```
  local k=1;
  ```
- Line 214: loc
  ```
  local k=`k'+1};
  ```
- Line 220: loc
  ```
  local i=`i'+1};
  ```
- Line 224: name
  ```
  tempname What BW BWB invBWB BWA;
  ```
- Line 241: name
  ```
  tempname m qq zubar zu;
  ```
- Line 245: loc
  ```
  local ii=1;
  ```
- Line 249: loc
  ```
  local ii=`ii'+1};
  ```
- Line 253: loc
  ```
  local jj=1;
  ```
- Line 261: loc
  ```
  local jj=`jj'+1};
  ```
- Line 269: loc
  ```
  local z=1;
  ```
- Line 270: loc
  ```
  local v=`a';
  ```
- Line 293: loc
  ```
  local z=`z'+1};
  ```

**/replication-package/REJOINDER REPLICATION MATERIAL/PACKAGES/x_ols.ado**

- Line 3: loc, location
  ```
  /*OLS ESTIMATION FOR X-SECTIONAL DATA WITH LOCATION-BASED DEPENDENCE	*/
  ```
- Line 17: coord
  ```
  /*   >>x_ols coordlist cutofflist depvar regressorlist, xreg() coord()	*/
  ```
- Line 22: coord
  ```
  /*	(2) You MUST specify the xreg() and coord() options.			*/
  ```
- Line 25: coord
  ```
  /*		coord()	denotes dimension of coordinates			*/
  ```
- Line 27: coord
  ```
  /*	(4) Your cutofflist must correspond to coordlist (same order)	*/
  ```
- Line 41: loc
  ```
  local varlist	"req ex min(1)";	/*must specify at least one variable...
  ```
- Line 43: coord, loc
  ```
  local options	"xreg(int -1) COord(int -1)";
  ```
- Line 44: coord, loc, location
  ```
  /* # indep. var, dimension of location coordinates*/
  ```
- Line 55: coord
  ```
  if `coord'<1{;
  ```
- Line 56: coord
  ```
  if `coord'==-1{;
  ```
- Line 57: coord
  ```
  di in red "option coord() required!!!";
  ```
- Line 59: coord
  ```
  di in red "coord(`coord') is invalid";
  ```
- Line 64: coord
  ```
  coordinates, cutoffs, dependent, regressors*/
  ```
- Line 68: loc
  ```
  local a=1;
  ```
- Line 69: coord
  ```
  while `a'<=`coord'{;
  ```
- Line 70: coord
  ```
  tempvar coord`a';
  ```
- Line 71: coord
  ```
  gen `coord`a''=``a'';	/*get coordinates*/
  ```
- Line 72: loc
  ```
  local a=`a'+1};
  ```
- Line 74: loc
  ```
  local aa=1;
  ```
- Line 75: coord
  ```
  while `aa'<=`coord'{;
  ```
- Line 78: loc
  ```
  local a=`a'+1;
  ```
- Line 79: loc
  ```
  local aa=`aa'+1};
  ```
- Line 83: loc
  ```
  local depend : word `a' of `varlist';
  ```
- Line 85: loc
  ```
  local a=`a'+1;
  ```
- Line 87: loc
  ```
  local b=1;
  ```
- Line 90: loc
  ```
  local ind`b' : word `a' of `varlist';
  ```
- Line 92: loc
  ```
  local a=`a'+1;
  ```
- Line 93: loc
  ```
  local b=`b'+1};			/*get indep var(s)...rest of list*/
  ```
- Line 100: name
  ```
  tempname XX XX_N invXX invN;
  ```
- Line 112: lon
  ```
  predict epsilon,residuals;	/* OLS residuals*/
  ```
- Line 115: name
  ```
  tempname XUUX XUUX1 XUUX2 XUUXt;
  ```
- Line 120: loc
  ```
  local i=1;
  ```
- Line 122: loc
  ```
  local d=1;
  ```
- Line 124: coord
  ```
  while `d'<=`coord'{;	/*loop through coordinates*/
  ```
- Line 127: coord
  ```
  replace dis`d'=abs(`coord`d''-`coord`d''[`i']);
  ```
- Line 130: loc
  ```
  local d=`d'+1};				/*create window*/
  ```
- Line 132: loc
  ```
  local k=1;
  ```
- Line 134: lon
  ```
  replace `XUUk'=`X`k''[`i']*epsilon*epsilon[`i']*window;
  ```
- Line 137: loc
  ```
  local k=`k'+1};
  ```
- Line 143: loc
  ```
  local i=`i'+1};
  ```
- Line 148: name
  ```
  tempname V VV;
  ```
- Line 156: loc
  ```
  local z=1;
  ```
- Line 157: loc
  ```
  local v=`a';
  ```
- Line 171: loc
  ```
  local beta`z'=_b[`X`z''];
  ```
- Line 172: loc
  ```
  local se`z'=_se[`X`z''];
  ```
- Line 176: loc
  ```
  local z=`z'+1};
  ```

**/replication-package/REJOINDER REPLICATION MATERIAL/PACKAGES/xgmlt.ado**

- Line 4: loc, location
  ```
  /*								 WITH LOCATION-BASED DEPENDENCE						*/
  ```
- Line 26: coord
  ```
  /*	>>xgmlt coordlist cutofflist depvar regressorlist,  xreg()  coord()  */
  ```
- Line 32: coord
  ```
  /*	(2) MUST specify positive value for xreg() and	coord() options.		*/									*/
  ```
- Line 35: coord
  ```
  /*		coord()	denotes dimension of coordinates                			*/
  ```
- Line 38: coord
  ```
  /*	(5) Your cutofflist must correspond to coordlist (same order)			*/
  ```
- Line 40: lat
  ```
  /* more than LM units apart in that dimmension in the calculation       */
  ```
- Line 46: lat
  ```
  /*							without correction for spatial correlation			*/
  ```
- Line 48: lat
  ```
  /*							without correction for spatial correlation			*/
  ```
- Line 54: coord
  ```
  syntax varlist(min=1) [, xreg(int -1) COord(int -1)]
  ```
- Line 69: coord
  ```
  if `coord'<1{;
  ```
- Line 70: coord
  ```
  if `coord'==-1{;
  ```
- Line 71: coord
  ```
  di in red "option coord() required!!!";
  ```
- Line 73: coord
  ```
  di in red "coord(`coord') is invalid";
  ```
- Line 76: coord
  ```
  /*Separate input variables: coordinates, cutoffs, dependent, regressors */
  ```
- Line 80: loc
  ```
  local a=1;
  ```
- Line 81: coord
  ```
  while `a'<=`coord'{;
  ```
- Line 82: coord
  ```
  tempvar coord`a';
  ```
- Line 83: coord
  ```
  gen `coord`a''=``a'';	/*get coordinates*/
  ```
- Line 84: loc
  ```
  local a=`a'+1};
  ```
- Line 86: loc
  ```
  local aa=1;
  ```
- Line 87: coord
  ```
  while `aa'<=`coord'{;
  ```
- Line 90: loc
  ```
  local a=`a'+1;
  ```
- Line 91: loc
  ```
  local aa=`aa'+1};
  ```
- Line 95: loc
  ```
  local depend : word `a' of `varlist';
  ```
- Line 97: loc
  ```
  local a=`a'+1;
  ```
- Line 99: loc
  ```
  local b=1;
  ```
- Line 102: loc
  ```
  local ind`b'="`b'";
  ```
- Line 104: loc
  ```
  local ind`b' : word `a' of `varlist';
  ```
- Line 105: loc
  ```
  local a=`a'+1;
  ```
- Line 106: loc
  ```
  local b=`b'+1};			/*get indep variable(s)*/
  ```
- Line 135: name
  ```
  tempname XUUX XUUk window XUUX1 XUUX2 XUUXt fix ; 	/* Declare a set of variables */
  ```
- Line 142: loc
  ```
  local i=1;
  ```
- Line 145: loc
  ```
  local j=1;
  ```
- Line 147: coord
  ```
  while `j'<=`coord'{;	/*loop through coordinates*/
  ```
- Line 152: coord
  ```
  replace `dis`j''=abs(`coord`j''-`coord`j''[`i']);
  ```
- Line 155: loc
  ```
  local j=`j'+1};			/*create window*/
  ```
- Line 160: loc
  ```
  local k=1;
  ```
- Line 169: loc
  ```
  local k=`k'+1};
  ```
- Line 178: loc
  ```
  local i=`i'+1};
  ```
- Line 184: lat
  ```
  /* We just calculated the Variance Covariance matrix and it is stored in */
  ```
- Line 185: loc
  ```
  /* in the local variable XUUX. */
  ```
- Line 187: lat
  ```
  /* The next step is to calculate dg and construct the var-covar matrix for the parameters */
  ```
- Line 199: lat
  ```
  gen `sqdphat' = sqrt(`phat'*(1-`phat'));  /* I take the square root to make following calculations e
  ```
- Line 201: loc
  ```
  local k=1;
  ```
- Line 206: loc
  ```
  local k=`k'+1};
  ```
- Line 226: loc
  ```
  local z=1;
  ```
- Line 227: loc
  ```
  local v=`a';
  ```
- Line 245: loc
  ```
  local z=`z'+1};
  ```

