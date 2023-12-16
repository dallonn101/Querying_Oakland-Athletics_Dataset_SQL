SELECT t.name, ROUND(AVG(s.salary), 2) AS average_salary FROM teams t
JOIN salaries s ON t.id = s.team_id
WHERE s.year = 2001
GROUP BY t.name
ORDER BY average_salary ASC
LIMIT 5;
