-- Script de criação das tabelas --

CREATE TABLE habitats (
    habitat_id SERIAL PRIMARY KEY,
    habitat_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE types_ (
    type_id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pokemons (
    pokemon_id INT PRIMARY KEY,
    pokemon_name VARCHAR(50) NOT NULL,
    weight INT,
    height INT,
    picture_url VARCHAR(255),
    description TEXT,
    habitat_id INT REFERENCES habitats(habitat_id)
);

CREATE TABLE pokemon_types (
    pokemon_id INT REFERENCES pokemons(pokemon_id),
    type_id INT REFERENCES types_(type_id),
    PRIMARY KEY (pokemon_id, type_id)
);

CREATE TABLE evolutions (
    pokemon_id INT REFERENCES pokemons(pokemon_id),
    evolved_to_id INT REFERENCES pokemons(pokemon_id),
    name_evolution VARCHAR(50),
    PRIMARY KEY (pokemon_id, evolved_to_id)
);

CREATE TABLE abilities (
    ability_id SERIAL PRIMARY KEY,
    ability_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pokemon_abilities (
    pokemon_id INT REFERENCES pokemons(pokemon_id),
    ability_id INT REFERENCES abilities(ability_id),
    PRIMARY KEY (pokemon_id, ability_id)
);