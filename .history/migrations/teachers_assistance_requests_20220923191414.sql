CREATE TABLE teachers(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT,
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN
);

CREATE TABLE assistance_requests(
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id),
  student_id INTEGER REFERENCES students(id),
  teacher_id INTEGER REFERENCES teachers(id),
  created_at DATE,
  started_at DATE,
  completed_at DATE,
  student_feedback
);