USE dbMyLibrary
GO

SELECT BC.No_Of_Copies, B.Title, LB.BranchName
FROM tblBook_Copies AS BC, tblBook AS B, tblLibrary_Branch AS LB
WHERE Title = 'The Lost Tribe'
	AND BC.BookID = '8'
	AND BC.BranchID = LB.BranchID
	