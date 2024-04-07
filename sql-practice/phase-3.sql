-- Find the name of the cats co-owned by both George Beatty and Melynda Abshire
-- Your code here
SELECT DISTINCT cats.name FROM cats WHERE cats.id IN
(SELECT cat_id FROM cat_owners WHERE owner_id IN
(SELECT owners.id FROM owners 
WHERE (owners.first_name IN ('George', 'Meylandas')
AND owners.last_name IN ('Beatty','Abshire'))));

-- SELECT DISTINCT cats.name
-- FROM cats
-- JOIN cat_owners ON cats.id = cat_owners.cat_id
-- JOIN owners ON owners.id = cat_owners.owner_id
-- WHERE (owners.first_name IN ('George', 'Meylandas')
-- AND owners.last_name IN ('Beatty','Abshire'));
