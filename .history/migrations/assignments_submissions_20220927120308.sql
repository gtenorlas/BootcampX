CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);

SELECT
  assignments.day AS day,
  COUNT(assignments.day) AS number_of_assignments,
  SUM(assignment_submissions.duration) AS duration
FROM
  assignment_submissions
  JOIN assignments On assignment_submissions.assignment_id = assignments.id
GROUP BY
  assignments.day
ORDER by
  day;