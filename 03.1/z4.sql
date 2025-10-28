INSERT INTO obiekty (name, geometry)
SELECT
    'obiekt7',
    ST_Union(o3.geometry, o4.geometry)
FROM obiekty o3, obiekty o4
WHERE o3.name = 'obiekt3' AND o4.name = 'obiekt4';
