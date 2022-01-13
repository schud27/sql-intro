-- Who hit the most home runs in 2019, and what team did he play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


SELECT
teams.name
,players.first_name
,players.last_name
,max(stats.home_runs)

FROM players
INNER JOIN stats
ON players.id = stats.player_id
INNER JOIN teams
ON stats.team_id = teams.id

WHERE teams.year = 2019
;
