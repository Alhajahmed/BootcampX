SELECT assignments.id, day, chapter, name, count(assistance_requests.*) AS total_requests
FROM assignments
LEFT JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;