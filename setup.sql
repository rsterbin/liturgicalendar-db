--
-- In order to keep track of what schema we can expect, we want to keep the schema versions in the database too
--
CREATE TABLE liturgicalendar_schema (
    version_number text NOT NULL,
    filename text NOT NULL,
    active boolean NOT NULL DEFAULT false,
    installed_at timestamp with time zone,
    reverted_at timestamp with time zone,
    CONSTRAINT liturgicalendar_schema_pk PRIMARY KEY (version_number)
);

CREATE UNIQUE INDEX ON liturgicalendar_schema (active) WHERE active IS TRUE;

-- Make this statement into a function so we can call something like:
--  SELECT prep_version('0.01', '20160810131200_schema_services.sql')
-- when loading up a new version
--

-- WITH this_version AS (
--     SELECT '0.01' AS version_number,
--         '20160810131200_schema_services.sql' AS filename,
--         FALSE AS active,
--         NOW() AS installed_at,
--         FALSE AS inserted
-- ),
-- checkable AS (
--     SELECT version_number, filename, active, installed_at, TRUE AS inserted
--     FROM liturgicalendar_schema
--     UNION
--     SELECT * FROM this_version
-- ),
-- INSERT INTO liturgicalendar_schema (version_number, filename, active, installed_at)
-- SELECT c.version_number, c.filename, c.active, c.installed_at
-- FROM checkable c
-- JOIN this_version t ON (t.version_number = c.version_number)
-- GROUP BY c.version_number, c.filename, c.active, c.installed_at
-- HAVING COUNT(c.inserted) = 1 AND bool_or(c.inserted) IS FALSE
-- RETURNING TRUE AS insert_count

