SELECT B.Title, BC.No_Of_Copies, LB.BranchName
FROM tblBook AS B 
INNER JOIN tblBook_Copies AS BC
ON B.BookID= BC.BookID
INNER JOIN tblLibrary_Branch AS LB
ON LB.BranchName = 'Sharpstown'
WHERE B.Title = 'The Lost Tribe'