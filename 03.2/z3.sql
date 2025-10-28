CREATE TABLE streets_reprojected AS
SELECT 
    *,
    ST_Transform(geom, 3068) AS geom_dhdn
FROM "2019_streets";
