-- Give "Red" the cat one of every toy the other cats have
-- Your code here
INSERT INTO toys (name, cat_id) 
    SELECT toys.name, cats.id 
    FROM toys 
    JOIN cats ON cats.name = 'Red' 
    WHERE toys.cat_id != cats.id;

-- CHECKING

SELECT toys.name FROM toys WHERE toys.name NOT IN 
(SELECT toys.name FROM toys WHERE toys.cat_id = 9 );

-- Returns nothing as expected 
-- i could have used join btw here but just know that
-- red has an id of 9 


-- Query spoiled cats reporting the most spoiled first
-- Your code here
SELECT cats.name, COUNT(toys.id) AS toys_Count 
    FROM cats JOIN toys ON cats.id = toys.cat_id 
    GROUP BY cats.name HAVING toys_Count > 2 ORDER BY toys_Count DESC;