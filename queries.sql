/*Queries that provide answers to the questions from all projects.*/

Select * from animals where name like '%mon';
Select name from animals where date_of_birth between '20160101' and '20190101';
Select name from animals where neutered = true and escape_attempts < 3;
SELECT date_of_birth as "Date of Birth" FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, weight_kg FROM animals WHERE weight_kg > 10 ORDER BY weight_kg DESC;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- Begin a transaction
BEGIN;

UPDATE animals SET species = 'unspecified';

-- Veryfying that change was made in the database
SELECT * FROM animals;

--Rollback the transaction
ROLLBACK;

--Verify that the transaction was successful
SELECT * FROM animals;

--Update the species colunm
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
SELECT * FROM animals;
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;

COMMIT;
SELECT * FROM animals;

--deleting all Records
BEGIN;
DELETE FROM animals;

--Rollback the transaction
ROLLBACK;

DELETE FROM animals WHERE date_of_birth > 'Jan 1, 2022';
SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SP1;

--update and commit
UPDATE
    animals
SET
    weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE
    animals
SET
    weight_kg = weight_kg * -1
WHERE
    weight_kg < 0;

COMMIT;

 SELECT COUNT(*) FROM animals;

 SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

 SELECT AVG(weight_kg) FROM animals;
--group by comparism
 SELECT
    COUNT(*)
FROM
    animals;

SELECT
    COUNT(*)
FROM
    animals
WHERE
    escape_attempts = 0;

SELECT
    AVG(weight_kg)
FROM
    animals;

SELECT
    MAX(escape_attempts),
    neutered
FROM
    animals
GROUP BY
    neutered;

SELECT
    MIN(weight_kg)
FROM
    animals;

SELECT
    MAX(weight_kg)
FROM
    animals;

--Average escape attempt

SELECT
    AVG(escape_attempts)
FROM
    animals
WHERE
    date_of_birth BETWEEN 'Jan 01,1990'
    AND 'Dec 31,2000';


    SELECT a.name 
FROM animals a
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Melody Pond';

SELECT a.name 
FROM animals a
JOIN species s ON a.species_id = s.id
WHERE s.name = 'Pokemon';

SELECT o.full_name, a.name
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id
GROUP BY o.full_name, a.name;

SELECT s.name, COUNT(a.id) AS animal_count
FROM animals a
JOIN species s ON a.species_id = s.id
GROUP BY s.name;

SELECT a.name 
FROM animals a
JOIN owners o ON a.owner_id = o.id
JOIN species s ON a.species_id = s.id
WHERE o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';
