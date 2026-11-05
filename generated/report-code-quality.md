## Code Quality

### Stata

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2026_10_28_Tables_Rejoinder.do, line 154)
  → keep if year~=.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2026_10_28_Tables_Rejoinder.do, line 155)
  → keep if year>=1500

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2026_10_28_Tables_Rejoinder.do, line 156)
  → keep if Barley_point_cal!=. /*Delete observations without agricultural data*/

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2026_10_28_Tables_Rejoinder.do, line 249)
  → keep if e(sample)

