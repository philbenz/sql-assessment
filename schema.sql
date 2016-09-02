-- The grocery list should contain:
-- milk - 2 gallons
-- eggs - 1 dozen
-- butter - 12 sticks
-- flour - 1 pound
-- sour cream - 1 dollop
-- apples - 2 bushels
-- sugar - 2 pounds
-- oj - 3 gallons

DROP DATABASE IF EXISTS groceries;
CREATE DATABASE groceries;

\c groceries;

CREATE TABLE grocery_list (
  id serial PRIMARY KEY,
  item varchar(55) NOT NULL,
  quantity integer NOT NULL,
  unit_of_measure varchar(55) NOT NULL
);
