SELECT p.year, p.HR FROM performances p
JOIN players p2 ON p2.id = p.player_id
WHERE p2.first_name = 'Ken' AND p2.last_name = 'Griffey' AND p2.birth_year = 1969
ORDER BY p.year DESC;
