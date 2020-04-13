-- get the number of purchases for each purchased_at group

SELECT COUNT(*),purchased_at
FROM purchases
GROUP BY purchased_at;