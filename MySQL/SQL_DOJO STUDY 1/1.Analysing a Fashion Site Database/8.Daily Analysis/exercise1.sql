-- get the number of sales and date for each day
SELECT purchased_at,COUNT(*) AS 'sales'
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY purchased_at
ORDER BY purchased_at;