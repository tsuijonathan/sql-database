DROP DATABASE IF EXISTS spotify_festival;
CREATE DATABASE spotify_festival;

USE spotify_festival;

CREATE TABLE artist(
    id CHAR(22) NOT NULL,
    name VARCHAR(255) NOT NULL,
    popularity INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE festival(
    country VARCHAR(255) NOT NULL,
    artists CHAR(22) NOT NULL,
    PRIMARY KEY(country)
);
CREATE TABLE country(
    top_artists CHAR(22) NOT NULL,
    id CHAR(2) NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE
    festival ADD CONSTRAINT festival_country_foreign FOREIGN KEY(country) REFERENCES country(id);
ALTER TABLE
    festival ADD CONSTRAINT festival_artists_foreign FOREIGN KEY(artists) REFERENCES artist(id);
ALTER TABLE
    country ADD CONSTRAINT country_top_artists_foreign FOREIGN KEY(top_artists) REFERENCES artist(id);