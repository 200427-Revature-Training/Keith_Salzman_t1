CREATE TABLE app_user (
user_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
role_id INT REFERENCES user_role (role_id) NOT NULL,
username VARCHAR UNIQUE NOT NULL,
password VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL
);

CREATE TABLE user_role (
role_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE study_set (
study_set_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
owner_id INT REFERENCES app_user (user_id) NOT NULL,
name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE study_set_card (
	study_set_id INT REFERENCES study_set (study_set_id),
	flashcard_id INT REFERENCES flashcard (flashcard_id),
	PRIMARY KEY (study_set_id, flashcard_id)
);

CREATE TABLE flashcard (
flashcard_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
category_id INT REFERENCES category (category_id) NOT NULL,
question VARCHAR UNIQUE NOT NULL,
answer VARCHAR NOT NULL
);

CREATE TABLE category (
category_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR UNIQUE NOT NULL
);

DECLARE 
my_cursor refcursor;
DECLARE curs2 CURSOR FOR SELECT * FROM app_user;

CREATE PROCEDURE  insertResultSet(IN user_id, OUT my_cursor)
AS 
	DECLARE curs1 CURSOR FOR SELECT * FROM study_set ss ;
	SELECT * 
	FROM study_set 
	WHERE owner_id = user_id;
END;