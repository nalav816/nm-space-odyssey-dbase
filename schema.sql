DROP TABLE planets;
DROP TABLE rockets;
DROP TABLE astronauts;
DROP TABLE employed_astronauts;
DROP TABLE trips;
DROP TABLE owned_rockets;
DROP TABLE players;

CREATE TABLE players (
	username VARCHAR(20) PRIMARY KEY,
	password VARCHAR(100),
	net_worth NUMBER
);

CREATE TABLE planets (
    name VARCHAR (100) PRIMARY KEY,
    type VARCHAR(50),
    description CLOB,
    rating INT CHECK (rating BETWEEN 1 and 5),
    distance_to_home_planet NUMBER
);

CREATE TABLE rockets (
	name VARCHAR(100) PRIMARY KEY,
	description CLOB,
	rating INT CHECK (rating BETWEEN 1 and 5),
	price NUMBER,
	fuel_capacity NUMBER,
	fuel_to_fly NUMBER,
	engineer_capacity NUMBER,
	researcher_capacity NUMBER,
	pilot_capacity NUMBER DEFAULT 1
);

CREATE TABLE astronauts (
    name VARCHAR(100) PRIMARY KEY,
    description CLOB,
    job VARCHAR(100), 
    rating NUMBER CHECK (rating BETWEEN 1 and 5)
);

CREATE TABLE owned_rockets (
	id PRIMARY KEY,
	name VARCHAR(100),
	fuel_amount NUMBER,
    owner VARCHAR(20),

    FOREIGN KEY (owner) REFERENCES players(username),
	FOREIGN KEY (name) REFERENCES rockets(name)
);

CREATE TABLE employed_astronauts (
	id PRIMARY KEY,
	name VARCHAR(100),
	boarded_rocket NUMBER,
    employer VARCHAR(20),

    FOREIGN KEY (employer) REFERENCES players(username),
	FOREIGN KEY (name) REFERENCES astronauts(name),
	FOREIGN KEY (boarded_rocket) REFERENCES owned_rockets(id)
);

CREATE TABLE trips (
	id PRIMARY KEY,
    rocket NUMBER,
    planet VARCHAR(100),
    payout NUMBER,
    completion_chance NUMBER CHECK (completion_chance BETWEEN  0 AND 1),
    completion_time DATE,

    FOREIGN KEY (rocket) REFERENCES owned_rockets(id),
    FOREIGN KEY (planet) REFERENCES planets(name)
);
