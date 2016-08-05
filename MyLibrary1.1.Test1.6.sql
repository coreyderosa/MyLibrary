--Retrieve the names, addresses, and number of books checked out for all borrowers who have more
--than five books checked out.
USE dbMyLibrary
GO

DECLARE @dueDate DATE
SET @dueDate = GETDATE()

SELECT COUNT(BL.CardNO) AS NumberOfBooksCheckedOut, BR.BorrowerName, BR.BorrowerAddress
FROM tblBook_Loans AS BL
INNER JOIN tblBorrower as BR
ON BL.CardNO = BR.CardNO
WHERE BL.DueDate > @dueDate
GROUP BY BR.BorrowerName, BR.BorrowerAddress
HAVING COUNT(BL.BookID) >= 5