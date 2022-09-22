CREATE TABLE cohorts(
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(250),
  start_date DATE,
  end_date DATE
);

CREATE TABLE students(
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(250),
  EMAIL
);