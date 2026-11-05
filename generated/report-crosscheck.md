### Paper vs. Code/Data Crosscheck

_Generated on 2026-11-05T18:51:30.244_

**Caveats (read before using this report):**
- **Static plausibility only, not a reproducibility check.** No code was executed.
  This cannot catch logic bugs, wrong coefficients, or silently incorrect results.
- **File-level citations only, not line-level.** The model did not see code file
  contents -- only Stage A/B's pre-computed findings and file listings. Any
  "supporting file" below is a plausibility signal, not a verified line reference.
- **Coverage is relative to what Stage C extracted from the paper**, not to the
  paper's true full content. A claim Stage C missed is invisible to this score.

#### Coverage

| Category | Coverage | n claims |
|----------|----------|----------|
| data_source | 50.0% | 1 |
| table | 100.0% | 2 |
| **Overall** | **83.3%** | 3 |

#### Per-Claim Detail

🟡 **data_source: Mayshar, Moav, and Pascali (2022) dataset of 952 pre-industrial societies (JPE 130(4): 1091-1144)** — Plausible
- Stage A traces a data file, DATASET_ETHNOATLAS.dta, as referenced by the package's only substantive .do file (2026_10_28_Tables_Rejoinder.do). The filename 'ETHNOATLAS' (Ethnographic Atlas) is not an obvious name match for the 'Mayshar, Moav, and Pascali (2022)' dataset described in the claim -- MMP's dataset is itself built using Ethnographic Atlas societies, so this is consistent with, but does not directly confirm, the named data source. Absent a filename or README confirming provenance, this is plausible rather than directly matched.
- supporting files: `REJOINDER REPLICATION MATERIAL/DATASET_ETHNOATLAS.dta`, `REJOINDER REPLICATION MATERIAL/2026_10_28_Tables_Rejoinder.do`

✅ **table: Table R1** — Matched
- The package's only analysis .do file is literally named '2026_10_28_Tables_Rejoinder.do', consistent with producing rejoinder/robustness tables such as Table R1, and it is the file Stage A found referencing the dataset DATASET_ETHNOATLAS.dta needed for the MMP-based 2SLS/PDS re-estimation described in the claim. No table-specific tracing (e.g. a 'Table_R1' label in the code) is available from Stage A/B, so the match is at the level of 'the one .do file plausibly producing all tables', not a confirmed per-table link.
- supporting files: `REJOINDER REPLICATION MATERIAL/2026_10_28_Tables_Rejoinder.do`, `REJOINDER REPLICATION MATERIAL/DATASET_ETHNOATLAS.dta`

✅ **table: Table A1** — Matched
- Same reasoning as Table R1: the single .do file in the package ('2026_10_28_Tables_Rejoinder.do') is the only plausible location for this appendix robustness table, and it is tied via Stage A to the DATASET_ETHNOATLAS.dta data file needed for the described winsorization/re-estimation procedure. No finer-grained (table-specific) code evidence is available.
- supporting files: `REJOINDER REPLICATION MATERIAL/2026_10_28_Tables_Rejoinder.do`, `REJOINDER REPLICATION MATERIAL/DATASET_ETHNOATLAS.dta`

#### Orphan Code (no traceable connection to any claim)

- `/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20260415-1/replication-package/__MACOSX/REJOINDER REPLICATION MATERIAL/PACKAGES/._x_gmm.ado`
- `/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20260415-1/replication-package/__MACOSX/REJOINDER REPLICATION MATERIAL/PACKAGES/._x_ols.ado`
- `/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20260415-1/replication-package/__MACOSX/REJOINDER REPLICATION MATERIAL/PACKAGES/._xgmlt.ado`
- `/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20260415-1/replication-package/__MACOSX/REJOINDER REPLICATION MATERIAL/._2026_10_28_Tables_Rejoinder.do`
