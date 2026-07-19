
# Loan-Risk-Analysis-Dashboard
Loan risk and capital analytics dashboard
# End-to-End Loan Risk & Capital Analytics Dashboard

## 📊 Project Overview
An executive-ready Power BI dashboard designed to analyze credit risk, underwriting patterns, and capital distribution across **35,000 total loan applications**. This project handles the entire data lifecycle: from initial data preparation and type-casting to DAX engineering and professional UI design.

### 🛠️ Tech Stack & Tools
* **Data Preparation:** Excel / SQL
* **Data Modeling & Visualization:** Power BI Desktop
* **Design System:** Custom 4-tier grid layout utilizing a highly scannable Navy (`#1F4E79`) and Teal (`#00A896`) color palette against a crisp light-gray canvas (`#F4F5F7`).

---

## 📸 Dashboard Interface
<img width="836" height="470" alt="Screenshot 2026-07-18 105907" src="https://github.com/user-attachments/assets/f51d67a0-0d6f-4099-a95e-2f3036895ed9" />
---

## 🧠 Key Data Insights
* **Portfolio Scale:** Monitored over **$322.69M in total funded capital** with an **average interest rate of 10.48%** across all approved brackets.
* **Risk Concentration by Intent:** Cross-analyzing metrics reveals that `DEBT CONSOLIDATION` and `EDUCATION` dominate the portfolio, combining for over $140M in funded capital and serving as primary drivers of capital allocation.
* **Portfolio Health:** The centralized `loan_status` distribution tracking indicates that approximately 21.17% ($68.30M) of the portfolio falls under default/risk category (`1`), allowing risk managers to instantly audit the ratio of performing loans against defaults to rapidly adjust underwriting caps.

---

## 📈 Technical Implementation Details
* **ETL & Data Cleaning:** Resolved null values in critical fields like employment length (`person_emp_length`) and interest rates (`loan_int_rate`) while ensuring absolute currency precision on financial columns (`loan_amnt`).
* **DAX Formulas Engineered:**
  * `Total Applications = COUNT(loan_data[loan_id])` — *Evaluates to 35K*
  * `Total Funded Capital = SUM(loan_data[loan_amnt])` — *Evaluates to $322.69M*
  * `Average Interest Rate = AVERAGE(loan_data[loan_int_rate])` — *Evaluates to 10.48%*
