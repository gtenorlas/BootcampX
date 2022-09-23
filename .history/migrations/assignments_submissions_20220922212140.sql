CREATE TABLE assignments(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT,
  content TEXT,
  day TEXT,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions(
  id SERIAL PRIMARY KEY NOT NULL,
  duration INTEGER;
  submission_date DATE,
  assignments_id INTEGER REFERENCES assignments(id),
  students_id INTEGER REFERENCES students(id)
);