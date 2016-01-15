\c denormal_cars;

-- 5 Query to list all make_title values in the car_models table
-- without any duplicate rows (71)
-- SELECT DISTINCT make_title
--   FROM car_models;

-- 6 Query to list all model_title values where the make_code is 'VOLKS'
-- without any duplicate rows (27)
SELECT DISTINCT model_title
  FROM car_models
WHERE make_code = 'VOLKS';