## Potential Personal Identifiable Information (PII)

⚠️ We found the following instances of potentially personally identifying information. This may be completely legitimate but might be worth checking. *As a reminder, privacy legislation in many countries (e.g. GDPR in EU) prohibits the dissemination of personal identifiable information without prior (and documented) consent of individuals.* If indeed you want to publish such information with your replication package, you should probably have obtained IRB approval for this - please check!

**Summary:**

- Data files with PII indicators: 1
- Variables flagged in data: 61
- Code files with PII references: 4
- PII references in code: 220

### Summary of Flagged Files

| File Type | File | Variables/References | PII Categories |
|-----------|------|----------------------|----------------|
| Data | `DATASET_ETHNOATLAS.dta` | 61 | name, lat, lon, husband, community, second, loc, sex, house |
| Code | `2026_10_28_Tables_Rejoinder.do` | 65 | lat, loc, name, lon, coord, community, husband, country |
| Code | `x_gmm.ado` | 61 | loc, location, coord, lat, son, name |
| Code | `x_ols.ado` | 46 | loc, location, coord, name, lon |
| Code | `xgmlt.ado` | 48 | loc, location, coord, lat, name |

*See [Appendix](report-pii-appendix.md) for detailed listing of all flagged instances.*
