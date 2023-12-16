SELECT player.first_name, player.last_name,
salary.salary / performance.hits AS "dollars per hit"
FROM player
JOIN appearance ON player.player_id = appearance.player_id
JOIN performance ON appearance.game_id = performance.game_id AND appearance.year_id = performance.year_id
JOIN salary ON player.player_id = salary.player_id AND appearance.year_id = salary.year_id
WHERE performance.hits > 0 AND salary.salary > 0 AND salary.year_id = 2001
ORDER BY "dollars per hit" ASC, player.first_name ASC, player.last_name ASC
LIMIT 10;
