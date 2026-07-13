-- Day 4: First real queries with DuckDB on students.csv

-- Q1: See everything (DuckDB reads the CSV directly!)
SELECT * FROM 'students.csv';

-- Q2: Average score and count per class — A wins by only 0.25
SELECT class, AVG(score) AS avg_score, COUNT(*) AS n
FROM 'students.csv'
GROUP BY class
ORDER BY avg_score DESC;

-- Q3: WHERE vs HAVING experiment
-- WHERE removes rows BEFORE averaging (averages change)
SELECT class, AVG(score) AS avg_score
FROM 'students.csv'
WHERE score > 70
GROUP BY class;

-- HAVING filters groups AFTER averaging (averages unchanged)
SELECT class, AVG(score) AS avg_score
FROM 'students.csv'
GROUP BY class
HAVING AVG(score) > 70;
