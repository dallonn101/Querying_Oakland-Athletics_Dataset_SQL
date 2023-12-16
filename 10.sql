SELECT p.first_name, p.last_name, s.salary, p2.HR, p2.year
FROM players p
JOIN salaries s ON p.id = s.player_id
JOIN performances p2 ON p.id = p2.player_id
AND s.year = p2.year
ORDER BY p.id ASC, p2.year DESC, p2.HR DESC, s.salary DESC;
