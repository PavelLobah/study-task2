CREATE TABLE task (
    id SERIAL PRIMARY KEY,  
    name varchar(255) NOT NULL,
    description text NULL, 
    deadline_at TIMESTAMPTZ,
    type_id int,
    status_id int NULL,
    sprint_id int NULL,
    project_id int NULL,
    assignee_id int NULL
);
CREATE TABLE project (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);
CREATE TABLE sprints (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL,
    start_at TIMESTAMPTZ NOT NULL, 
    end_at TIMESTAMPTZ NOT NULL
);
CREATE TABLE lib_task_type (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);
CREATE TABLE lib_task_status (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL,
    phone char(11) NOT NULL,
    email char(50) NOT NULL
);
-- Добавление внешнего ключа для таблицы "task" на поле "type_id", связанное с таблицей "lib_task_type"
ALTER TABLE task
ADD CONSTRAINT fk_task_type
FOREIGN KEY (type_id)
REFERENCES lib_task_type(id);

-- Добавление внешнего ключа для таблицы "task" на поле "status_id", связанное с таблицей "lib_task_status"
ALTER TABLE task
ADD CONSTRAINT fk_task_status
FOREIGN KEY (status_id)
REFERENCES lib_task_status(id);

-- Добавление внешнего ключа для таблицы "task" на поле "sprint_id", связанное с таблицей "sprints"
ALTER TABLE task
ADD CONSTRAINT fk_task_sprint
FOREIGN KEY (sprint_id)
REFERENCES sprints(id);

-- Добавление внешнего ключа для таблицы "task" на поле "project_id", связанное с таблицей "project"
ALTER TABLE task
ADD CONSTRAINT fk_task_project
FOREIGN KEY (project_id)
REFERENCES project(id);

-- Добавление внешнего ключа для таблицы "task" на поле "assignee_id", связанное с таблицей "users"
ALTER TABLE task
ADD CONSTRAINT fk_task_assignee
FOREIGN KEY (assignee_id)
REFERENCES users(id);
