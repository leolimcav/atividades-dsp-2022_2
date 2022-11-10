BEGIN;
  INSERT INTO movies(title, release_year) VALUES ('Guardians of the Galaxy', 2014)
  ,('Prometheus', 2012)
  ,('Split', 2016)
  ,('Sing', 2016)
  ,('Suicide Squad', 2016)
  ,('The Great Wall', 2016)
  ,('La La Land', 2016)
  ,('Mindhorn', 2016)
  ,('The Lost City of Z', 2016)
  ,('Passengers', 2016)
  ,('Fantastic Beasts and Where to Find Them', 2016)
  ,('Hidden Figures', 2016)
  ,('Rogue One', 2016)
  ,('Moana', 2016)
  ,('Colossal', 2016)
  ,('The Secret Life of Pets', 2016)
  ,('Hacksaw Ridge', 2016)
  ,('Jason Bourne', 2016)
  ,('Lion', 2016)
  ,('Arrival', 2016)
  ,('Gold', 2016)
  ,('Manchester by the Sea', 2016)
  ,('Hounds of Love', 2016)
  ,('Trolls', 2016)
  ,('Independence Day: Resurgence', 2016)
  ,('Paris pieds nus', 2016)
  ,('Bahubali: The Beginning', 2015)
  ,('Dead Awake', 2016)
  ,('Bad Moms', 2016)
  ,('Assassins Creed', 2016);
  
  SAVEPOINT svpt;

  INSERT INTO actors(name, birth_date) VALUES 
  ('Chris Pratt', '06-21-1979'),
  ('Vin Diesel', '07-18-1967'),
  ('Bradley Cooper', '01-05-1975'),
  ('Zoe Saldana', '06-19-1978'),
  ('Noomi Rapace', '12-28-1979'),
  ('Michael Fassbender', '04-02-1977'),
  ('Charlize Theron', '08-07-1975'),
  ('Will Smith', '09-25-1968'),
  ('Jared Leto', '12-26-1971'),
  ('Margot Robbie', '07-02-1990'),
  ('Viola Davis', '08-11-1965');

  SAVEPOINT svpt;

  INSERT INTO movie_actor(actor_id, movie_id) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 3),
  (9, 3),
  (10, 3),
  (11, 3);

  SAVEPOINT svpt;
COMMIT;