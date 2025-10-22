SELECT name FROM buildings WHERE ST_Y(ST_Centroid(geometry)) > ST_Y(ST_Centroid((SELECT geometry FROM roads WHERE name = 'RoadX')));
