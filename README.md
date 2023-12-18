# Mise en Place d'une Base de Données
Ce document explique la mise en place d'une base de données relationnelle en utilisant SQL.
Une base de données axée sur une plateforme de streaming .
La base de données comprend des tables pour les utilisateurs, les acteurs, les réalisateurs, les films, les favoris et les rôles des acteurs dans les films.
Les exemples utilisent MySQL syntaxe SQL.

## Installation

WampServer : 
https://www.wampserver.com/

WampServer est une plateforme de développement Web de type WAMP, permettant de faire fonctionner localement (sans avoir à se connecter à un serveur externe) des scripts PHP.
WampServer n'est pas en soi un logiciel, mais un environnement comprenant trois serveurs (Apache, MySQL et MariaDB), un interpréteur de script (PHP), ainsi que phpMyAdmin pour l'administration Web des bases MySQL.

MySQL : 
https://www.mysql.com/fr/downloads/

MySQL est un système de gestion de bases de données relationnelles (SGBDR). Il fait partie des logiciels de gestion de base de données les plus utilisés au monde.

## Configuration

Lancez Wamp afin d'utiliser un serveur local.
Ouvrez votre navigateur web.
Entrez l'URL de phpMyAdmin dans la barre d'adresse. L'URL peut ressembler à quelque chose comme http://localhost/phpmyadmin/.
Assurez-vous que votre serveur web (comme Apache) est en cours d'exécution.
Connectez-vous à votre serveur MySQL : Une authentification est requise, entrez seulement "root" comme nom d'utilisateur et aucun mot de passe.

## Documentation

### Executer les requêtes :

Dans l'onglet SQL, copiez collez les requêtes ci dessous :

- Création de la Base de Données et des Tables

```bash
  CREATE DATABASE IF NOT EXISTS nom_de_la_base_de_donnees; USE nom_de_la_base_de_donnees;
```
- Copiez collez le fichier 'createBdd.sql' pour créer les différentes tables.
- Copiez collez le fichier 'alimenterBdd.sql' pour alimenter la base de données

- Les titres et dates de sortie des films du plus récent au plus ancien
```bash
  SELECT title, release_year FROM Movie ORDER BY release_year DESC;
```
- Les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique
```bash
 SELECT firstname_actor, lastname_actor, birthdate_actor FROM Actor WHERE birthdate_actor < '1993-01-01' ORDER BY lastname_actor;
```
- La liste des acteurs/actrices principaux pour un film donné
```bash
  SELECT Actor.firstname_actor, Actor.lastname_actor, Perform.role``
FROM Perform
JOIN Actor ON Perform.Id_actor = Actor.Id_actor
WHERE Perform.Id_movie = 3
  AND Perform.is_lead_role = TRUE;
```
- La liste des films pour un acteur/actrice donné
```bash
  SELECT movie.title``
FROM movie
JOIN perform ON Perform.Id_movie = movie.Id_movie
WHERE perform.Id_actor = 3;
```
- Pour ajouter un film
```bash
INSERT INTO movie (title, duration, release_year, creation_date_movie, modification_date_movie, Id_director)``
VALUES
('Casino', 178, '1995-12-15', '2023-03-05', '2023-03-05', 2);

INSERT INTO movie (title, duration, release_year, creation_date_movie, modification_date_movie, Id_director)
VALUES
("L'Impasse", 178, '1994-03-23', '2023-03-05', '2023-03-05', 3);
```
- Pour ajouter un acteur/actrice
```bash
  INSERT INTO actor (firstname_actor, lastname_actor, birthdate_actor, creation_date_actor, modification_date_actor)
VALUES
('Joe', 'Pesci', '1943-02-09', '2023-03-05', '2023-03-05');

INSERT INTO actor (firstname_actor, lastname_actor, birthdate_actor, creation_date_actor, modification_date_actor)
VALUES
('Leonardo', 'DiCaprio', '1974-11-11', '2023-03-05', '2023-03-05');
```
- Pour modifier un film
```bash
  UPDATE movie
SET title = 'Casino', duration = 178, release_year = '1995-12-15', creation_date_movie = '2023-03-05', modification_date_movie = '2023-12-15', Id_director = 2
WHERE Id_movie = 1;
```
- Pour supprimer un acteur/actrice
```bash
  DELETE FROM actor
WHERE Id_actor = 1;
```
- Pour afficher les 3 derniers acteurs/actrices ajouté(e)s
```bash
  SELECT * FROM actor ORDER BY creation_date_actor DESC LIMIT 3;
```

