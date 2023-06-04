SELECT count(assistance_requests.*) AS total_requests, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
