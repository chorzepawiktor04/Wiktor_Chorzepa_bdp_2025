CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    geometry GEOMETRY(Point, 4326)  -- WGS84
);
