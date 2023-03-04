/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT * from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * from animals WHERE neutered AND escape_attempts <3;
SELECT * from animals WHERE name IN ('Agumon', 'Pikachu');
SELECT (name, escape_attempts) from animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE name NOT IN ('Gabumon');
SELECT * from animals WHERE neutered;
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species='unspecified';
SELECT * from animals;
ROLLBACK;

BEGIN;
UPDATE animals SET species='digimon' WHERE name LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE date_of_birth>'2022-01-01';
SAVEPOINT dateofbirth;
UPDATE animals SET weight_kg=-1*weight_kg;
ROLLBACK TO dateofbirth;
UPDATE animals SET weight_kg=-1*weight_kg WHERE weight_kg<0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts=0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, count(neutered) as result FROM animals GROUP BY neutered ORDER BY result DESC LIMIT 1;
SELECT species, MAX(weight_kg) AS max_weight, MIN(weight_kg) AS min_weight FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

SELECT animals.name, owners.full_name FROM animals JOIN owners ON animals.owner_id=owners.id WHERE full_name='Melody Pond';
SELECT animals.name AS animal_name, species.name AS species_type FROM animals JOIN species ON animals.species_id=species.id WHERE species.name='Pokemon';
SELECT full_name, animals.name FROM owners LEFT JOIN animals ON animals.owner_id=owners.id;
SELECT count(animals) FROM animals JOIN species ON animals.species_id=species.id;
SELECT * FROM animals LEFT JOIN owners ON animals.owners_id = owners.owners_id LEFT JOIN species ON animals.species_id = species.species_id WHERE owners.name = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT animals.* FROM animals LEFT JOIN  owners ON animals.owners_id = owners.owners_id WHERE owners.name = 'Dean Winchester' AND escape_attempts = 0;
SELECT owners.full_name , COUNT(animals.name) AS total_animals FROM owners JOIN animals ON animals.owner_id=owners.id GROUP BY owners.full_name ORDER BY total_animals DESC LIMIT 1;
