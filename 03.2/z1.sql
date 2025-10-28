CREATE TABLE new_or_renovated_buildings AS
SELECT b2019.*
FROM "2019_buildings" b2019
LEFT JOIN "2018_buildings" b2018
ON ST_Equals(b2019.geom, b2018.geom)
WHERE b2018.geom IS NULL;
