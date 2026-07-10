-- Day 2: ORDER BY and LIMIT
-- Execution order: FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT

-- Q1: Top 2 students by score
SELECT name, score
FROM students
ORDER BY score DESC
LIMIT 2;

-- Q2: All students, lowest score first (ASC is the default)
SELECT name, score
FROM students
ORDER BY score;

-- Q3: Combine with WHERE — best student among those below 90
SELECT name, score
FROM students
WHERE score < 90
ORDER BY score DESC
LIMIT 1;
