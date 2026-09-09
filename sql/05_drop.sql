-- @/Users/joanneuwera/CSY2080/coursework/05_drop.sql
-- Drop foreign key constraints

ALTER TABLE task_resources 
DROP CONSTRAINT fk_tr_resources;

ALTER TABLE task_resources 
DROP CONSTRAINT fk_tr_tasks;

ALTER TABLE tasks 
DROP CONSTRAINT fk_t_project_stages;

ALTER TABLE tasks 
DROP CONSTRAINT fk_t_team_members;

ALTER TABLE project_stages 
DROP CONSTRAINT fk_ps_stages;

ALTER TABLE project_stages 
DROP CONSTRAINT fk_ps_projects;

ALTER TABLE employee_skills 
DROP CONSTRAINT fk_es_skills;

ALTER TABLE employee_skills 
DROP CONSTRAINT fk_es_employees;

ALTER TABLE skills 
DROP CONSTRAINT fk_s_stages;

ALTER TABLE team_members 
DROP CONSTRAINT fk_tm_projects;

ALTER TABLE team_members 
DROP CONSTRAINT fk_tm_employees;

-- Drop unique constraints

ALTER TABLE stages 
DROP CONSTRAINT u_stages;

-- Drop check constraints

ALTER TABLE projects 
DROP CONSTRAINT ck_projects;

ALTER TABLE skills 
DROP CONSTRAINT ck_skills;

-- Drop primary key constraints

ALTER TABLE task_resources 
DROP CONSTRAINT pk_task_resources;

ALTER TABLE resources 
DROP CONSTRAINT pk_resources;

ALTER TABLE tasks 
DROP CONSTRAINT pk_tasks;

ALTER TABLE project_stages 
DROP CONSTRAINT pk_project_stages;

ALTER TABLE employee_skills 
DROP CONSTRAINT pk_employee_skills;

ALTER TABLE skills 
DROP CONSTRAINT pk_skills;

ALTER TABLE stages 
DROP CONSTRAINT pk_stages;

ALTER TABLE team_members 
DROP CONSTRAINT pk_team_members;

ALTER TABLE projects 
DROP CONSTRAINT pk_projects;

ALTER TABLE employees 
DROP CONSTRAINT pk_employees;

-- Drop tables

DROP TABLE task_resources;
DROP TABLE resources;
DROP TABLE tasks;
DROP TABLE project_stages;
DROP TABLE employee_skills;
DROP TABLE skills;
DROP TABLE stages;
DROP TABLE team_members;
DROP TABLE projects;
DROP TABLE employees;

--purge 

purge recyclebin;
