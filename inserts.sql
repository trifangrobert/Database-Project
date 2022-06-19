INSERT INTO problems VALUES(1, 'Aladdin', 9, 100);
INSERT INTO problems VALUES(2, 'Tournament', 8, 90);
INSERT INTO problems VALUES(3, 'Polihroniade', 5, 100);
INSERT INTO problems VALUES(4, 'Rubarba', 10, 150);
INSERT INTO problems VALUES(5, 'Zalmoxis', 7, 120);
INSERT INTO problems VALUES(6, 'Adunare', 1, 50);
INSERT INTO problems VALUES(7, 'Rangemode', 7, 120);
INSERT INTO problems VALUES(8, 'Xormax', 6, 90);
SELECT * FROM problems;

INSERT INTO authors VALUES(1, 'Adrian Budau', 10, '02-FEB-1993');
INSERT INTO authors VALUES(2, 'Tamio Nakajima', 7, '03-AUG-2000');
INSERT INTO authors VALUES(3, 'Mircea Pasoi', 20, '28-JUL-1983');
INSERT INTO authors VALUES(4, 'Cosmin Negruseri', 30, '17-NOV-1976');
INSERT INTO authors VALUES(5, 'Ionut Mugurel', 15, '09-DEC-1987');
INSERT INTO authors VALUES(6, 'Mihai Patrascu', 10, '17-OCT-1990');
SELECT * FROM authors;


INSERT INTO algorithms VALUES(1, 'Dijkstra', 'cp-algorithms.com/graph/dijkstra');
INSERT INTO algorithms VALUES(2, 'Roy-Floyd', 'cp-algorithms.com/graph/roy-floyd');
INSERT INTO algorithms VALUES(3, 'Bellman-Ford', 'cp-algorithms.com/graph/bellman-ford');
INSERT INTO algorithms VALUES(4, 'Convex Hull', 'cp-algorithms.com/geometry/convex-hull');
INSERT INTO algorithms VALUES(5, 'Aho-Corasick', 'cp-algorithms.com/string/aho_corasick');
INSERT INTO algorithms VALUES(6, 'Heavy path', 'cp-algorithms.com/graph/hld');
INSERT INTO algorithms VALUES(7, 'Ad-hoc', NULL);
SELECT * FROM algorithms;


INSERT INTO proposed_by (author_id, problem_id) VALUES(1, 4);
INSERT INTO proposed_by (author_id, problem_id) VALUES(1, 3);
INSERT INTO proposed_by (author_id, problem_id) VALUES(3, 1);
INSERT INTO proposed_by (author_id, problem_id) VALUES(2, 2);
INSERT INTO proposed_by (author_id, problem_id) VALUES(2, 6);
INSERT INTO proposed_by (author_id, problem_id) VALUES(6, 5);
INSERT INTO proposed_by (author_id, problem_id) VALUES(5, 4);
INSERT INTO proposed_by (author_id, problem_id) VALUES(4, 1);
INSERT INTO proposed_by (author_id, problem_id) VALUES(5, 2);
INSERT INTO proposed_by (author_id, problem_id) VALUES(3, 3);
INSERT INTO proposed_by (author_id, problem_id) VALUES(6, 6);
INSERT INTO proposed_by (author_id, problem_id) VALUES(6, 7);
INSERT INTO proposed_by (author_id, problem_id) VALUES(3, 8);
INSERT INTO proposed_by (author_id, problem_id) VALUES(4, 7);
COMMIT;
SELECT * FROM proposed_by;

SELECT * FROM needs;
INSERT INTO needs (problem_id, algorithm_id) VALUES(3, 2);
INSERT INTO needs (problem_id, algorithm_id) VALUES(1, 5);
INSERT INTO needs (problem_id, algorithm_id) VALUES(6, 3);
INSERT INTO needs (problem_id, algorithm_id) VALUES(5, 4);
INSERT INTO needs (problem_id, algorithm_id) VALUES(4, 6);
INSERT INTO needs (problem_id, algorithm_id) VALUES(2, 1);
INSERT INTO needs (problem_id, algorithm_id) VALUES(4, 3);
INSERT INTO needs (problem_id, algorithm_id) VALUES(3, 5);
INSERT INTO needs (problem_id, algorithm_id) VALUES(1, 3);
INSERT INTO needs (problem_id, algorithm_id) VALUES(2, 2);
INSERT INTO needs (problem_id, algorithm_id) VALUES(6, 6);



INSERT INTO solutions VALUES(1, 2, 'O(N)', 'O(N)');
INSERT INTO solutions VALUES(2, 4, 'O(NlogN)', 'O(N)');
INSERT INTO solutions VALUES(3, 2, 'O(N^2)', 'O(N)');
INSERT INTO solutions VALUES(4, 1, 'O(logN)', 'O(N)');
INSERT INTO solutions VALUES(5, 6, 'O(N^3)', 'O(N^2)');
INSERT INTO solutions VALUES(6, 3, 'O(N^2logN)', 'O(NlogN)');
INSERT INTO solutions VALUES(7, 5, 'O(N*sqrt(N))', 'O(N^2)');
INSERT INTO solutions VALUES(8, 4, 'O(N + Q))', 'O(N^2)');
SELECT * FROM solutions;




COMMIT;
ROLLBACK;


CREATE SEQUENCE ID_GENERATOR
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE;

INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Dani', 'Mocanu', 12345, 30);
INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Florin', 'Salam', 51232, 42);
INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Nicolae', 'Guta', 91285, 54);
INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Costel', 'Biju', 73627, 37);
INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Tzanca', 'Uraganu', 85273, 31);
INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Mister', 'Juve', 72625, 40);
INSERT INTO students VALUES(ID_GENERATOR.NEXTVAL, 'Romeo', 'Fantastick', 81582, 46);

DROP SEQUENCE ID_GENERATOR;