USE master
GO

--Run only if dB exists
IF EXISTS (SELECT * FROM sys.databases WHERE [name] = 'dbMyLibrary')
DROP DATABASE dbMyLibrary
GO

CREATE DATABASE dbMyLibrary
GO

USE dbMyLibrary
GO
