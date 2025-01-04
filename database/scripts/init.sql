CREATE TABLE parties (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  abbrev VARCHAR(10) NOT NULL,
  description VARCHAR(200)
);

CREATE TABLE politicians (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  party_id INT REFERENCES parties(id),
  bio VARCHAR(200)
);

INSERT INTO parties (name, abbrev, description) VALUES ('National Party', 'NP', 'Left oriented');
INSERT INTO parties (name, abbrev, description) VALUES ('Liberal Party', 'LP', 'Right oriented');
INSERT INTO parties (name, abbrev, description) VALUES ('Progress Party', 'PP', 'Center oriented');

INSERT INTO politicians (name, party_id, bio) VALUES ('Ion Ionel', 1, 'Ion Ionel Bio');
INSERT INTO politicians (name, party_id, bio) VALUES ('Andrei Alin', 2, 'Sample Bio');
INSERT INTO politicians (name, party_id, bio) VALUES ('Victor Viorel', 3, 'VV Bio');
INSERT INTO politicians (name, party_id, bio) VALUES ('Denis Daniel', 3, 'DD Bio');
INSERT INTO politicians (name, party_id, bio) VALUES ('Firicel Faur', 2, 'FF Bio');
INSERT INTO politicians (name, party_id, bio) VALUES ('Irinel Ionel', 1, 'Irinel Ionel Bio');
