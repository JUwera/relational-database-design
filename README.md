# Relational Database Design & Development Project

## Overview

This project demonstrates the design and implementation of a relational database system, focusing on database integrity and best practices. The objective was to develop a database from an Entity Relationship Diagram (ERD), define table specifications, implement the database using SQL scripts, and create queries to extract meaningful data.

## Objectives

- **Data Modelling:** Create table specifications based on the ERD.
- **Database Integrity:** Implement integrity constraints (primary/foreign keys, data types).
- **SQL Implementation:** Develop SQL scripts to create and manipulate the database.
- **Data Queries:** Write SQL queries to extract insights and solve problems.
- **Team Collaboration:** Work in a team to deliver a professional, functioning database.

## Technologies Used

- **Database:** Oracle
- **SQL Development:** Visual Studio Code
- **Version Control:** GitHub

## Database Design

The database was designed using the provided ERD and includes the following entities:

- **team_member:** Project team members
- **employee:** Employee details (ID, name, age, contact, grade)
- **employee_skill:** Employee skills mapping
- **skill:** Skill levels (1–3)
- **stage:** Project stages (number, title)
- **project_stage:** Project stage schedule (start date, duration)
- **task:** Project tasks, responsibility, and required status
- **resource:** Resource details and cost
- **task_resources:** Resources allocated to tasks
- **project:** Project-specific details

### Design Considerations

- Proper use of **primary/foreign keys** to maintain relationships.
- **Integrity constraints** (e.g., NOT NULL, UNIQUE, CHECK).
- Default values for fields like `task.required = 'Y'`.
- Consistent naming conventions and case sensitivity.

## Project Structure

