SELECT
  COUNT(assistance_requests.*) as total_assistance,
  students.name AS name
FROM
  assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
WHERE
  students.name = 'Elliot Dickinson'
GROUP BY
  students.name;