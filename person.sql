DROP TABLE IF EXISTS person;

CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(60),
  person_age INTEGER,
  height_cm INTEGER,
  person_city VARCHAR(40),
  favorite_color VARCHAR(20)
);

INSERT INTO person 
    (person_name, person_age, height_cm, person_city, favorite_color)
VALUES 
    ('James Top', '32', '184', 'New York', 'pink'),
    ('Alan Smith', '45', '193', 'Chicago', 'black'),
    ('Jane Jones', '67', '156', 'Atlanta', 'yellow'),
    ('Sami Simpson', '81', '149', 'Riverside', 'red'),
    ('Mary Young', '15', '152', 'Bismark', 'blue');

SELECT * FROM person ORDER BY height_cm DESC;

SELECT * FROM person ORDER BY height_cm ASC;

SELECT * FROM person ORDER BY person_age DESC;

SELECT * FROM person WHERE person_age > 20;

SELECT * FROM person WHERE person_age = 18;

SELECT * FROM person WHERE person_age < 20 AND person_age > 30;

SELECT * FROM person WHERE person_age != 27;

SELECT * FROM person WHERE NOT favorite_color = 'red';

SELECT * FROM person WHERE favorite_color <> 'red' OR favorite_color <> 'blue'; -- Not working

SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person WHERE favorite_color IN ('yello', 'purple');