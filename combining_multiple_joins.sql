CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);


--DATABASE SCHEMA

persons   |5 rows  |
----------+--------+
id (PK)   | INTEGER|
fullname  |    TEXT|
age       | INTEGER|
sequel_id | INTEGER|

hobbies   |10 rows  |
----------+--------+
id (PK)   | INTEGER|
person_id |    TEXT|
name      |    TEXT|


friends    |2 rows  |
-----------+--------+
id (PK)    | INTEGER|
person1_id | INTEGER|
person2_id | INTEGER|


-- use a JOIN to display a table showing people's names with their hobbies
SELECT fullname, name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id

-- Results:

fullname          |name           |
------------------+---------------+
Bobby McBobbyFace	|        drawing|
Bobby McBobbyFace	|	        coding|
Lucy BoBucie      |	       dancing|
Lucy BoBucie      |         coding|
Banana FoFanna    |        skating|
Banana FoFanna    |         rowing|
Banana FoFanna    |        drawing|
Shish Kabob       |         coding|
Shish Kabob       | dilly-dallying|
Shish Kabob       |        meowing|


-- use another SELECT with a JOIN to show the names of each pair of friends, based on the data in the friends table

SELECT a.fullname, b.fullname FROM friends
    JOIN persons a
    ON friends.person1_id = a.id
    JOIN persons b
    ON friends.person2_id = b.id;

fullname          |name           |
------------------+---------------+
Bobby McBobbyFace	|    Shish Kabob|
Lucy BoBucie      | Banana FoFanna|
