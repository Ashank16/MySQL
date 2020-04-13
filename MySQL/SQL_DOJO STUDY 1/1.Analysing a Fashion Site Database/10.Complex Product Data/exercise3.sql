-- get all rows with a higher sales total than the item "grey hoodie"
SELECT items.id,items.name,items.price * COUNT(*) AS 'sales total'
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id,items.name,items.price
HAVING items.price * COUNT(*) > (
SELECT items.price * COUNT(*)
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
WHERE items.name = 'grey hoodie'
);