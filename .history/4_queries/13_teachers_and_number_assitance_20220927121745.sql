/*
 We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.
 
 Instruction
 Perform the same query as before, but include the number of assistances as well.
 
 
 */
SELECT
  DISTINCT teachers.name AS teacher,
  cohorts.name AS cohort,
  COUNT(assistance_requests.*) AS total_assistances
FROM
  teachers
  JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
WHERE
  cohorts.name = 'JUL02'
GROUP BY
  teachers.name,
  cohorts.name
ORDER BY
  teacher;