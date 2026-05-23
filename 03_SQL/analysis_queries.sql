-- Total spending by category
SELECT
category_id,
SUM(amount) AS total_spending
FROM transactions
GROUP BY category_id;

-- Top spending accounts
SELECT
account_id,
SUM(amount) AS total_spending
FROM transactions
GROUP BY account_id
ORDER BY total_spending DESC;

-- Payment method usage
SELECT
payment_method,
COUNT(*) AS usage_count
FROM transactions
GROUP BY payment_method;

-- Average transaction amount
SELECT
AVG(amount) AS avg_transaction_amount
FROM transactions;