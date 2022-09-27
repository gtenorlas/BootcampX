SELECT
  assignments.id AS id,
  assignments.name AS name,
  assignments.day AS day,
  assignments.chapter AS chapter,
  COUNT(assistance_requests.*) AS total_requests
FROM
  assistance_requests
  JOIN assignments ON assignment_id = assignments.id
GROUP BY
  assignments.id
ORDER by
  total_requests DESC;