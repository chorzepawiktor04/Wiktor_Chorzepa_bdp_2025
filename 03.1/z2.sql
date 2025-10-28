SELECT 
    ST_Area(
        ST_Buffer(
            ST_ShortestLine(o3.geometry, o4.geometry),
            5
        )
    ) AS pole_bufora
FROM obiekty o3, obiekty o4
WHERE o3.name = 'obiekt3' AND o4.name = 'obiekt4';
