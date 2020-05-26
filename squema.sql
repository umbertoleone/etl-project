-- Create Two Tables
CREATE TABLE unemployment (
  id INT PRIMARY KEY,
  Year INT,
  Month TEXT,
  State TEXT,
  County TEXT,
  Rate Decimal
);

CREATE TABLE election (
  id INT PRIMARY KEY,
  County TEXT,
  State TEXT,
  Lead TEXT
);

CREATE TABLE min_wage (
  id INT PRIMARY KEY,
  Year INT,
  State TEXT,
  Minimum_Wage Decimal
);

