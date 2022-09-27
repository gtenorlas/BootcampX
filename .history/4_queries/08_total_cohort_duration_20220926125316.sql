SELECT
  cohorts.name AS cohort,
  sum(
    assistance_requests.completed_at - assistance_requests.started_at
  ) AS total_duration
FROM
  assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY
  cohorts.name
ORDER BY
  total_duration;

select
  AVG()
FROM
  (
    SELECT
      sum(
        assistance_requests.completed_at - assistance_requests.started_at
      ) AS total_duration
    FROM
      assistance_requests
      JOIN students ON assistance_requests.student_id = students.id
      JOIN cohorts ON students.cohort_id = cohorts.id
    GROUP BY
      cohorts.name
  ) AS sum_per_cohort;