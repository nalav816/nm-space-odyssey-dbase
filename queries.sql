-- Get all of a player’s owned astronauts
SELECT *
FROM employed_astronauts
WHERE employer = "NAuguste";

-- Get all of a player’s owned rockets

-- Get all of a player’s astronauts not boarded on rockets
SELECT *
FROM employed_astronauts
WHERE employer = "MIbe" AND boarded_rocket = NULL;

-- Get a players dollar amount

-- Get top 5 players with most amount of money

-- Get top 5 players with the most amount of astronauts
SELECT p.*, COUNT(a.id) as astronaut_count
FROM players p
JOIN employed_astronauts a ON e.employer = p.username
GROUP BY p.username, p.password, p.net_worth
ORDER BY COUNT(a.id) DESC

-- Get top 5 players with the most amount of rockets

-- Get a rocket’s active trips (must be incompleted so curr time must be less than completion_time

