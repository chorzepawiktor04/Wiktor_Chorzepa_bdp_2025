CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    geometry GEOMETRY(Point, 4326)  -- WGS84
);

INSERT INTO input_points (name, geometry) VALUES
('P1', ST_SetSRID(ST_MakePoint(8.36093, 49.03174), 4326)),
('P2', ST_SetSRID(ST_MakePoint(8.39876, 49.00644), 4326));
