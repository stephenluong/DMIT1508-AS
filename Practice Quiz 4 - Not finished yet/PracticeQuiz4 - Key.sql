/*

Practice Quiz 4 - Triggers 

Practice quiz for SL for DMIT 1508 Fall 2018

This quiz uses the Memories Forever database.
The Memories Forever database and code was created by the staff of the DMIT program. The inserted data was created by Aric Smith.


Note: The check constrant for HireDate in the Staff table and the InDate & OutDate in the project table need to be reversed
	constraint ck_hiredate check(HireDate <= getdate())
	constraint ck_dates check (InDate <=OutDate)

	Contact info: arics@nait.ca
*/


--1. Create an insert/update trigger that will ensure that a staff's hire date is valid (before the current date)

drop trigger TR_StaffHireDate_InsertUpdate
go

Create trigger TR_StaffHireDate_InsertUpdate
on staff
for insert, update
as
If @@ROWCOUNT > 0 and UPDATE(HireDate)
	Begin
		If exists (Select * from inserted where HireDate > GETDATE())
			Begin
			RaisError('Hire date is invalid. Please enter a hire date that is before the current date', 16, 1)
			Rollback Transaction
			End
	End
return
go

--Testing
Insert into Staff(StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) --Passes
Values (998, 'Staff', 'Member1', 1111111111, 10, 'December 01, 2018', 3)

Insert into Staff(StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) --Fails
Values (999, 'Staff', 'Member', 1111111111, 10, 'December 01, 2019', 3)

go



--2. Create an Delete trigger to make sure that if a client is deleted, they don't have a project.

drop trigger TR_ClientProject_Delete
go

create trigger TR_ClientProject_Delete
on client
for delete
as
if @@ROWCOUNT > 0
	Begin
		If exists (Select * from deleted 
					inner join Project on project.ClientID = deleted.ClientID)
		Begin
			RaisError('Client has projects. Unable to delete client', 16, 1)
			Rollback Transaction
		End
	End
return
go

--Testing
Delete from Client where ClientID = 3 --Fails
Delete from Client where ClientID = 2 --Passes
go


--3. Create an insert/update trigger that will ensure that will set a project's total and GST are the appropriate value (Total = GST + Subtotal, GST is 5%), when the subtotal is updated. 
drop trigger TR_ProjectTotal_InsertUpdate
go

create trigger TR_ProjectTotal_InsertUpdate
on project
for insert, update 
as
	If @@ROWCOUNT > 0 and UPDATE(subtotal)
	begin
		Update Project
		Set Total = (Select subtotal from inserted) + ((Select subtotal from inserted) * 0.05),
			GST = ((Select subtotal from inserted) * 0.05)
		where ProjectId = (Select ProjectId from inserted)
		If @@ERROR != 0
			begin
				RaisError('Update failed', 16, 1)
				Rollback Transaction
			end
	end
return
go

--Testing
Update Project 
 Set SubTotal = 60
 where ProjectId = 5

 Update Project 
 Set SubTotal = 120
 where ProjectId = 5

 go


--4. Create a trigger an update that will log any changes to item prices. It should also ensure that the item price is not changing by more than 15%.

drop table ItemPriceUpdateLog
go

create table ItemPriceUpdateLog
(
ChangeID int not null identity (1,1) constraint pk_ItemPriceUpdateLog primary key clustered,
ChangeDate datetime not null,
OldPrice money not null,
NewPrice money not null
) 
go

drop trigger TR_ItemPriceChange_Update
go

create trigger TR_ItemPriceChange_Update
on item
for update
as
	if @@ROWCOUNT > 0 and update(priceperday)
		begin
			if exists (Select * from inserted 
						inner join deleted on inserted.itemid = deleted.ItemID
						where inserted.PricePerDay * 1.15 > deleted.PricePerDay or inserted.PricePerDay * 0.85 < deleted.PricePerDay)
				begin
					RaisError('Price change is too much, make sure it is less that a 15 percent change', 16, 1)
					Rollback Transaction
				end
			else
				begin
					Insert into ItemPriceUpdateLog(ChangeDate, OldPrice, NewPrice)
					values (GETDATE(), (Select PricePerDay from Deleted), (Select PricePerDay from Inserted))
					If @@ERROR != 0
						 begin
							RaisError('Insert into log table failed', 16, 1)
							Rollback Transaction
						 end
				end
		end
return
go

select * from Item

Update Item
set PricePerDay = 800
where ItemID = 1

Update Item
set PricePerDay = 8
where ItemID = 1

Update Item
set PricePerDay = 85
where ItemID = 1



