-- @/Users/joanneuwera/CSY2080/coursework/02_constraint.sql

-- primary key constraints 

ALTER TABLE employees
ADD CONSTRAINT pk_employees
PRIMARY KEY (employee_id);

ALTER TABLE projects
ADD CONSTRAINT pk_projects
PRIMARY KEY (project_id);

ALTER TABLE team_members
ADD CONSTRAINT pk_team_members
PRIMARY KEY (team_member_id);

ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_number);

ALTER TABLE skills
ADD CONSTRAINT pk_skills
PRIMARY KEY (skill_id);

ALTER TABLE employee_skills
ADD CONSTRAINT pk_employee_skills
PRIMARY KEY (employee_id, skill_id);

ALTER TABLE project_stages
ADD CONSTRAINT pk_project_stages
PRIMARY KEY (project_stage_id);

ALTER TABLE tasks
ADD CONSTRAINT pk_tasks
PRIMARY KEY (task_id);

ALTER TABLE resources
ADD CONSTRAINT pk_resources
PRIMARY KEY (resource_id);

ALTER TABLE task_resources
ADD CONSTRAINT pk_task_resources
PRIMARY KEY (task_id, resource_id);

-- foreign key constraints

ALTER TABLE team_members
ADD CONSTRAINT fk_tm_employees
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE team_members
ADD CONSTRAINT fk_tm_projects
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

ALTER TABLE skills
ADD CONSTRAINT fk_s_stages
FOREIGN KEY (stage_number)
REFERENCES stages(stage_number);

ALTER TABLE employee_skills
ADD CONSTRAINT fk_es_employees
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE employee_skills
ADD CONSTRAINT fk_es_skills
FOREIGN KEY (skill_id)
REFERENCES skills(skill_id);

ALTER TABLE project_stages
ADD CONSTRAINT fk_ps_projects
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

ALTER TABLE project_stages
ADD CONSTRAINT fk_ps_stages
FOREIGN KEY (stage_number)
REFERENCES stages(stage_number);

ALTER TABLE tasks
ADD CONSTRAINT fk_t_team_members
FOREIGN KEY (team_member_id)
REFERENCES team_members(team_member_id);

ALTER TABLE tasks
ADD CONSTRAINT fk_t_project_stages
FOREIGN KEY (project_stage_id)
REFERENCES project_stages(project_stage_id);

ALTER TABLE task_resources
ADD CONSTRAINT fk_tr_tasks
FOREIGN KEY (task_id)
REFERENCES tasks(task_id);

ALTER TABLE task_resources
ADD CONSTRAINT fk_tr_resources
FOREIGN KEY (resource_id)
REFERENCES resources(resource_id);

-- unique constraints 

ALTER TABLE stages
ADD CONSTRAINT u_stages
UNIQUE (stage_title);

-- check constraints

ALTER TABLE projects
ADD CONSTRAINT ck_projects
CHECK (project_name = UPPER(project_name));

ALTER TABLE skills
ADD CONSTRAINT ck_skills
CHECK (skill_level IN ('1', '2', '3'));

-- view

SELECT CONSTRAINT_NAME 
FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME NOT LIKE 'SYS%';
