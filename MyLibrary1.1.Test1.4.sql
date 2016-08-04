--For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, borrower's name and the borrower's address
USE dbMyLibrary
GO

SELECT LB.BranchName, BO.Title, BL.DueDate, BR.BorrowerName, BR.BorrowerAddress 
FROM tblLibrary_Branch AS LB
INNER JOIN tblBook_Loans AS BL
ON LB.BranchID = BL.BranchID
INNER JOIN tblBorrower AS BR
ON BL.CardNO = BR.CardNO
INNER JOIN tblBook AS BO
ON BL.BookID = BO.BookID
WHERE LB.BranchName = 'Sharpstown'
AND BL.DueDate = '08-03-2016'