-- Day 1: SELECT, FROM, WHERE basics
-- SQL execute in order: FROM -> WHERE -> SELECT

--Q1: Names and scores of students who scored above 80
SELECT name, score
FROM students
WHERE score > 80;

-- Q2 (excersice); id and name of students who scored below 80
SELECT id, name
FROM students
WHERE score < 80;
