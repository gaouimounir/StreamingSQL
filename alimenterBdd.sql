-- Userr
INSERT INTO Userr (email, password, creation_date_user, modification_date_user)
VALUES 
  ('user1@example.com', 'password1', '2023-03-01', '2023-03-01'),
  ('user2@example.com', 'password2', '2023-03-02', '2023-03-02'),
  ('user3@example.com', 'password3', '2023-03-03', '2023-03-03'),
  ('user4@example.com', 'password4', '2023-03-04', '2023-03-04'),
  ('user5@example.com', 'password5', '2023-03-05', '2023-03-05');

-- Actor
INSERT INTO Actor (firstname_actor, lastname_actor, birthdate_actor, creation_date_actor, modification_date_actor)
VALUES
  ('Marlon', 'Brando', '1924-04-03', '2023-03-01', '2023-03-01'),
  ('Robert', 'De Niro', '1943-08-17', '2023-03-02', '2023-03-02'),
  ('Al', 'Pacino', '1940-04-25', '2023-03-03', '2023-03-03'),
  ('Keanu', 'Reeves', '1964-09-02', '2023-03-04', '2023-03-04');

-- Director
INSERT INTO Director (fistname_director, lastname_director, creation_date_director, modification_date_director)
VALUES
  ('Francis', 'Ford Coppola', '2023-03-01', '2023-03-01'),
  ('Martin', 'Scorsese', '2023-03-02', '2023-03-02'),
  ('Brian', 'De Palma', '2023-03-03', '2023-03-03'),
  ('Lana', 'Wachowski', '2023-03-04', '2023-03-04'),
  ('Michael', 'Mann', '2023-03-05', '2023-03-05');

-- Movie
INSERT INTO Movie (title, duration, release_year, creation_date_movie, modification_date_movie, Id_director)
VALUES
  ('Le Parrain', 175, '1972-03-24', '2023-03-01', '2023-03-01', 1),
  ('Les Affranchis', 146, '1990-09-09', '2023-03-02', '2023-03-02', 2),
  ('Scarface', 170, '1983-12-09', '2023-03-03', '2023-03-03', 3),
  ('Matrix', 136, '1999-03-31', '2023-03-04', '2023-03-04', 4),
  ('Heat', 170, '1995-12-15', '2023-03-05', '2023-03-05', 5);

-- Favorite
INSERT INTO Favorite (Id_user, Id_movie)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

-- Perform
INSERT INTO Perform (Id_movie, Id_actor, role, is_lead_role)
VALUES
  (1, 1, 'Vito Corleone', TRUE),
  (2, 2, 'Jimmy Conway', TRUE),
  (3, 3, 'Tony Montana', TRUE),
  (4, 4, 'Neo', TRUE),
  (5, 3, 'Lt. Vincent Hanna', TRUE);
  (5, 2, 'Neil McCauley', TRUE),
  
