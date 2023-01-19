CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

-- DB SCHEMA

clothes   |3rows   |
----------+--------+
id (PK)   | INTEGER|
type      |    TEXT|
design    |    TEXT|

-- Query Results

SELECT * FROM clothes;

id |type   |design          |
---+-------+----------------+
1	 |dress  |pink polka dots |
2  |pants  |rainbow tie-dye |
3	 |blazer |black sequin    |


--- Use ALTER to add a 'price' column to the table.

ALTER TABLE clothes ADD price INTEGER;

SELECT * FROM clothes;

-- Results:

documents |4rows   |
----------+--------+
id (PK)   | INTEGER|
type      |    TEXT|
design    |    TEXT|
price     | INTEGER|

id |type   |design          |price    |
---+-------+----------------+---------+
1	 |dress  |pink polka dots |NULL     |
2  |pants  |rainbow tie-dye |NULL     |
3	 |blazer |black sequin    |NULL     |

--- Assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars

UPDATE clothes SET price = 10
    WHERE id = 1;

UPDATE clothes SET price = 20
    WHERE id = 2;

UPDATE clothes SET price = 30
    WHERE id = 3;
    
SELECT * FROM clothes;

-- Results:

id |type   |design          |price    |
---+-------+----------------+---------+
1	 |dress  |pink polka dots |10       |
2  |pants  |rainbow tie-dye |20       |
3	 |blazer |black sequin    |30       |


-- Insert a new item into the table that has all three attributes filled in, including 'price'

INSERT INTO clothes (type, design, price) VALUES ("romper", "blue jean", 25);

SELECT * FROM clothes;

-- Results:
id |type   |design          |price    |
---+-------+----------------+---------+
1	 |dress  |pink polka dots |10       |
2  |pants  |rainbow tie-dye |20       |
3	 |blazer |black sequin    |30       |
4	 |romper |blue jean       |25       |
