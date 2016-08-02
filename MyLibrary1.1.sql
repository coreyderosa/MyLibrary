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


CREATE TABLE tblBook_Copies
(
BookID int NOT NULL,
BranchID int NOT NULL,
No_Of_Copies int NOT NULL
)
INSERT INTO tblBook_Copies
VALUES(1, 1, 2),
	(2, 1, 2),
	(3, 1, 2),
	(4, 1, 2),
	(5, 1, 2),
	(6, 1, 2),
	(7, 1, 2),
	(8, 1, 2),
	(9, 1, 2),
	(10, 1, 2),
	(11, 1, 2),
	(12, 1, 2),
	(13, 1, 2),
	(14, 1, 2),
	(15, 1, 2),
	(16, 1, 2),
	(17, 1, 2),
	(18, 1, 2),
	(19, 1, 2),
	(20, 1, 2),
	(21, 1, 2),
	(22, 1, 2),
	(23, 1, 2),
	(24, 1, 2),
	(25, 1, 2),
		(1, 2, 2),
	(3, 2, 7),
	(5, 2, 3),
	(7, 2, 5),
	(9, 2, 10),
	(11, 2, 2),
	(13, 2, 4),
	(15, 2, 2),
	(17, 2, 2),
	(19, 2, 5),
	(21, 2, 3),
		(1, 3, 2),
	(2, 3, 3),
	(4, 3, 5),
	(6, 3, 4),
	(8, 3, 3),
	(10, 3, 2),
	(12, 3, 5),
	(14, 3, 2),
	(16, 3, 3),
	(18, 3, 4),
	(20, 3, 2),
	(22, 3, 3),
		(1, 4, 2),
	(2, 4, 3),
	(5, 4, 2),
	(6, 4, 4),
	(8, 4, 2),
	(11, 4, 4),
	(13, 4, 3),
	(14, 4, 5),
	(15, 4, 27),
	(17, 4, 5),
	(19, 4, 2),
	(21, 4, 2),
		(1, 5, 2),
	(3, 5, 5),
	(4, 5, 10),
	(6, 5, 3),
	(7, 5, 4),
	(9, 5, 2),
	(10, 5, 5),
	(11, 5, 3),
	(13, 5, 4),
	(15, 5, 2),
	(17, 5, 3),
	(18, 5, 5),
	(19, 5, 2),
	(20, 5, 2),
	(22, 5, 4),
	(23, 5, 2),
	(25, 5, 2)

CREATE TABLE tblBorrower
(
CardNO int PRIMARY KEY NOT NULL,
BorrowerName varchar(max) NOT NULL,
BorrowerAddress varchar(max) NULL,
BorrowerPhone varchar(20) NULL
)
INSERT INTO tblBorrower
VALUES(1, 'Don Johnson', '123 Johnson Dr, Colorado Springs, CO 80903', '719-555-1234'),
	(2, 'Donald Trump', '456 Trump St, Colorado Springs, CO 80905', '719-555-7737'),
	(3, 'Hillary Clinton', '789 Clinton Ave, Colorado Springs, CO 80910', '719-555-3862'),
	(4, 'Joe Broney', '2 Broney Blvd, Colorado Springs, CO 80915', '719-555-4663'),
	(5, 'JoAnne Bronifer', '2468 Bronifer Lane, Colorado Springs, CO 80909', NULL),
	(6, 'Dr. Dre', '999 Beats Dr, Colorado Springs, CO 80903', '719-555-4325'),
	(7, 'Homer Simpson', '456 Homer St, Colorado Springs, CO 80905', '719-555-4568'),
	(8, 'King Kong', NULL, '719-555-5664'),
	(9, 'Bruce Wayne', '1 Gotham Place, Colorado Springs, CO 80915', '719-555-0258'),
	(10, 'Joe Sakic', '111 Stanley Cup Dr, Colorado Springs, CO 80909', NULL)


CREATE TABLE tblBook_Loans
(
BookID int NOT NULL,
BranchID int NOT NULL,
CardNO int NOT NULL,
DateOut date NULL,
DueDate date NULL
)

INSERT INTO tblBook_Loans
VALUES(1, 1, 1, '2016-08-01', '2016-08-16'),
	(2, 1, 2, '2015-01-01', '2015-01-16'),
	(3, 1, 3, NULL, NULL),
	(4, 1, 4, NULL, NULL),
	(5, 1, 5, NULL, NULL),
	(6, 1, 6, NULL, NULL),
	(7, 1, 7, '2016-05-11', '2016-05-25'),
	(8, 1, 8, '2015-04-22', '2015-07-22'),
	(9, 1, 9, NULL, NULL),
	(10, 1, 10, NULL, NULL),
	(11, 1, 1, '2014-01-30', '2014-05-03'),
	(12, 1, 2, NULL, NULL),
	(13, 1, 3, '2011-05-15', '2011-06-14'),
	(14, 1, 4, '2016-07-07', '2016-09-10'),
	(15, 1, 5, '2015-02-28', '2016-02-29'),
	(16, 1, 6, NULL, NULL),
	(17, 1, 7, NULL, NULL),
	(18, 1, 8, '2015-09-12', '2016-09-27'),
	(19, 1, 9, NULL, NULL),
	(20, 1, 10, '2015-08-01', '2015-10-19'),
	(21, 1, 1, NULL, NULL),
	(22, 1, 2, '2014-12-20', '2014-12-31'),
	(23, 1, 3, '2015-01-25', '2015-08-09'),
	(24, 1, 4, NULL, NULL),
	(25, 1, 5, '2016-01-01', '2016-07-25'),
	(1, 2, 6, NULL, NULL),
	(3, 2, 7, '2016-05-01', '2016-08-30'),
	(5, 2, 3, NULL, NULL),
	(7, 2, 5, '2016-04-01', '2016-10-31'),
	(9, 2, 10, NULL, NULL),
	(11, 2, 2, NULL, NULL),
	(13, 2, 4, NULL, NULL),
	(15, 2, 8, NULL, NULL),
	(17, 2, 2, NULL, NULL),
	(19, 2, 5, '2016-07-04', '2016-07-11'),
		(21, 2, 3, '2016-06-10', '2016-07-09'),
	(1, 3, 2, '2015-01-05', '2015-05-06'),
	(2, 3, 3, NULL, NULL),
	(4, 3, 5, NULL, NULL),
	(6, 3, 4, '2015-12-31', '2016-01-07'),
	(8, 3, 3, '2016-08-01', '2017-08-01'),
	(10, 3, 2, '2014-11-21', '2015-02-14'),
	(12, 3, 5, '2014-03-19', NULL),
	(14, 3, 2, NULL, NULL),
	(16, 3, 3, NULL, NULL),
	(18, 3, 4, '2012-08-08', '2016-08-08'),
	(20, 3, 9, NULL, NULL),
	(22, 3, 3, '2011-03-04', '2015-04-04'),
	(1, 4, 2, NULL, NULL),
	(2, 4, 3, '2015-05-05', '2016-06-06'),
	(5, 4, 10, '2012-06-06', '2015-07-07'),
	(6, 4, 4, '2016-08-08', '2016-09-09'),
	(8, 4, 1, '2015-10-10', '2015-11-11'),
	(11, 4, 4, NULL, NULL),
	(13, 4, 3, NULL, NULL),
	(14, 4, 5, '2015-12-12', '2016-01-01'),
	(15, 4, 6, NULL, NULL),
	(17, 4, 5, NULL, NULL),
	(19, 4, 2, '2016-02-02', '2016-03-03'),
	(21, 4, 7, NULL, NULL),
	(1, 5, 2, '2014-04-05', '2015-06-07'),
	(3, 5, 5, '2016-07-08', '2016-08-09'),
	(4, 5, 10, '2012-09-10', '2013-10-11'),
	(6, 5, 3, NULL, NULL),
	(7, 5, 4, NULL, NULL),
	(9, 5, 8, '2015-11-12', '2015-12-13'),
	(10, 5, 5, NULL, NULL),
	(11, 5, 3, '2016-06-22', '2016-07-23'),
	(13, 5, 4, NULL, NULL),
	(15, 5, 2, NULL, NULL),
	(17, 5, 3, NULL, NULL),
	(18, 5, 5, '2016-05-19', '2016-07-13'),
	(19, 5, 2, NULL, NULL),
	(20, 5, 2, NULL, NULL),
	(22, 5, 4, NULL, NULL),
	(23, 5, 2, NULL, NULL),
	(25, 5, 2, '2015-08-15', '2015-09-01')
