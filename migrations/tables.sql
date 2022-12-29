-- PostgreSQL instruction to create then connect to database on first use:
-- CREATE DATABASE football;
-- \c football

DROP TABLE IF EXISTS positions CASCADE;
DROP TABLE IF EXISTS players CASCADE;


CREATE TABLE players (
  id SERIAL PRIMARY KEY NOT NULL,
  initial VARCHAR(255),
  name VARCHAR(255) NOT NULL,
  club VARCHAR(255) NOT NULL,
  value INTEGER NOT NULL,
  selected_position VARCHAR(255) DEFAULT NULL
);

CREATE TABLE positions (
  player_id INTEGER NOT NULL,
  position VARCHAR(255) NOT NULL,
  PRIMARY KEY(player_id, position)
);