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

CREATE TABLE tblBook
(
BookID int PRIMARY KEY NOT NULL,
Title varchar(max) NOT NULL,
PublisherName varchar(max) NULL
)

INSERT INTO tblBook
VALUES(1, 'Holy Bible', NULL),
	(2, 'IT', NULL),
	(3, 'Ender''s Game', NULL),
	(4, 'The Adventures of Huckleberry Finn', NULL),
	(5, 'The Alchemist', NULL),
	(6, 'The Richest Man in Babylon', NULL),
	(7, 'The Da Vinci Code', NULL),
	(8, 'The Lost Tribe', NULL),
	(9, 'The Life of Pi', NULL),
	(10, 'The Invisible Man', NULL),
	(11, 'The Island of Dr. Moreau', NULL),
	(12, 'Lord of the Flies', NULL),
	(13, 'Lord of the Rings: Fellowship of the RIng', NULL),
	(14, 'The Silmarillion', NULL),
	(15, 'Total Money Makeover', NULL),
	(16, 'Think and Grow Rich', NULL),
	(17, 'Angels and Demons', NULL),
	(18, 'Who Moved My Cheese', NULL),
	(19, 'Frankenstein', NULL),
	(20, 'Animal Farm', NULL),
	(21, 'Brave New World', NULL),
	(22, '1984', NULL),
	(23, 'Rich Dad, Poor Dad', NULL),
	(24, 'Book Thief', NULL),
	(25, 'The Hobbit', NULL)

