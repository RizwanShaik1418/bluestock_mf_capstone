# Data Dictionary

## dim_fund

| Column | Description |
|---|---|
| amfi_code | Unique mutual fund identifier |
| scheme_name | Name of mutual fund scheme |
| fund_house | Mutual fund company |
| category | Fund category |
| sub_category | Fund sub category |
| risk_category | Risk level |

---

## fact_nav

| Column | Description |
|---|---|
| amfi_code | Mutual fund code |
| date | NAV date |
| nav | Net Asset Value |

---

## fact_transactions

| Column | Description |
|---|---|
| investor_id | Investor unique ID |
| transaction_date | Date of transaction |
| transaction_type | SIP/Lumpsum/Redemption |
| amount_inr | Transaction amount |
| state | Investor state |
| city | Investor city |
| kyc_status | KYC verification status |

---

## fact_performance

| Column | Description |
|---|---|
| return_1yr_pct | 1 year return |
| return_3yr_pct | 3 year return |
| return_5yr_pct | 5 year return |
| aum_crore | Assets under management |
| expense_ratio_pct | Fund expense ratio |
| risk_grade | Risk grade |