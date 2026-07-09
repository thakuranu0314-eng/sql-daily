-- Day 1: SELECT, FROM, WHERE basics
-- SQL execute in order: FROM -> WHERE -> SELECT

--Q1: Names and scores of students who scored above 80
SELECT name, score
FROM students
WHERE score > 80;

-- Q2: (excersice); id and name of students who scored below 80
SELECT id, name
FROM students
WHERE score < 80;

--Q3: Students scoring between 80 and 90 (And narrows)
SELECT name, score
FROM students
WHERE score > 80 AND score < 90;

--Q4: Same thing, cleaner syntax
SELECT name, score
FROM students
Where score BETWEEN 80 AND 90;

--Q5: Specific students by name (instead of name = 'Anu' OR name = 'Punit')
SELECT name, score
FROM students
WHERE name IN ('Anu', 'Dev');
