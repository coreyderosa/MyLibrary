--Finds total books loaned out that have not been returned to respective branch(assuming all borrowers have returned books by due date).  Shows total books out for all branches
USE dbMyLibrary
GO

DECLARE @dueDate DATE
SET @dueDate = GETDATE()

SELECT CASE WHEN GROUPING(BranchName)=1 THEN 'TOTAL BOOKS OUT' ELSE BranchName end as BranchName, COUNT(DueDate) AS BooksLoanedOut
FROM tblBook_Loans AS BL
INNER JOIN tblLibrary_Branch AS LB
ON BL.BranchID = LB.BranchID
WHERE BL.DueDate > @dueDate
GROUP BY ROLLUP(BranchName)

/*--Finds books with DateOut value and respective Branch
SELECT LB.BranchName, COUNT(DateOut) AS BooksLoaned
FROM tblBook_Loans AS BL
INNER JOIN tblLibrary_Branch AS LB
ON BL.BranchID = LB.BranchID
GROUP BY LB.BranchName
*/

/*--Finds books with DateOut value and respective Branch with Total books out
SELECT CASE WHEN GROUPING(BranchName)=1 THEN 'Total Books Out' ELSE BranchName end as BranchName, COUNT(DateOut) AS BooksLoaned
FROM tblBook_Loans AS BL
INNER JOIN tblLibrary_Branch AS LB
ON BL.BranchID = LB.BranchID
GROUP BY ROLLUP(BranchName)
*/
