USE dbMyLibrary
GO

SELECT *
FROM tblLibrary_Branch AS LB, tblBook AS B, tblBook_Copies AS BC
WHERE LB.BranchID = BC.BranchID
	AND B.Title = 'The Lost Tribe'
	AND LB.BranchName = 'Sharpstown'
	AND BC.BookID = '8'