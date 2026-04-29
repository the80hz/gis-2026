CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS buildings CASCADE;
DROP TABLE IF EXISTS roads CASCADE;
DROP TABLE IF EXISTS poi CASCADE;
DROP TABLE IF EXISTS tmp_layer CASCADE;

CREATE TABLE tmp_layer (
    ogc_fid integer PRIMARY KEY,
    version text,
    building text,
    "building:levels" text,
    "addr:city" text,
    "addr:housenumber" text,
    "addr:street" text,
    "addr:place" text,
    highway text,
    surface text,
    name text,
    id text,
    geom geometry(Geometry, 4326)
);

INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (1, '0', 'house', '2', 'Самара', '140', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-1', ST_GeomFromText('MULTIPOLYGON(((50.12969515279829 53.52433613160509,50.129754452655426 53.52426820086736,50.12986956686803 53.52430370999677,50.12981028365237 53.52437164323572,50.12969515279829 53.52433613160509)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (2, '0', 'house', '2', 'Самара', '139', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-2', ST_GeomFromText('MULTIPOLYGON(((50.12962928369114 53.52422870992769,50.12957691067179 53.52429240822313,50.12946142645224 53.52425884703504,50.129494773859776 53.52421829497384,50.129519919238014 53.52422560094829,50.1295389390067 53.52420246230017,50.12962928369114 53.52422870992769)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (3, '0', 'house', '1', 'Самара', '138', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-3', ST_GeomFromText('MULTIPOLYGON(((50.12937251211152 53.52416607187497,50.129318332106315 53.52424438931243,50.12922923210675 53.524222605737,50.12925461830506 53.52418590635953,50.12923527435112 53.52418117870325,50.12925167597718 53.52415745694729,50.12927747403777 53.52416376135633,50.12928985247185 53.5241458634817,50.12937251211152 53.52416607187497)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (4, '0', 'house', NULL, 'Самара', '137', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-4', ST_GeomFromText('MULTIPOLYGON(((50.128925048347234 53.524126369666696,50.12898041882486 53.52406062147637,50.12906178741051 53.52408483517305,50.12900643357758 53.524150587470636,50.128925048347234 53.524126369666696)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (5, '0', 'house', NULL, 'Самара', '135', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-5', ST_GeomFromText('MULTIPOLYGON(((50.128371060665934 53.52395195604431,50.128304816498755 53.52393091635785,50.12835215138564 53.52387825415067,50.128434534470216 53.523904427684194,50.12841068639465 53.52393095480384,50.128394540888934 53.52392582623371,50.128371060665934 53.52395195604431)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (6, '0', 'house', '1', 'Самара', '134', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-6', ST_GeomFromText('MULTIPOLYGON(((50.12803699472703 53.52386401472163,50.128062354000356 53.52382345654672,50.12815108382831 53.52384305868358,50.128125718313655 53.52388362593262,50.12803699472703 53.52386401472163)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (7, '0', 'house', NULL, 'Самара', '131', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-7', ST_GeomFromText('MULTIPOLYGON(((50.12772873285244 53.52357653788869,50.12778313373022 53.52349791888954,50.12789732054537 53.523525849349724,50.127842923291496 53.52360445897043,50.12772873285244 53.52357653788869)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (8, '0', 'house', '1', 'Самара', '129', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-8', ST_GeomFromText('MULTIPOLYGON(((50.12696536171455 53.52353565718813,50.12682605360376 53.52349770502772,50.126898535346704 53.52340365569486,50.127037861607924 53.52344160481499,50.12696536171455 53.52353565718813)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (9, '0', 'house', NULL, 'Самара', '130', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-9', ST_GeomFromText('MULTIPOLYGON(((50.12699123990648 53.52353316393381,50.127026753243356 53.52349001004487,50.12710401414924 53.52351247664176,50.12706850152472 53.52355563630138,50.12699123990648 53.52353316393381)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (10, '0', 'house', NULL, 'Самара', '151', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-10', ST_GeomFromText('MULTIPOLYGON(((50.126994535342895 53.52369920015195,50.127025488225044 53.52365291541327,50.12709787623955 53.5236700205882,50.1270669261837 53.52371630997668,50.126994535342895 53.52369920015195)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (11, '0', 'house', NULL, 'Самара', '142', 'улица Гранатовая', 'СДТ "Береза-1"', NULL, NULL, NULL, 'way/-11', ST_GeomFromText('MULTIPOLYGON(((50.12935985670678 53.524336887488644,50.129322028599475 53.52438573548766,50.12925387728955 53.524367088034346,50.12929169796916 53.52431823508696,50.12935985670678 53.524336887488644)))', 4326));
INSERT INTO tmp_layer (ogc_fid, version, building, "building:levels", "addr:city", "addr:housenumber", "addr:street", "addr:place", highway, surface, name, id, geom) VALUES (12, '4', NULL, NULL, NULL, NULL, NULL, NULL, 'residential', 'dirt', 'улица Гранатовая', 'way/46678651', ST_GeomFromText('MULTILINESTRING((50.128263862117144 53.52396197728646,50.12922014974474 53.52423787006052,50.13019840657458 53.52453485447239))', 4326));

CREATE TABLE buildings AS
SELECT row_number() OVER () AS gid, t.*
FROM tmp_layer t
WHERE t.building IS NOT NULL
  AND GeometryType(t.geom) IN ('POLYGON', 'MULTIPOLYGON');

ALTER TABLE buildings ADD PRIMARY KEY (gid);
ALTER TABLE buildings
    ALTER COLUMN geom
    TYPE geometry(MultiPolygon, 4326)
    USING ST_Multi(
        CASE
            WHEN ST_SRID(geom) = 0 THEN ST_SetSRID(geom, 4326)
            WHEN ST_SRID(geom) = 4326 THEN geom
            ELSE ST_Transform(geom, 4326)
        END
    )::geometry(MultiPolygon, 4326);
CREATE INDEX idx_buildings_geom ON buildings USING GIST (geom);

CREATE TABLE roads AS
SELECT row_number() OVER () AS gid, t.*
FROM tmp_layer t
WHERE t.highway IS NOT NULL
  AND GeometryType(t.geom) IN ('LINESTRING', 'MULTILINESTRING');

ALTER TABLE roads ADD PRIMARY KEY (gid);
ALTER TABLE roads
    ALTER COLUMN geom
    TYPE geometry(MultiLineString, 4326)
    USING ST_Multi(
        CASE
            WHEN ST_SRID(geom) = 0 THEN ST_SetSRID(geom, 4326)
            WHEN ST_SRID(geom) = 4326 THEN geom
            ELSE ST_Transform(geom, 4326)
        END
    )::geometry(MultiLineString, 4326);
CREATE INDEX idx_roads_geom ON roads USING GIST (geom);

CREATE TABLE poi AS
SELECT row_number() OVER () AS gid, t.*
FROM tmp_layer t
WHERE GeometryType(t.geom) IN ('POINT', 'MULTIPOINT');

ALTER TABLE poi ADD PRIMARY KEY (gid);
ALTER TABLE poi
    ALTER COLUMN geom
    TYPE geometry(MultiPoint, 4326)
    USING ST_Multi(
        CASE
            WHEN ST_SRID(geom) = 0 THEN ST_SetSRID(geom, 4326)
            WHEN ST_SRID(geom) = 4326 THEN geom
            ELSE ST_Transform(geom, 4326)
        END
    )::geometry(MultiPoint, 4326);
CREATE INDEX idx_poi_geom ON poi USING GIST (geom);

ANALYZE buildings;
ANALYZE roads;
ANALYZE poi;
