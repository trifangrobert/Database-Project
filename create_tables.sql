
DROP TABLE problems;
CREATE TABLE problems(
    problem_id number(5) PRIMARY KEY,
    problem_name varchar2(20) NOT NULL,
    difficulty number(3),
    points float(5) NOT NULL
);

DROP TABLE authors;
CREATE TABLE authors (
    author_id number(5) PRIMARY KEY,
    author_name varchar2(20) NOT NULL,
    experience_years number(5)
);

DROP TABLE algorithms;
CREATE TABLE algorithms(
    algorithm_id number(5) PRIMARY KEY,
    link_code varchar2(20),
    link_tutorial varchar2(20)
);

DROP TABLE proposed_by;
CREATE TABLE proposed_by (
    author_id number(5) NOT NULL,
    problem_id number(5) NOT NULL,
    CONSTRAINT proposal_id PRIMARY KEY (author_id, problem_id)
);

DROP TABLE needs;
CREATE TABLE needs (
    problem_id number(5) NOT NULL,
    algorithm_id number(5) NOT NULL,
    CONSTRAINT need_id PRIMARY KEY (problem_id, algorithm_id)
);

DROP TABLE solutions;
CREATE TABLE solutions (
    solution_id number(5) PRIMARY KEY,
    problem_id number(5) NOT NULL,
    time_complexity varchar2(15) NOT NULL,
    space_complexity varchar2(15) NOT NULL,
    CONSTRAINT fk_problem FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);