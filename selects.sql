--1 JOIN, TO_CHAR, ASYNC select, ORDER BY
SELECT p.problem_id, p.problem_name, p.difficulty, a.author_name, TO_CHAR(a.birthday, 'DD/MM/YYYY')
FROM problems p 
JOIN proposed_by pb ON p.problem_id = pb.problem_id 
JOIN authors a ON a.author_id = pb.author_id
WHERE p.points >= 100 
AND a.experience_years >= (
    SELECT ((SELECT MAX(amax.experience_years) FROM authors amax) + (SELECT MIN(amin.experience_years) FROM authors amin)) / 2 FROM dual
)
ORDER BY p.difficulty DESC;

--2 WITH, CASE, 
WITH rating as (SELECT p.problem_name, p.difficulty FROM problems p)
SELECT r.problem_name, 
CASE 
    WHEN r.difficulty >= 7 THEN 'hard'
    WHEN r.difficulty >= 4 THEN 'medium'
    WHEN r.difficulty >= 1 THEN 'easy'
    END as category
FROM rating r;

--3 UPPER, GROUP BY, HAVING, UPPER, JOIN, TO_DATE
SELECT a.author_id, UPPER(a.author_name), COUNT(p.problem_id) as cnt
FROM authors a
JOIN proposed_by pb ON a.author_id = pb.author_id
JOIN problems p ON p.problem_id = pb.problem_id
GROUP BY (a.author_id, a.author_name, a.birthday)
HAVING a.birthday >= TO_DATE('1985-01-01', 'YYYY-MM-DD');

--4 SYNC SELECT
SELECT p.problem_id, p.problem_name, 
(SELECT COUNT(n.algorithm_id) FROM needs n 
WHERE p.problem_id = n.problem_id)
FROM problems p;

--5 NVL
SELECT algorithm_name, NVL(link_tutorial, 'no link') FROM algorithms;



SELECT * FROM problems p
JOIN needs n ON p.problem_id = n.problem_id
JOIN algorithms a ON a.algorithm_id = n.algorithm_id;


SELECT * FROM problems;
SELECT * FROM problems;