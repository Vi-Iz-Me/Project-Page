CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);

INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

-- DB SCHEMA

documents |5rows   |
----------+--------+
id (PK)   | INTEGER|
title     |    TEXT|
content   |    TEXT|
author    |    TEXT|

-- Query Results

SELECT * FROM documents;

id |title                |content                                                 |author           |
---+---------------------+--------------------------------------------------------+-----------------+
1  |Fancy Stuff          |Ceiling wax, dragon wings, etc.                         |Puff T.M. Dragon |
2  |Living Things        |They're located in the left ear, you know.              |Puff T.M. Dragon |
3  |Pirate Recipes       |Cherry pie, apple pie, blueberry pie.                   |Jackie Paper     |
4  |Boat Supplies        |Rudder - guitar. Main mast - bed post.                  |Jackie Paper     |
5  |Things I'm Afraid Of |Talking to my parents, the sea, giant pirates, heights. |Jackie Paper     |


    
--  Use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. : 

UPDATE documents SET author = "Jackie Draper" 
  WHERE author = "Jackie Paper";

SELECT * FROM documents;

-- Results:

  id |title              |content                                                 |author           |
---+---------------------+--------------------------------------------------------+-----------------+
1  |Fancy Stuff          |Ceiling wax, dragon wings, etc.                         |Puff T.M. Dragon |
2  |Living Things        |They're located in the left ear, you know.              |Puff T.M. Dragon |
3  |Pirate Recipes       |Cherry pie, apple pie, blueberry pie.                   |Jackie Draper    |
4  |Boat Supplies        |Rudder - guitar. Main mast - bed post.                  |Jackie Draper    |
5  |Things I'm Afraid Of |Talking to my parents, the sea, giant pirates, heights. |Jackie Draper    |

--  Use DELETE to delete the row where the title is 'Things I'm Afraid Of': 

DELETE FROM documents
   WHERE title = "Things I'm Afraid Of"

SELECT * FROM documents;

-- Results:

  id |title              |content                                                 |author           |
---+---------------------+--------------------------------------------------------+-----------------+
1  |Fancy Stuff          |Ceiling wax, dragon wings, etc.                         |Puff T.M. Dragon |
2  |Living Things        |They're located in the left ear, you know.              |Puff T.M. Dragon |
3  |Pirate Recipes       |Cherry pie, apple pie, blueberry pie.                   |Jackie Draper    |
4  |Boat Supplies        |Rudder - guitar. Main mast - bed post.                  |Jackie Draper    |
