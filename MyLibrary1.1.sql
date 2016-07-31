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

CREATE TABLE tblBook_Authors
(
BookID int PRIMARY KEY NOT NULL,
AuthorName varchar(max) NULL
)
INSERT INTO tblBook_Authors
VALUES(1, 'God'),
	(2, 'Stephen King'),
	(3, 'Orson Scott Card'),
	(4, 'Mark Twain'),
	(5, 'Paulo Coelho'),
	(6, 'George Samuel Clason'),
	(7, 'Dan Brown'),
	(8, 'Mark Lee'),
	(9, 'Yann Martel'),
	(10, 'Ralph Ellison'),
	(11, 'H. G. Wells'),
	(12, 'William Golding'),
	(13, 'J. R. R. Tolkien'),
	(14, 'J. R. R. Tolkien'),
	(15, 'Dave Ramsey'),
	(16, 'Napoleon Hill'),
	(17, 'Dan Brown'),
	(18, 'Spencer Johnson'),
	(19, 'Mary Shelley'),
	(20, 'George Orwell'),
	(21, 'Aldous Huxley'),
	(22, 'George Orwell'),
	(23, 'Robert Kiyosaki'),
	(24, 'Markus Zusak'),
	(25, 'J. R. R. Tolkien')

CREATE TABLE tblLibrary_Branch
(
BranchID int PRIMARY KEY NOT NULL,
BranchName varchar(max) NOT NULL,
[Address] varchar(max) NULL
)
INSERT INTO tblLibrary_Branch
VALUES(1, 'Sharpstown', '123 Sharpstown Dr, Colorado Springs, CO 80920'),
	(2, 'Central', '456 Central St, Colorado Springs, CO 80909'),
	(3, 'East Side', '789 East Side Ave, Colorado Springs, CO 80915'),
	(4, 'Downtown', '2 Downtown Blvd, Colorado Springs, CO 80903'),
	(5, 'Books on Wheels', NULL)

