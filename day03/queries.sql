-- Day 3: Aggregations and GROUP BY
-- Execution order: FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT

-- Q1: Summary stats for the whole table (one row out)
SELECT COUNT(*) AS n_students, AVG(score) AS avg_score, MAX(score) AS best
FROM students;

-- Q2: Average score per class (one row per class)
SELECT class, AVG(score) AS avg_score
FROM students
GROUP BY class;

-- Q3: Count students per class, biggest class first
SELECT class, COUNT(*) AS n_students
FROM students
GROUP BY class
ORDER BY n_students DESC;

-- Q4: Classes whose average is above 80 (HAVING filters groups)
SELECT class, AVG(score) AS avg_score
FROM students
GROUP BY class
HAVING AVG(score) > 80;
