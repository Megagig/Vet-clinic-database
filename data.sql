/* Populate database with sample data. */

INSERT INTO animals values(default,'Agumon', '20200203', 0, true, 10.23 ),
 (default,'Gabumon', '20181115', 2, true, 8 ),
 (default,'Pikachu', '20210107', 1, false, 15.04 ),
 (default,'Devimon', '20170512', 5, true, 11 );

 INSERT INTO
    animals (
        name,
        date_of_birth,
        weight_kg,
        neutered,
        escape_attempts
    )
VALUES
    ('Charmander', 'Feb 8, 2020', -11, FALSE, 0),
    ('Plantmon', 'Nov 15, 2021', -5.7, TRUE, 2),
    ('Squirtle', 'Apr 2,1993', -12.13, FALSE, 3),
    ('Angemon', 'Jun 12 2005', -45, TRUE, 1),
    ('Boarmon', 'Jun 7, 2005', 20.4, TRUE, 7),
    ('Blossom', 'Oct 13, 1998', 17, TRUE, 3),
    ('Ditto', 'May 14, 2022', 22, TRUE, 4);