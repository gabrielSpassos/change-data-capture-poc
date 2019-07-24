CREATE DATABASE test;

USE test;

CREATE SCHEMA change_data_capture_test;

CREATE TABLE change_data_capture_test.PERSON (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TAX_ID VARCHAR(11) NOT NULL,
    NAME VARCHAR(255) NOT NULL,
    SEX VARCHAR(6) NOT NULL
);

INSERT INTO change_data_capture_test.PERSON(TAX_ID, NAME, SEX) VALUES
('12494695465', 'Miguel Márcio Francisco da Paz', 'MALE'),
('18126950390', 'Sabrina Carla dos Santos', 'FEMALE');

SELECT * FROM change_data_capture_test.PERSON;
