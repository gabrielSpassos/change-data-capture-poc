SELECT * FROM change_data_capture_test.person;

INSERT INTO change_data_capture_test.person(TAX_ID, NAME, SEX) VALUES
('29882571166', 'Larissa Helena Moraes', 'FEMALE');

UPDATE change_data_capture_test.person
SET NAME = 'Miguel Francisco da Paz'
WHERE TAX_ID = '12494695465';

-- check columns that are listen
select * from cdc.captured_columns;

-- check changes
DECLARE @from_lsn binary(10), @to_lsn binary(10)
SET @from_lsn = sys.fn_cdc_get_min_lsn(N'change_data_capture_test_person')
SET @to_lsn   = sys.fn_cdc_get_max_lsn()
SELECT @from_lsn,@to_lsn, N'all';
SELECT * FROM cdc.fn_cdc_get_all_changes_change_data_capture_test_person(@from_lsn, @to_lsn, N'all');
GO
