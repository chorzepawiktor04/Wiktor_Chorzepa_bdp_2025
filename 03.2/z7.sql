SELECT COUNT(p.*) AS liczba_sklepow
FROM "2019_poi_table" p
JOIN "2019_land_use_a" l
  ON ST_DWithin(p.geom, l.geom, 300)
WHERE p.type = 'Sporting Goods Store'
  AND l.type = 'park';
