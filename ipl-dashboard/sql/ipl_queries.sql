-- Sample SQL queries for IPL analysis

-- Top 10 run scorers
SELECT player_name, SUM(runs) as total_runs
FROM ipl_matches
GROUP BY player_name
ORDER BY total_runs DESC
LIMIT 10;

-- Top 10 wicket takers
SELECT bowler_name, SUM(wickets) as total_wickets
FROM ipl_matches
GROUP BY bowler_name
ORDER BY total_wickets DESC
LIMIT 10;

-- Matches won by each team
SELECT winner, COUNT(*) as matches_won
FROM ipl_matches
GROUP BY winner
ORDER BY matches_won DESC;
