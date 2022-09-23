CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);


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
  assignments_id IN
);