--
-- Rollback overrides
--

DELETE FROM override_services;
ALTER SEQUENCE override_services_override_service_id_seq RESTART;
DELETE FROM overrides;
ALTER SEQUENCE overrides_override_id_seq RESTART;

