CREATE OR REPLACE VIEW author_problem (author_id, author_name, problem_name, problem_difficulty)
AS (SELECT a.author_id, a.author_name, p.problem_name, p.difficulty FROM authors a 
JOIN proposed_by pb ON a.author_id = pb.author_id 
JOIN problems p ON p.problem_id = pb.problem_id);

DROP VIEW author_problem;

UPDATE author_problem SET problem_difficulty = 2 WHERE author_id = 3 AND LOWER(problem_name) = 'aladdin'; -- merge
UPDATE author_problem SET author_name = 'John Cena', problem_name = 'Tri' WHERE author_id = 3; -- nu merge

ROLLBACK;

SELECT * FROM author_problem;
