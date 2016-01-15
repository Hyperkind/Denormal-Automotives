\c denormal_cars;

-- 5 Query to list all make_title values in the car_models table
-- without any duplicate rows (71)
-- SELECT DISTINCT make_title
--   FROM car_models;

-- 6 Query to list all model_title values where the make_code is 'VOLKS'
-- without any duplicate rows (27)
-- SELECT DISTINCT model_title
--   FROM car_models
-- WHERE make_code = 'VOLKS';

-- 7 Query to list all make_code, model_code, model_title, year from car_models
-- where make_code is 'LAM' (136)
-- SELECT make_code,
--   model_code,
--   model_title,
--   year
--   FROM car_models
-- WHERE make_code = 'LAM';

-- 8 Query to list all fields from all car_models in years between
-- 2010 and 2015 (7884)
SELECT *
  FROM car_models
WHERE year BETWEEN 2010 AND 2015;