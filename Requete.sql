-----les titres et dates de sortie des films du plus récent au plus ancien----

SELECT title, release_year FROM Movie ORDER BY release_year DESC;

---------les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique--------

SELECT firstname_actor, lastname_actor, birthdate_actor FROM Actor WHERE birthdate_actor < '1993-01-01' ORDER BY lastname_actor;

---la liste des acteurs/actrices principaux pour un film donné---

SELECT Actor.firstname_actor, Actor.lastname_actor, Perform.role
FROM Perform
JOIN Actor ON Perform.Id_actor = Actor.Id_actor
WHERE Perform.Id_movie = 3
  AND Perform.is_lead_role = TRUE;

---la liste des films pour un acteur/actrice donné---

SELECT movie.title
FROM movie
JOIN perform ON Perform.Id_movie = movie.Id_movie
WHERE perform.Id_actor = 3;

---requête ajouter un film---

INSERT INTO movie (title, duration, release_year, creation_date_movie, modification_date_movie, Id_director)
VALUES
('Casino', 178, '1995-12-15', '2023-03-05', '2023-03-05', 2);

INSERT INTO movie (title, duration, release_year, creation_date_movie, modification_date_movie, Id_director)
VALUES
("L'Impasse", 178, '1994-03-23', '2023-03-05', '2023-03-05', 3);