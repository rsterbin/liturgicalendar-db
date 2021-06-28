--
-- Rollback federal holidays
--

DELETE FROM federal_holidays;
ALTER SEQUENCE federal_holidays_holiday_id_seq RESTART;

