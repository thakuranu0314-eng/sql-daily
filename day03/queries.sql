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

# Day 3 — Aggregations & GROUP BY
- Aggregates (COUNT, AVG, SUM, MIN, MAX) collapse many rows into one value
- GROUP BY = split-apply-combine, same as pandas df.groupby()
- Rule: every SELECT column must be in GROUP BY or inside an aggregate
- WHERE filters ROWS (before grouping); HAVING filters GROUPS (after)
- Full order: FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT

-- Q5: Lowest score in each class
SELECT class, MIN(score) AS lowest_score
FROM students
GROUP BY class;
