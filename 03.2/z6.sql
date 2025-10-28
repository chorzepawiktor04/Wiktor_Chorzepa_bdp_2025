WITH input_line AS (
    SELECT ST_MakeLine(geometry ORDER BY id) AS geom
    FROM input_points
)
SELECT n.*
FROM "2019_street_node" n, input_line l
WHERE ST_DWithin(ST_Transform(n.geom, 3068), l.geom, 200);
