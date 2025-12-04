-- PLAYERS
INSERT INTO players VALUES ('NAuguste', 'cupcake123', 52000);
INSERT INTO players VALUES ('MIbe', 'chocolate572', 27000);
INSERT INTO players VALUES ('DDennis', 'imhim', 23102);
INSERT INTO players VALUES ('JSmith', 'wawasux', 800);
INSERT INTO players VALUES ('THill', 'owimhurt', 16000);
INSERT INTO players VALUES ('MWheeler', 'strangerthings', 7582);
INSERT INTO players VALUES ('Ghost', 'power', 1000000);
INSERT INTO players VALUES ('JDart' , 'thisismypassword', 250);

--PLANETS
INSERT INTO planets VALUES ('Mercury', 'Terrestrial', 'Small rocky planet.', 3, 0.4);
INSERT INTO planets VALUES ('Venus', 'Terrestrial', 'Hot toxic planet.', 2, 0.7);
INSERT INTO planets VALUES ('Earth', 'Terrestrial', 'Home planet.', 5, 0);
INSERT INTO planets VALUES ('Mars', 'Terrestrial', 'Cold red planet.', 4, 1.5);
INSERT INTO planets VALUES ('Jupiter', 'Gas Giant', 'Largest planet.', 5, 5.2);
INSERT INTO planets VALUES ('Saturn', 'Gas Giant', 'Planet with rings.', 4, 9.5);
INSERT INTO planets VALUES ('Uranus', 'Ice Giant', 'Tilted ice planet.', 3, 19.8);
INSERT INTO planets VALUES ('Neptune', 'Ice Giant', 'Windy blue planet.', 4, 30.1);

-- ROCKETS
INSERT INTO rockets 
VALUES ('HeatShield Rocket', 'Built for hot toxic planets.', 4, 60, 120, 15, 1, 1, 1);

INSERT INTO rockets 
VALUES ('IceBreaker Rocket', 'Designed for frozen ice worlds.', 5, 80, 150, 20, 2, 1, 1);

INSERT INTO rockets 
VALUES ('StormRunner Rocket', 'Made for gas giant storm missions.', 4, 70, 200, 25, 2, 2, 1);

INSERT INTO rockets 
VALUES ('AquaDrift Rocket', 'Created for deep-water ocean planets.', 5, 90, 180, 18, 1, 2, 1);

-- ASTRONAUTS
INSERT INTO astronauts VALUES ('Mike Ibe', 'He loves what he does', 'Researcher', 5);
INSERT INTO astronauts VALUES ('Nadden Auguste', 'Best software engineer ever!', 'Engineer', 5);
INSERT INTO astronauts VALUES ('Terell Jones', 'He can fly a rocket. Not well though.', 'Rocket', 2);

-- OWNED_ROCKETS
INSERT INTO owned_rockets VALUES (1, 'StormRunner Rocket', 50, 'NAuguste');
INSERT INTO owned_rockets VALUES (2, 'AquaDrift Rocket', 40, 'NAuguste');
INSERT INTO owned_rockets VALUES (3, 'IceBreaker Rocket', 70, 'MIbe');

-- EMPLOYED_ASTRONAUTS
INSERT INTO employed_astronauts VALUES (1, 'Nadden Auguste', 1, 'NAuguste');
INSERT INTO employed_astronauts VALUES (2, 'Nadden Auguste', NULL, 'MIbe');
INSERT INTO employed_astronauts VALUES (5, 'Nadden Auguste', NULL, 'MIbe');
INSERT INTO employed_astronauts VALUES (6, 'Nadden Auguste', NULL, 'JSmith');
INSERT INTO employed_astronauts VALUES (3, 'Mike Ibe', 1, 'NAuguste');
INSERT INTO employed_astronauts VALUES (7, 'Mike Ibe', NULL, 'MIbe');
INSERT INTO employed_astronauts VALUES (8, 'Mike Ibe', NULL, 'MIbe');
INSERT INTO employed_astronauts VALUES (9, 'Mike Ibe', NULL, 'MIbe');
INSERT INTO employed_astronauts VALUES (4, 'Terell Jones', 1, 'NAuguste');
INSERT INTO employed_astronauts VALUES (10, 'Terell Jones', 2, 'NAuguste');
INSERT INTO employed_astronauts VALUES (11, 'Terell Jones', NULL, 'JSmith');
INSERT INTO employed_astronauts VALUES (12, 'Terell Jones', NULL, 'JSmith');
INSERT INTO employed_astronauts VALUES (13, 'Terell Jones', NULL, 'MWheeler');
INSERT INTO employed_astronauts VALUES (14, 'Terell Jones', NULL, 'MWheeler');

-- TRIPS
INSERT INTO trips VALUES (1, 1, 'Jupiter', 200, .6, DATE '2030-01-15');
INSERT INTO trips VALUES (2, 2, 'Mercury', 120, .9, DATE '2025-06-15');
