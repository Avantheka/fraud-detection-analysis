CREATE DATABASE fraud_detection_project;
USE fraud_detection_project;

SELECT * FROM fraud_transactions;
SELECT COUNT(*) from fraud_transactions;

-- OVERALL FRAUD RATE
SELECT ROUND(AVG(is_fraud) * 100,3) as Fraud_Perccentage
FROM fraud_transactions;

-- RISK LEVEL PERFORMANCE
SELECT risk_level, ROUND(avg(is_fraud) *100, 3) as Fraud_rate,
count(*) as Total_transaction
FROM fraud_transactions
GROUP BY risk_level
ORDER BY Fraud_rate DESC;


-- RISK SCORE VALIDATION
SELECT is_fraud, 
ROUND(avg(risk_score),2) as Avg_risk_score
FROM fraud_transactions
GROUP BY is_fraud;


SELECT * FROM fraud_transactions;

-- CATEGORY ANALYSIS
SELECT category,
ROUND(AVG(is_fraud) * 100, 3) as Fraud_rate
FROM fraud_transactions
GROUP BY category
ORDER BY fraud_rate DESC
LIMIT 5;


-- RISK DISTRIBUTION
SELECT risk_level, count(*) as Total_count
FROM fraud_transactions
GROUP BY risk_level;


-- GEO INSGHT
SELECT * FROM fraud_transactions;

SELECT state, 
ROUND(AVG(is_fraud)* 100, 3) as fraud_rate
from fraud_transactions
GROUP BY state
ORDER BY fraud_rate DESC
LIMIT 5;