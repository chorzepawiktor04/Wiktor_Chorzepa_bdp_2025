SELECT 
    SUM(ST_Area(ST_Buffer(geometry, 5))) AS suma_pol_buforow
FROM obiekty
WHERE NOT ST_HasArc(geometry);
