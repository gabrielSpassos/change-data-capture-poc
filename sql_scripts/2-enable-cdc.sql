-- Check if cdc is enabled at database
SELECT name, is_cdc_enabled FROM sys.databases;

-- Select database
USE test

-- Enable cdc at database
EXEC sys.sp_cdc_enable_db GO;

-- Check if cdc is enabled at tables
SELECT name, is_tracked_by_cdc FROM SYS.TABLES;

-- Enable cdc at table PERSON
EXEC sys.sp_cdc_enable_table
    @source_schema = 'change_data_capture_test',
    @source_name   = 'person',
    @role_name     = NULL,
    @supports_net_changes = 1;
