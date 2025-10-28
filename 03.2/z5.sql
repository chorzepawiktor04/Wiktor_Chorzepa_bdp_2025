UPDATE input_points
SET geometry = ST_Transform(geometry, 3068);
