SELECT * FROM change_data_capture_test.PERSON;

INSERT INTO change_data_capture_test.PERSON(TAX_ID, NAME, SEX) VALUES
('29882571166', 'Larissa Helena Moraes', 'FEMALE');

UPDATE change_data_capture_test.PERSON
SET NAME = 'Miguel Francisco da Paz'
WHERE TAX_ID = '12494695465';

-- check columns that are listen
select * from cdc.captured_columns;
