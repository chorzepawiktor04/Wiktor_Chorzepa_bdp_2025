UPDATE obiekty
SET geometry = ST_AddPoint(geometry, ST_StartPoint(geometry))
WHERE name = 'obiekt4';

UPDATE obiekty
SET geometry = ST_MakePolygon(geometry)
WHERE name = 'obiekt4';
