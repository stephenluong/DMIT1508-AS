/*

Practice Quiz 3 - Stored Procedures 

Practice quiz for SL for DMIT 1508 Fall 2018

This quiz uses the Memories Forever database.
The Memories Forever database and code was created by DMIT Staff.
Note: The check constrant for HireDate in the Staff table and the InDate & OutDate in the project table need to be reversed
	constraint ck_hiredate check(HireDate <= getdate())
	constraint ck_dates check (InDate <=OutDate)

	Contact info: arics@nait.ca

	Quiz should be:
	4-5 Questions
		Stored Procedures
			- 50% of marks on stored procedures with transactions
			- Create vs Alter Procedures
			- Executing Stored Procedures
*/


--1. Create a stored procedure called 'ClientProjects' that will return all the project names, their inDate and outDate(just the name of month and year as seperate columns ex. Janurary 2000), 
--their total cost, as well as the client for that project and the staff member's name that worked on it (Names should be 1 column).

drop procedure ClientProjects
go

create procedure ClientProjects
as
	Select ProjectDescription, DateName(mm, inDate) as 'Month in', DatePart(yy, inDate) as 'Year in', DateName(mm, OutDate) as 'Month Out', Year(outdate) as 'Year Out', total, ClientFirstName + ' ' + ClientLastName as 'Client Name', StaffFirstName + ' ' + StaffLastName as 'Staff Name'
	From Client
	Inner Join Project on Project.ClientID = Client.ClientID
	Inner Join Staff on Project.StaffID = Staff.StaffID
return
go

Exec ClientProjects
go



--2. 




--3. Alter the ClientProjects procedure to accept a project id, and show all the same info for the entered id

Alter procedure ClientProjects (@projectid int = null)
as
	Select ProjectDescription, DateName(mm, inDate) as 'Month in', DatePart(yy, inDate) as 'Year in', DateName(mm, OutDate) as 'Month Out', Year(outdate) as 'Year Out', total, ClientFirstName + ' ' + ClientLastName as 'Client Name', StaffFirstName + ' ' + StaffLastName as 'Staff Name'
	From Client
	Inner Join Project on Project.ClientID = Client.ClientID
	Inner Join Staff on Project.StaffID = Staff.StaffID
	where ProjectId = @projectid
return
go

Exec ClientProjects 2
go



--4. 


--5. 












