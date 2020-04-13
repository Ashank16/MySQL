-- get the id and number of units sold of the top 5 most purchased items
SELECT item_id,COUNT(*)
FROM sales_records
GROUP BY item_id
ORDER BY COUNT(*) DESC
LIMIT 5;