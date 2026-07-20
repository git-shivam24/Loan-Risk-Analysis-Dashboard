CREATE DATABASE banking_analytics;
USE banking_analytics;

CREATE TABLE bank_loans (
    person_age INT,
    person_gender VARCHAR(20),
    person_education VARCHAR(50),
    person_income INT,
    person_emp_exp INT,
    person_home_ownership VARCHAR(20),
    loan_amnt INT,
    loan_intent VARCHAR(50),
    loan_int_rate DECIMAL(5,2),
    loan_percent_income DECIMAL(5,2),
    cb_person_cred_hist_length INT,
    credit_score INT,
    previous_loan_defaults_on_file VARCHAR(5),
    loan_status INT -- 1 = Repaid, 0 = Defaulted
);
#Query 1: The Portfolio Health Check (Executive Level)
#This query calculates the total capital the bank has deployed, the size of its customer pool, and its average pricing (interest rates).
SELECT 
    COUNT(*) AS total_loan_applications,
    SUM(loan_amnt) AS total_funded_amount,
    AVG(loan_int_rate) AS average_interest_rate,
    AVG(person_income) AS average_borrower_income
FROM bank_loans;

#Query 2: Risk Analysis Matrix (NPA & Defaults) 
#This tracks Non-Performing Assets. It calculates exactly how much money is sitting in a default state vs. a healthy status.
SELECT 
    CASE 
        WHEN loan_status = 0 THEN 'Defaulted (Bad Loan)'
        WHEN loan_status = 1 THEN 'Repaid Successfully (Good Loan)'
    END AS loan_performance_status,
    COUNT(*) AS application_count,
    SUM(loan_amnt) AS total_amount_allocated,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM bank_loans), 2) AS portfolio_percentage
FROM bank_loans
GROUP BY loan_status;
select * from loan_data limit 5;