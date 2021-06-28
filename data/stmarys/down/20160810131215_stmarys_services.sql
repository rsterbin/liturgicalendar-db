--
-- Rollback definition of services and patterns
--

DELETE FROM service_patterns;
ALTER SEQUENCE service_patterns_pattern_id_seq RESTART;
DELETE FROM schedule_services;
DELETE FROM schedules;
ALTER SEQUENCE schedules_schedule_id_seq RESTART;
DELETE FROM services;
ALTER SEQUENCE services_service_id_seq RESTART;

