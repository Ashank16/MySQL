SELECT country_id,SUM(goals)
FROM players
GROUP BY country_id;