SELECT * FROM change_data_capture_test.PERSON;

INSERT INTO change_data_capture_test.PERSON(TAX_ID, NAME, SEX) VALUES
('29882571166', 'Larissa Helena Moraes', 'FEMALE');

UPDATE change_data_capture_test.PERSON
SET NAME = 'Miguel Francisco da Paz'
WHERE TAX_ID = '12494695465';

-- check columns that are listen
select * from cdc.captured_columns;

select * from cdc.fn_cdc_get_all_changes_change_data_capture_test_PERSON(
  0x0000002400000C880043,
  CAST(10000000000 AS BINARY(4)),
  ''
)
