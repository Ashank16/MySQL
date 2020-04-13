SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
WHERE countries.name = 'Japan' AND players.height >= 180;