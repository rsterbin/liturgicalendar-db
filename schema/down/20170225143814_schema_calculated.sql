--
-- Rollback for the cached results of applying overrides to the previously calculated calendar (stored in completed* tables)
--

DROP TABLE cached_services;
DROP TABLE cached;
DROP TABLE calculated_services;
DROP TABLE calculated;

