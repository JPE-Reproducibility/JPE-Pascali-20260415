Data and Code for: The Origin of the State: Land Productivity or Appropriability? Rejoinder
Joram Mayshar, Omer Moav, and Luigi Pascali

OVERVIEW
The replication package reproduces Tables R1 and A1 of the rejoinder using Stata. A single do-file, "2026_10_28_Tables_Rejoinder.do", generates the regression results. The analysis uses "DATASET_ETHNOATLAS.dta" from Mayshar, Moav, and Pascali (2022).

DATA AVAILABILITY AND PROVENANCE
The dataset is included in the replication package and is also available from the original article's replication materials:
https://www.journals.uchicago.edu/doi/suppl/10.1086/718372

SOFTWARE REQUIREMENTS
Stata 19.5 SE was used for the analysis.
The do-file checks for and installs the following user-written packages when missing: ivreg2, ranktest, estout, pdslasso, lassopack, winsor, and outreg2. The Conley calculations also use the custom programs xgmlt.ado, x_ols.ado, and x_gmm.ado in the PACKAGES folder.

INSTRUCTIONS TO REPLICATORS
1. Edit the global MAIN path in line 30 of the do-file “2026_10_28_Tables_Rejoinder.do”.
2. Run the do-file in Stata. Results are saved in the RESULTS folder, which the do-file creates if needed.

LIST OF TABLES AND OUTPUT FILES
Table R1: Upper-tail winsorization of both cereal and tuber productivity.
  RESULTS/TableR1_winsorize_top_P_percent_se_clustered.tex
  RESULTS/TableR1_winsorize_top_P_percent_se_conley_cutoff_5.tex
  RESULTS/TableR1_winsorize_top_P_percent_se_conley_cutoff_10.tex

Table A1: Upper-tail winsorization of cereal productivity and lower-tail winsorization of tuber productivity.
  RESULTS/TableA1_winsorize_P_percent_se_clustered.tex
  RESULTS/TableA1_winsorize_P_percent_se_conley_cutoff_5.tex
  RESULTS/TableA1_winsorize_P_percent_se_conley_cutoff_10.tex

In these filenames, P is the winsorization percentage: 0, 1, 2, 3, 5, or 10. For each winsorization percentage, the three files report the same five regression specifications. The clustered file provides the coefficients and the first row of p-values in the manuscript tables. The Conley files provide the second and third rows of p-values, corresponding to spatial correlation adjustments with cutoffs of 5 and 10 decimal degrees, respectively. 



REFERENCE
Mayshar, J., Moav, O., and Pascali, L. (2022). "The Origin of the State: Land Productivity or Appropriability?" Journal of Political Economy 130(4): 1091-1144.
