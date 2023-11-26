CREATE TABLE galaxy
(
galaxy_id SERIAL PRIMARY KEY,
name VARCHAR UNIQUE NOT NULL,
galaxy_disk BOOLEAN NOT NULL,
galaxy_distance_center NUMERIC NOT NULL,
galaxy_radius INT NOT NULL
);
CREATE TABLE star
(
star_id SERIAL PRIMARY KEY,
galaxy_id INT NOT NULL,
name VARCHAR UNIQUE NOT NULL,
star_brightness INT NOT NULL,
star_mass NUMERIC NOT NULL,
star_radius INT NOT NULL,
star_temperature INT NOT NULL,
FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id)
);
CREATE TABLE planet
(
planet_id SERIAL PRIMARY KEY,
star_id INT NOT NULL,
name VARCHAR UNIQUE NOT NULL,
planet_size INT NOT NULL,
planet_oxygen BOOLEAN NOT NULL,
planet_xxygen_type TEXT NOT NULL,
FOREIGN KEY (star_id) REFERENCES star (star_id)
);
CREATE TABLE moon
(
moon_id SERIAL PRIMARY KEY,
planet_id INT NOT NULL,
name VARCHAR UNIQUE NOT NULL,
moon_size INT NOT NULL,
moon_distance_planet INT NOT NULL,
FOREIGN KEY (planet_id) REFERENCES planet (planet_id)
);
CREATE TABLE five
(
five_id SERIAL PRIMARY KEY,
name VARCHAR UNIQUE NOT NULL,
five_brightness INT NOT NULL,
five_mass NUMERIC NOT NULL,
five_radius INT NOT NULL,
five_temperature INT NOT NULL
);
INSERT INTO galaxy (name, galaxy_disk, galaxy_distance_center, galaxy_radius)
VALUES
('A1', true, 12.7, 12),
('A2', true, 12.7, 12),
('A3', true, 12.7, 12),
('A4', true, 12.7, 12),
('A5', true, 12.7, 12),
('A6', true, 12.7, 12);
INSERT INTO star (galaxy_id, name, star_brightness, star_mass, star_radius, star_temperature)
VALUES
(1, 'A1', 12, 12.7, 12, 12),
(2, 'A2', 12, 12.7, 12, 12),
(3, 'A3', 12, 12.7, 12, 12),
(4, 'A4', 12, 12.7, 12, 12),
(5, 'A5', 12, 12.7, 12, 12),
(6, 'A6', 12, 12.7, 12, 12);
INSERT INTO planet (star_id, name, planet_size, planet_oxygen, planet_xxygen_type)
VALUES
(1, 'A1', 12, true, 'test'),
(1, 'A2', 12, true, 'test'),
(2, 'A3', 12, true, 'test'),
(2, 'A4', 12, true, 'test'),
(3, 'A5', 12, true, 'test'),
(3, 'A6', 12, true, 'test'),
(4, 'A7', 12, true, 'test'),
(4, 'A8', 12, true, 'test'),
(5, 'A9', 12, true, 'test'),
(5, 'A10', 12, true, 'test'),
(6, 'A11', 12, true, 'test'),
(6, 'A12', 12, true, 'test'),
(1, 'A13', 12, true, 'test'),
(1, 'A14', 12, true, 'test'),
(1, 'A15', 12, true, 'test'),
(1, 'A16', 12, true, 'test');
INSERT INTO moon (planet_id, name, moon_size, moon_distance_planet)
VALUES
(1, 'A1', 12, 12),
(2, 'A2', 12, 12),
(3, 'A3', 12, 12),
(4, 'A4', 12, 12),
(5, 'A5', 12, 12),
(6, 'A6', 12, 12),
(7, 'A7', 12, 12),
(8, 'A8', 12, 12),
(9, 'A9', 12, 12),
(10, 'A10', 12, 12),
(11, 'A11', 12, 12),
(12, 'A12', 12, 12),
(13, 'A13', 12, 12),
(14, 'A14', 12, 12),
(15, 'A15', 12, 12),
(16, 'A16', 12, 12),
(1, 'A17', 12, 12),
(1, 'A18', 12, 12),
(1, 'A19', 12, 12),
(1, 'A20', 12, 12),
(1, 'A21', 12, 12);
INSERT INTO five (name, five_brightness, five_mass, five_radius, five_temperature)
VALUES
('A1', 12, 12.7, 12, 12),
('A2', 12, 12.7, 12, 12),
('A3', 12, 12.7, 12, 12),
('A4', 12, 12.7, 12, 12),
('A5', 12, 12.7, 12, 12),
('A6', 12, 12.7, 12, 12),
('A7', 12, 12.7, 12, 12),
('A8', 12, 12.7, 12, 12),
('A9', 12, 12.7, 12, 12);
