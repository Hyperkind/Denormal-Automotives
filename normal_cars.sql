\c denormal_cars;

-- Drops table Make if exists
DROP TABLE IF EXISTS make CASCADE;

-- Creates table Make
CREATE TABLE make(
  id serial PRIMARY KEY NOT NULL,
  make_code character varying(125) NOT NULL,
  make_title character varying(125) NOT NULL
);

-- Drops table model if exists
DROP TABLE IF EXISTS model CASCADE;

-- Creates table model
CREATE TABLE model(
  id serial PRIMARY KEY NOT NULL,
  model_code character varying(125) NOT NULL,
  model_title character varying(125) NOT NULL,
  year integer NOT NULL,
  make_id integer REFERENCES make(id)
);

-- Drops table cars if exists
DROP TABLE IF EXISTS normal_cars CASCADE;

-- Creates table normal_cars
CREATE TABLE normal_cars(
  id serial PRIMARY KEY NOT NULL,
  make character varying(125) default NULL,
  model character varying(125) default NULL,
  make_id integer REFERENCES make(id),
  model_id integer REFERENCES model(id)
);

-- Inserts into make table
INSERT INTO make (make_code, make_title)
  SELECT DISTINCT make_code, make_title
  FROM car_models;

-- Inserts into model table
INSERT INTO model (model_code, model_title, year, make_id)
  SELECT model_code, model_title, year, make.id
  FROM car_models
    INNER JOIN make ON (make.make_code = car_models.make_code);

-- Inserts into normal_cars
INSERT INTO normal_cars (make, model)
  SELECT make.id, model.id
  FROM model
    INNER JOIN make ON (make.id = model.make_id);

-- 7
SELECT *
  FROM make;

