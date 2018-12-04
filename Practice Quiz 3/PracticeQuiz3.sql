/*

Practice Quiz 3 - Stored Procedures 

Practice quiz for SL for DMIT 1508 Fall 2018

This quiz uses the Memories Forever database.
The Memories Forever database and code was created by DMIT Staff.
Note: The check constrant for HireDate in the Staff table and the InDate & OutDate in the project table need to be reversed
	constraint ck_hiredate check(HireDate <= getdate())
	constraint ck_dates check (InDate <=OutDate)

	Contact info: arics@nait.ca
*/


--1. Create a stored procedure called 'ClientProjects' that will return all the project names, their inDate and outDate(just the name of month and year as seperate columns ex. Janurary 2000), 
--their total cost, as well as the client for that project and the staff member's name that worked on it (Names should be 1 column).
--Include appropriate error handling and/or transactions if needed.



--2. Create a stored procedure called 'NewProject' that will accept a project description(name), in date, out date, 
--estimate, project type code, client ID, subtotal, GST, total, and staff ID. It will create a new project record with the given parameters.
--Include appropriate error handling and/or transactions if needed.



--3. Alter the ClientProjects procedure to accept a project id, and show all the same info for the entered id
--Include appropriate error handling and/or transactions if needed.



--4. Create a stored procedure called 'SwapStaffMember' that accepts a staff ID number and a project ID number. The procedure will swap the old 
--staff member on the passed project with the passed in staff member. The old staff member should have their wage deducted by $0.50, and the new staff member 
--gets $0.50 added to their wage.
--Include appropriate error handling and/or transactions if needed.




--5. Create a stored procedure called 'AddItemToProject' that accepts an item id, project ID, check in notes, check out notes, date out, date in, and days. The procedure should add the item to the projects items.
--It should update the appropriate columns (ex price) in all appropriate tables.
--Remember extended price is a 'not null' field and is the item's price per day multiplied by the days (historical price and extended price can be the same in this instance).
--Include appropriate error handling and/or transactions if needed.











