DROP DATABASE IF EXISTS soccer_league;
CREATE DATABASE soccer_league;
\c soccer_league;

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name TEXT,
    start_date Date,
    end_date Date,
    rank INTEGER
);

INSERT INTO teams( id, name, start_date, end_date, rank)
VALUES(1, 'Liverpool', '2020-05-24 04:00', '2020-09-26 06:00', 2); 

CREATE TABLE referees(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE dates(
    id SERIAL PRIMARY KEY,
    time TIMESTAMP,
    venue TEXT
);

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    date_id INTEGER REFERENCES dates(id),
    referee_id INTEGER REFERENCES referees(id),
    first_team_id INTEGER REFERENCES teams(id),
    second_team_id INTEGER REFERENCES teams(id)
);

  -- match_id INTEGER REFERENCES matches(id)
CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    goals_scored INTEGER,
    match_id INTEGER REFERENCES matches(id)
);

-- INSERT INTO goals(id, goals, match_id)
-- VALUES(1, 3, 1);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name TEXT,
    team_id INTEGER REFERENCES teams(id)
);

-- INSERT INTO players(id, name, team_id)
-- VALUES(1, 'Mane', 1);



-- INSERT INTO referees(id, name)
-- VALUES(1, 'Michael');




