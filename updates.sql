UPDATE problems SET difficulty = 7 WHERE (points >= (SELECT AVG(points) FROM problems));
DELETE FROM authors WHERE birthday <= TO_DATE('1990-01-01', 'YYYY-MM-DD'); 
UPDATE problems p SET p.difficulty = 3 WHERE (SELECT COUNT(*) FROM needs n WHERE p.problem_id = n.problem_id) = 0;
DELETE FROM algorithms WHERE LOWER(link_tutorial) LIKE '%geometry%';

SELECT * FROM algorithms;
SELECT * FROM authors;
SELECT * FROM problems;
COMMIT;
ROLLBACK;

