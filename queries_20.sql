-- @/Users/joanneuwera/CSY2080/coursework/queries_20.sql
-- simple query

SELECT *
FROM employees;

-- projection queries

SELECT skill_name, skill_level, stage_number
FROM skills;

SELECT project_name, project_description
FROM projects
ORDER BY project_name DESC;

-- restriction queries

SELECT firstname, surname
FROM employees
WHERE town = 'NORTHAMPTON';

SELECT skill_name, skill_description, skill_level
FROM skills
WHERE skill_name LIKE 'D%';

SELECT resource_name, resource_description, price
FROM resources
WHERE price NOT BETWEEN 20 and 80;

SELECT firstname, surname, email
FROM employees
WHERE email LIKE '%GMAIL.COM'
AND town = 'NORTHAMPTON';

SELECT *
FROM employees
WHERE grade = 'NA'
OR graduated = 'N';

SELECT project_stage_id, stage_number, start_date
FROM project_stages
WHERE start_date BETWEEN '01-SEP-2023' and '01-NOV-2023'
AND duration >70;

-- join queries

SELECT project_name, start_date
FROM projects JOIN project_stages
ON projects.project_id = project_stages.project_id;

SELECT firstname, surname, skill_id
FROM employees JOIN employee_skills
ON employees.employee_id = employee_skills.employee_id
WHERE town = 'NORTHAMPTON';