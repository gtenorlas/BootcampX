CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);

SELECT
teachers.name AS teacher,
students.name AS student,
assignments.name AS assignment,
(assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id 
JOIN students ON student_id = students.Id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration
LIMIT 10;

SELECT
AVG (assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM assistance_requests