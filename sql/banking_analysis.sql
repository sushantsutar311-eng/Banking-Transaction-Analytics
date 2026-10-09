
-- 1. Check total number of transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;

-- 2. Analyze Debit vs Credit transactions
SELECT
    TransactionType,
    COUNT(*) AS transaction_count,
    ROUND(SUM(TransactionAmount), 2) AS total_amount,
    ROUND(AVG(TransactionAmount), 2) AS average_amount
FROM transactions
GROUP BY TransactionType
ORDER BY total_amount DESC;

-- Channel-wise transaction analysis
SELECT
    Channel,
    COUNT(*) AS transaction_count,
    ROUND(SUM(TransactionAmount), 2) AS total_amount,
    ROUND(AVG(TransactionAmount), 2) AS average_amount
FROM transactions
GROUP BY Channel
ORDER BY total_amount DESC;