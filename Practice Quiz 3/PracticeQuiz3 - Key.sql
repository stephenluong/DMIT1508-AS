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
--Include appropriate error handling and/or transactions if needed.

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



--2. Create a stored procedure called 'NewProject' that will accept a project description(name), in date, out date, 
--estimate, project type code, client ID, subtotal, GST, total, and staff ID. It will create a new project record with the given parameters.
--Include appropriate error handling and/or transactions if needed.

drop procedure NewProject
go

create procedure NewProject(
	@description varchar(100) = null,
	@indate datetime = null,
	@outdate datetime = null,
	@estimate money = null,
	@projecttypecode int = null,
	@clientid int = null,
	@subtotal money = null,
	@gst money = null,
	@total money = null,
	@staffid int = null)
as
	If @description is null OR @indate is null OR @outdate is null OR @estimate is null OR @projecttypecode is null OR @clientid is null
	OR @subtotal is null OR @gst is null OR @total is null OR @staffid is null
		Begin
			RaisError('Please enter all parameters',16,1)
		End
	Else
		Begin
			Insert into Project (ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID)
			Values (@description, @indate, @outdate, @estimate, @projecttypecode, @clientid, @subtotal, @gst, @total, @staffid)
			
			If @@ERROR != 0
				Begin
					RaisError('Project insert failed', 16, 1)
				End
			Else
			Begin
				Select @@IDENTITY as 'New project ID'
			End
		End
Return
Go

Exec NewProject 'TestProject', 'December 3, 2018', 'December 4, 2018', 25, 1, 2, 25, 1.25, 26.25, 1
go


--3. Alter the ClientProjects procedure to accept a project id, and show all the same info for the entered id
--Include appropriate error handling and/or transactions if needed.

Alter procedure ClientProjects (@projectid int = null)
as
if @projectid is null
	Begin
		RaisError('Please enter a project ID to search', 16, 1)
	End
Else
		Select ProjectDescription, DateName(mm, inDate) as 'Month in', DatePart(yy, inDate) as 'Year in', DateName(mm, OutDate) as 'Month Out', Year(outdate) as 'Year Out', total, ClientFirstName + ' ' + ClientLastName as 'Client Name', StaffFirstName + ' ' + StaffLastName as 'Staff Name'
		From Client
		Inner Join Project on Project.ClientID = Client.ClientID
		Inner Join Staff on Project.StaffID = Staff.StaffID
		where ProjectId = @projectid
return
go

Exec ClientProjects 2
go


--4. Create a stored procedure called 'SwapStaffMember' that accepts a staff ID number and a project ID number. The procedure will swap the old 
--staff member on the passed project with the passed in staff member. The old staff member should have their wage deducted by $0.50, and the new staff member 
--gets $0.50 added to their wage.
--Include appropriate error handling and/or transactions if needed.

drop procedure SwapStaffMember
go

create procedure SwapStaffMember (@staffid int = null, @projectid int = null)
as
If @staffid is null OR @projectid is null
	Begin
	RaisError('Please supply a staff id and project id', 16, 1);
	End
else
	Begin
		Begin Transaction
		--Minus the wage from the outgoing staff member
		Update Staff
		set Wage = wage - 0.50
		where StaffID = (Select StaffID from Project where ProjectId = @projectid)
		If @@ERROR != 0 or @@ROWCOUNT = 0
			Begin
				RaisError('Deduct wage failed', 16, 1)
				Rollback Transaction
			End
		Else
			Begin
				--Swap the staff member on the project
				Update Project
				set StaffID = @staffid
				where projectid = @projectid
				If @@ERROR != 0 or @@ROWCOUNT = 0
					Begin
						RaisError('Change staff on project failed', 16, 1)
						Rollback Transaction
					End
				Else
					--Increase the wage of the incoming staff member
					Update Staff
					set Wage = Wage + 0.50
					where StaffID = @staffid
					If @@ERROR != 0 or @@ROWCOUNT = 0
						Begin
							RaisError('Increase staff wage failed', 16, 1)
							Rollback Transaction
						End
					Else
						Begin
							Commit Transaction
						End
			End
	End
return
go

Exec SwapStaffMember 3, 10
go

--Checking if the updates worked
Select * from Project where ProjectId = 10
Select * from Staff
go


--5. Create a stored procedure called 'AddItemToProject' that accepts an item id, project ID, check in notes, check out notes, date out, date in, and days. The procedure should add the item to the projects items.
--It should update the appropriate columns (ex price) in all appropriate tables.
--Remember extended price is a 'not null' field and is the item's price per day multiplied by the days (historical price and extended price can be the same in this instance).
--Include appropriate error handling and/or transactions if needed.

drop procedure AddItemToProject
go

Create procedure AddItemToProject(
@itemid int = null,
@projectid int = null,
@checkinnotes varchar(200) = null,
@checkoutnotes varchar(200) = null,
@dateout datetime = null,
@datein datetime = null,
@days smallint = null)
as
If @itemid is null OR @projectid is null OR @checkinnotes is null OR @checkoutnotes is null OR @dateout is null OR @datein is null OR @days is null
	begin
		RaisError('All Parameters are required', 16, 1)
	end
Else
	Begin
		Begin Transaction
		Insert into ProjectItem (ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days)
		values (@itemid, @projectid, @checkinnotes, @checkoutnotes, @dateout, @datein, ((Select PricePerDay from Item where ItemID = @itemid) * @days), 
				((Select PricePerDay from Item where ItemID = @itemid) * @days), @days)
		If @@ERROR != 0
			Begin
				RaisError('Insert into ProjectItem table failed', 16, 1)
				Rollback Transaction
			End
		Else
			Update Project
			Set SubTotal = SubTotal + ((Select PricePerDay from Item where ItemID = @itemid) * @days),
				GST = ( (SubTotal + ((Select PricePerDay from Item where ItemID = @itemid) * @days)) * 0.05),
				Total = ( (SubTotal + ((Select PricePerDay from Item where ItemID = @itemid) * @days)) + (( (SubTotal + ((Select PricePerDay from Item where ItemID = @itemid) * @days)) * 0.05)) )
			If @@ERROR != 0
				Begin
					RaisError('Update Project table failed', 16, 1)
					Rollback Transaction
				End
			Else
			Commit Transaction
	End
return
go

Exec AddItemToProject 1, 15, 'None', 'None', 'December 1, 2018', 'December 2, 2018', 1

Select * from Item where ItemID = 1 --PricePerDay = $80
Select * from ProjectItem where ProjectID = 15
Select * from Project where ProjectID = 15










