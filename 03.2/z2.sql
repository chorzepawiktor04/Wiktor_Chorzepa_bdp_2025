CREATE TABLE new_poi_near_new_buildings AS
SELECT p2019.type, COUNT(*) AS liczba_poi
FROM "2019_poi_table" p2019
LEFT JOIN "2018_poi_table" p2018
  ON p2019.poi_id = p2018.poi_id
WHERE p2018.poi_id IS NULL 
  AND EXISTS (
    SELECT 1 
    FROM new_or_renovated_buildings b
    WHERE ST_DWithin(p2019.geom, b.geom, 500)
  )
GROUP BY p2019.type;
