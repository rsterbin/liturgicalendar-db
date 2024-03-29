
-- rambler up

--
-- Observance types & precedence
--

INSERT INTO observance_types (name, precedence) VALUES ('Principal Feast or Holy Day', 10); -- 1
INSERT INTO observance_types (name, precedence) VALUES ('Major Feast (can be celebrated on Sunday)', 20); -- 2
INSERT INTO observance_types (name, precedence) VALUES ('Feast (transfers from Sunday)', 40); -- 3
INSERT INTO observance_types (name, precedence) VALUES ('Commemoration', 50); -- 4
INSERT INTO observance_types (name, precedence) VALUES ('Major Feast (celebrated on the nearest Sunday)', 30); -- 5
INSERT INTO observance_types (name, precedence) VALUES ('Lesser Commemoration', 55); -- 6

-- rambler down

TRUNCATE TABLE observance_types RESTART IDENTITY;

-- todo: double check precedence for moveable feasts

