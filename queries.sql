-- Get all of a player’s owned astronauts
SELECT *
FROM employed_astronauts
WHERE employer = 'NAuguste';

-- Get all of a player’s owned rockets
Select *
FROM owned_rockets
WHERE owner = 'NAuguste';

-- Get all of a player’s astronauts not boarded on rockets
SELECT *
FROM employed_astronauts
WHERE employer = 'MIbe' 
AND boarded_rocket IS NULL;

-- Get a players dollar amount
SELECT net_worth
FROM players
WHERE username = 'JSmith';

-- Get top 5 players with most amount of money
SELECT username, net_worth
FROM players
ORDER BY net_worth DESC
FETCH FIRST 5 ROWS ONLY;

-- Get top 5 players with the most amount of astronauts
SELECT p.*, COUNT(a.id) as astronaut_count
FROM players p
JOIN employed_astronauts a ON a.employer = p.username
GROUP BY p.username, p.password, p.net_worth
ORDER BY COUNT(a.id) DESC;

-- Get top 5 players with the most amount of rockets
SELECT owner, COUNT(*) AS rocket_count
FROM owned_rockets
GROUP BY owner
ORDER BY rocket_count DESC
FETCH FIRST 5 ROWS ONLY;

-- Get a rocket’s active trips (must be incompleted so curr time must be less than completion_time

