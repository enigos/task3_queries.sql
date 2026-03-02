SET search_path TO skillbox, public;

SELECT u.username AS user_name,
       m.manager_name
FROM users u
LEFT JOIN managers m ON u.manager_id = m.manager_id;

UPDATE tasks
SET task_name = 'Task 3 updated'
WHERE task_id = 3;

SELECT m.manager_name,
       COUNT(u.user_id) AS users_count
FROM managers m
LEFT JOIN users u ON u.manager_id = m.manager_id
GROUP BY m.manager_name;

SELECT t.task_name,
       author.username   AS author,
       assignee.username AS assigned_to
FROM tasks t
JOIN users author   ON t.author_id = author.user_id
LEFT JOIN users assignee ON t.assigned_id = assignee.user_id;

SELECT *
FROM tasks
WHERE assigned_id = 5;

SELECT *
FROM users
WHERE username ILIKE '%john%';