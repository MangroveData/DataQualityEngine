USE [DataQualityDB]
GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'DQ')

BEGIN
	DECLARE @SQL varchar(1000)
	set @SQL = 'exec DataQualityDB..sp_executesql N''CREATE SCHEMA [DQ] AUTHORIZATION dbo '''
	PRINT (@SQL)
	exec(@SQL)

END

GO