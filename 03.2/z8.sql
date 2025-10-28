CREATE TABLE "2019_kar_bridges" AS
SELECT 
    ST_Intersection(r.geom, w.geom) AS geometry
FROM "2019_railways" r
JOIN "2019_water_lines" w
  ON ST_Intersects(r.geom, w.geom)
WHERE ST_GeometryType(ST_Intersection(r.geom, w.geom)) IN ('ST_Point', 'ST_MultiPoint');
