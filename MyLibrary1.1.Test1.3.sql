USE dbMyLibrary
GO

SELECT *
FROM tblBorrower AS BR
LEFT JOIN tblBook_Loans AS BL
ON BR.CardNO = BL.CardNO
WHERE BR.CardNO NOT IN (SELECT CardNO FROM tblBook_Loans)


/* This will find the opposite of 0 books checked out.  THis shows all borrowers who have books checked out and how many they have checked out
--
SELECT  BR.BorrowerName, COUNT(BL.CardNO) AS NumberOfBooksCheckOut
FROM tblBook_Loans AS BL
INNER JOIN tblBorrower as BR
ON BL.CardNO = BR.CardNO
GROUP BY BR.BorrowerName
HAVING COUNT(BL.BookID) > 1
--
*/