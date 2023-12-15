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

---requête ajouter un acteur/actrice---

INSERT INTO actor (firstname_actor, lastname_actor, birthdate_actor, creation_date_actor, modification_date_actor)
VALUES
('Joe', 'Pesci', '1943-02-09', '2023-03-05', '2023-03-05');

INSERT INTO actor (firstname_actor, lastname_actor, birthdate_actor, creation_date_actor, modification_date_actor)
VALUES
('Leonardo', 'DiCaprio', '1974-11-11', '2023-03-05', '2023-03-05');

---requête modifier un film---

UPDATE movie
SET title = 'Casino', duration = 178, release_year = '1995-12-15', creation_date_movie = '2023-03-05', modification_date_movie = '2023-12-15', Id_director = 2
WHERE Id_movie = 1;

---requête supprimer un acteur/actrice----

DELETE FROM actor
WHERE Id_actor = 1;

---requête afficher les 3 derniers acteurs/actrices ajouté(e)s----

SELECT * FROM actor ORDER BY creation_date_actor DESC LIMIT 3;