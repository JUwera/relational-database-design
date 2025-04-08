-- @/Users/joanneuwera/CSY2080/coursework/create_20.sql

-- employees

CREATE TABLE employees(
employee_id NUMBER(5),
firstname VARCHAR(25),
surname VARCHAR(25)NOT NULL,
date_of_birth DATE,
mobile_number VARCHAR(11),
town VARCHAR(15),
postcode VARCHAR(15),
email VARCHAR(50),
graduated CHAR(1) DEFAULT 'Y',
grade CHAR(2)
);

-- projects

CREATE TABLE projects(
project_id NUMBER(5),
project_name VARCHAR(25),
project_description VARCHAR(150)
);

-- team_members

CREATE TABLE team_members(
team_member_id NUMBER(5),
employee_id NUMBER(5) NOT NULL,
project_id NUMBER(5)NOT NULL
);

-- stages

CREATE TABLE stages(
stage_number CHAR(1),
stage_title VARCHAR(25) 
);

-- skills

CREATE TABLE skills(
skill_id NUMBER(3),
skill_name VARCHAR(25),
skill_description VARCHAR(150),
skill_level CHAR(1),
stage_number CHAR(1)NOT NULL
);

-- employee_skills

CREATE TABLE employee_skills(
employee_id NUMBER(5)NOT NULL,
skill_id NUMBER(3)NOT NULL
);

-- project_stages

CREATE TABLE project_stages(
project_stage_id NUMBER(5),
project_id NUMBER(5)NOT NULL,
stage_number CHAR(1)NOT NULL,
start_date DATE,
duration NUMBER(3)
);

-- tasks

CREATE TABLE tasks(
task_id NUMBER(5),
team_member_id NUMBER(5)NOT NULL,
project_stage_id NUMBER(5)NOT NULL,
task_required char(1) DEFAULT 'Y'
);

-- resources

CREATE TABLE resources(
resource_id NUMBER(5),
resource_name VARCHAR(25),
resource_description VARCHAR(150),
price NUMBER(5,2)
);

-- task_resources

CREATE TABLE task_resources(
task_id NUMBER(5)NOT NULL,
resource_id NUMBER(5)NOT NULL
);

-- test code
SELECT TNAME FROM TAB;