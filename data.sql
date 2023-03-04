/* Populate database with sample data. */

/* Populate database with sample data. */

/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Agumon', '2020-02-03', 0,true, 10.23), ('Gabumon', '2018-11-15', 2, true, 8), ('Pikachu', '2021-01-07', 1, false, 15.04),('Devimon', '2017-05-12', 5, true, 11), ('Charmander', '2020-02-08', 0,false, -11), ('Plantmon', '2021-11-15', 2, true, -5.7), ('Squirtle', '1993-04-02', 3, false, -12.13),('Angemon', '2005-06-12', 1, true, -45), ('Boarmon', '2005-06-07', 7, true, 20.4), ('Blossom', '1998-10-13', 3, true, 17), ('Ditto', '2022-05-14', 4, true, 22);

INSERT INTO owners(full_name, age) VALUES('Sam Smith', 34), ('Jeniffer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

INSERT INTO species(name) VALUES('Pokemon'), ('Digimon');

UPDATE animals SET species_id=1 WHERE species_id=NULL ;
UPDATE animals SET species_id=2 WHERE name LIKE '%mon';

UPDATE animals SET owner_id=1 WHERE name='Agumon';
UPDATE animals SET owner_id=2 WHERE name  IN ('Pikachu','Gabumon');
UPDATE animals SET owner_id=3 WHERE name IN ('Devimon','Plantmon');
UPDATE animals SET owner_id=4 WHERE name IN ('Charmander','Squirtle','Blossom');
UPDATE animals SET owner_id=5 WHERE name IN ('Angemon','Boarmon');

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, 'April 23, 2000'), ('Maisy Smith', 26, 'January 17, 2019'), ('Stephanie Mendez', 64, 'May 4, 1981'), ('Jack Harkness', 38, 'June 8, 2008');

INSERT INTO specializations (vet_id, species_id) VALUES (1, 1), (3, 1), (3, 2), (4, 2);

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), 'May 24, 2020'), ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 'July 22, 2020') ,((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), 'February 2, 2021'), ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'January 5, 2020'), ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'March 8, 2020'), ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'May 14, 2020'), ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 'May 4, 2021'), ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), 'February 24, 2021'), ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'December 21, 2019'), ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), 'August 10, 2020'), ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'April 7, 2021'), ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 'September 29, 2019'), ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), 'October 3, 2020'), ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), 'November 4, 2020'), ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'January 24, 2019'), ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'May 15, 2019'), ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'February 27, 2020'), ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), 'August 3, 2020'), ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), 'May 24, 2020'), ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'William Tatcher'), 'January 11, 2021');

