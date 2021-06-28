--
-- Rollback for the basic service patterns and selection functions
--

DROP TABLE service_patterns;
DROP TABLE schedule_services;
DROP TABLE schedules;
DROP TABLE services;
DROP FUNCTION valid_for_date(given timestamp with time zone, valid_start timestamp with time zone, valid_end timestamp with time zone);
DROP FUNCTION valid_for_date_range(given_start timestamp with time zone, given_end timestamp with time zone, valid_start timestamp with time zone, valid_end timestamp with time zone);

