SELECT p.first_name, p.last_name FROM players p
JOIN salaries s ON p.id = s.player_id
JOIN performances p2 ON p.id = p2.player_id
AND s.year = p2.year
WHERE p2.H > 0 AND p2.RBI > 0
AND s.year = 2001
AND (s.salary / p2.H) <= (
  SELECT MAX(s.salary / p2.H) AS max_dollars_per_hit
  FROM salaries s
  JOIN performances p2 ON s.player_id = p2.player_id
  AND s.year = p2.year
  WHERE p2.H > 0
  AND s.year = 2001
  ORDER BY max_dollars_per_hit ASC
  LIMIT 10
)
AND (s.salary / p2.RBI) <= (
  SELECT MAX(s.salary / p2.RBI) AS max_dollars_per_rbi
  FROM salaries s
  JOIN performances p2 ON s.player_id = p2.player_id
  AND s.year = p2.year
  WHERE p2.RBI > 0
  AND s.year = 2001
  ORDER BY max_dollars_per_rbi ASC
  LIMIT 10
)
ORDER BY p.id ASC;
