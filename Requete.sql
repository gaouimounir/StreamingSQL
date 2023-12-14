-----les titres et dates de sortie des films du plus récent au plus ancien----

SELECT title, release_year FROM Movie ORDER BY release_year DESC;

---------les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique--------

SELECT firstname_actor, lastname_actor, birthdate_actor FROM Actor WHERE birthdate_actor < '1993-01-01' ORDER BY lastname_actor;