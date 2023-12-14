
CREATE TABLE Userr(
   Id_user INT AUTO_INCREMENT,
   email VARCHAR(50),
   password VARCHAR(50),
   creation_date_user DATE,
   modification_date_user DATE,
   PRIMARY KEY(Id_user)
);

CREATE TABLE Actor(
   Id_actor INT AUTO_INCREMENT,
   firstname_actor VARCHAR(50),
   lastname_actor VARCHAR(50),
   birthdate_actor DATE,
   creation_date_actor DATE,
   modification_date_actor DATE,
   PRIMARY KEY(Id_actor)
);

CREATE TABLE Director(
   Id_director INT AUTO_INCREMENT,
   fistname_director VARCHAR(50),
   lastname_director VARCHAR(50),
   creation_date_director DATE,
   modification_date_director DATE,
   PRIMARY KEY(Id_director)
);

CREATE TABLE Movie(
   Id_movie INT AUTO_INCREMENT,
   title VARCHAR(50),
   duration INT,
   release_year DATE,
   creation_date_movie DATE,
   modification_date_movie DATE,
   Id_director INT,
   PRIMARY KEY(Id_movie),
   FOREIGN KEY(Id_director) REFERENCES Director(Id_director)
);

CREATE TABLE Favorite(
   Id_user INT,
   Id_movie INT,
   PRIMARY KEY(Id_user, Id_movie),
   FOREIGN KEY(Id_user) REFERENCES Userr(Id_user),
   FOREIGN KEY(Id_movie) REFERENCES Movie(Id_movie)
);

CREATE TABLE Perform(
   Id_movie INT,
   Id_actor INT,
   role VARCHAR(50),
   is_lead_role BOOLEAN,
   PRIMARY KEY(Id_movie, Id_actor),
   FOREIGN KEY(Id_movie) REFERENCES Movie(Id_movie),
   FOREIGN KEY(Id_actor) REFERENCES Actor(Id_actor)
);