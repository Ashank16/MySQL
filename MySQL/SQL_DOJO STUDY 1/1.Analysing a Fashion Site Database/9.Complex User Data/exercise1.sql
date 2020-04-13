-- get the name and number of items for users who have purchased 10 items or more
SELECT users.id,users.name,COUNT(*) AS 'number'
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
GROUP BY users.id,users.name
HAVING COUNT(*) >= 10;
