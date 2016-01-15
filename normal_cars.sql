\c denormal_cars;

-- Drops table Make if exists
DROP TABLE IF EXISTS make;

-- Creates table Make
CREATE TABLE make(
  id serial PRIMARY KEY NOT NULL,
  make_code character varying(20) default NULL,
  make_title character varying(20) default NULL
);

-- Drops table model if exists
DROP TABLE IF EXISTS model;

-- Creates table model
CREATE TABLE model(
  id serial PRIMARY KEY NOT NULL,
  model_code character varying(50) default NULL,
  model_title character varying(50) default NULL
);

-- Drops table year if exists
DROP TABLE IF EXISTS year;

-- Creates table year
CREATE TABLE year(
  id serial PRIMARY KEY NOT NULL,
  year character varying(4) default NULL
);

-- Drops table cars if exists
-- DROP TABLE IF EXISTS cars;

-- Creates table cars
-- CREATE TABLE cars(
--   id serial PRIMARY KEY NOT NULL,
--   make character varying(40) default NULL,
--   model character varying(40) default NULL,
--   year character varying(40) default NULL,
--   make_id integer REFERENCES make(id),
--   model_id integer REFERENCES model(id),
--   year_id integer REFERENCES year(id)
-- );

-- Inserts into make table
INSERT INTO make (make_code, make_title)
  SELECT DISTINCT make_code, make_title
  FROM car_models;

-- Inserts into model table
INSERT INTO model (model_code, model_title)
  SELECT DISTINCT model_code, model_title
  FROM car_models;

-- Inserts years into year table
INSERT INTO year
  SELECT DISTINCT year
  FROM car_models;
