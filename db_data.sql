-- task
INSERT INTO task (name, description, deadline_at, type_id, status_id, sprint_id, project_id, assignee_id)
VALUES ('Task 1', 'Description for Task 1', '2022-01-01 10:00:00+00', 1, 2, 1, 1, 3);
INSERT INTO task (name, description, deadline_at, type_id, status_id, sprint_id, project_id, assignee_id)
VALUES ('Task 2', NULL, '2022-02-15 16:30:00+00', 2, 1, 1, 2, NULL);
INSERT INTO task (name, description, deadline_at, type_id, status_id, sprint_id, project_id, assignee_id)
VALUES ('Task 3', 'Description for Task 3', NULL, 1, 3, 2, 1, 4);
INSERT INTO task (name, description, deadline_at, type_id, status_id, sprint_id, project_id, assignee_id)
VALUES ('Task 4', NULL, '2022-03-07 12:00:00+00', 3, NULL, 3, 2, 2);
INSERT INTO task (name, description, deadline_at, type_id, status_id, sprint_id, project_id, assignee_id)
VALUES ('Task 5', 'Description for Task 5', '2022-04-20 08:15:00+00', 2, 2, NULL, 2, 1);


-- project
INSERT INTO project (name) VALUES ('Project 1');
INSERT INTO project (name) VALUES ('Project 2');
INSERT INTO project (name) VALUES ('Project 3');
INSERT INTO project (name) VALUES ('Project 4');
INSERT INTO project (name) VALUES ('Project 5');

-- sprints
INSERT INTO sprints (name, start_at, end_at) VALUES ('Sprint 1', '2022-01-01 09:00:00', '2022-01-14 18:00:00');
INSERT INTO sprints (name, start_at, end_at)VALUES ('Sprint 2', '2022-02-01 09:00:00', '2022-02-14 18:00:00');
INSERT INTO sprints (name, start_at, end_at) VALUES ('Sprint 3', '2022-03-01 09:00:00', '2022-03-14 18:00:00');
INSERT INTO sprints (name, start_at, end_at) VALUES ('Sprint 4', '2022-04-01 09:00:00', '2022-04-14 18:00:00');
INSERT INTO sprints (name, start_at, end_at) VALUES ('Sprint 5', '2022-05-01 09:00:00', '2022-05-14 18:00:00');


-- lib_task_type
INSERT INTO lib_task_type (name) VALUES ('Epic');
INSERT INTO lib_task_type (name) VALUES ('Story');
INSERT INTO lib_task_type (name) VALUES ('Task');
INSERT INTO lib_task_type (name) VALUES ('Subtask');
INSERT INTO lib_task_type (name) VALUES ('Documentation');


-- lib_task_status
INSERT INTO lib_task_status (name) VALUES ('RED');
INSERT INTO lib_task_status (name) VALUES ('YELLOW');
INSERT INTO lib_task_status (name) VALUES ('GREEN');
INSERT INTO lib_task_status (name) VALUES ('VIOLET');

DROP TABLE lib_task_status


-- users
INSERT INTO users (name, phone, email)
VALUES ('User 1', '12345678901', 'user1@example.com');
INSERT INTO users (name, phone, email)
VALUES ('User 2', '23456789012', 'user2@example.com');
INSERT INTO users (name, phone, email)
VALUES ('User 3', '34567890123', 'user3@example.com');
INSERT INTO users (name, phone, email)
VALUES ('User 4', '45678901234', 'user4@example.com');
INSERT INTO users (name, phone, email)
VALUES ('User 5', '56789012345', 'user5@example.com');
