DROP DATABASE IF EXISTS spotify_festival;
CREATE DATABASE spotify_festival;

USE spotify_festival;

CREATE TABLE stage(
    name VARCHAR(255) NOT NULL,
    artists CHAR(22) NOT NULL,
    vibe VARCHAR(255) NOT NULL,
    PRIMARY KEY(name)
);
CREATE TABLE artist(
    id CHAR(22) NOT NULL,
    name VARCHAR(255) NOT NULL,
    popularity INT NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE track(
    id CHAR(22) NOT NULL,
    artists CHAR(22) NOT NULL,
    popularity INT NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE festival(
    name VARCHAR(255) NOT NULL,
    stages VARCHAR(255) NOT NULL,
    artists CHAR(22) NOT NULL,
    countries CHAR(2) NOT NULL,
    PRIMARY KEY(name)
);
CREATE TABLE country(
    id CHAR(2) NOT NULL,
    playlists CHAR(22) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE playlists(
    id CHAR(22) NOT NULL,
    name VARCHAR(255) NOT NULL,
    vibe VARCHAR(255) NOT NULL,
    tracks CHAR(22) NOT NULL,
    popularity INT NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE
    playlists ADD UNIQUE playlists_vibe_unique(vibe);
ALTER TABLE
    stage ADD CONSTRAINT stage_artists_foreign FOREIGN KEY(artists) REFERENCES artist(id);
ALTER TABLE
    track ADD CONSTRAINT track_artists_foreign FOREIGN KEY(artists) REFERENCES artist(id);
ALTER TABLE
    festival ADD CONSTRAINT festival_countries_foreign FOREIGN KEY(countries) REFERENCES country(id);
ALTER TABLE
    festival ADD CONSTRAINT festival_stages_foreign FOREIGN KEY(stages) REFERENCES stage(name);
ALTER TABLE
    festival ADD CONSTRAINT festival_artists_foreign FOREIGN KEY(artists) REFERENCES artist(id);
ALTER TABLE
    stage ADD CONSTRAINT stage_vibe_foreign FOREIGN KEY(vibe) REFERENCES playlists(vibe);
ALTER TABLE
    playlists ADD CONSTRAINT playlists_tracks_foreign FOREIGN KEY(tracks) REFERENCES track(id);
ALTER TABLE
    country ADD CONSTRAINT country_playlists_foreign FOREIGN KEY(playlists) REFERENCES playlists(id);