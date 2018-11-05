/*
This practice is using the Memories Forever Database on the NAIT DMIT Moodle for DMIT1508 - Database Fundamentals.

The Memories Forever database and code was created by DMIT Staff.
Note: The check constrant for HireDate in the Staff table and the InDate & OutDate in the project table need to be reversed
	constraint ck_hiredate check(HireDate <= getdate())
	constraint ck_dates check (InDate <=OutDate)

The data and inserts in this sql file were created by Aric Smith for Supplemental Learning sessions in Fall 2018.
Contact info: arics@nait.ca or aricsmith35@gmail.com
*/



Use [MemoriesForever] -- Make sure this database is created and uses the proper name

/*
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
Insert Data Into Database
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
*/

--Insert Item Types
Insert into itemType (ItemTypeID, ItemTypeDescription) Values (1, 'Labour')
Insert into itemType (ItemTypeID, ItemTypeDescription) Values (2, 'Cameras')
Insert into itemType (ItemTypeID, ItemTypeDescription) Values (3, 'Microphones')
Insert into itemType (ItemTypeID, ItemTypeDescription) Values (4, 'Lights')
Insert into itemType (ItemTypeID, ItemTypeDescription) Values (5, 'Backdrops')


--Insert Items - Note ItemID is an identity
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Labour', $80.00, 1) --id 1

Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon D850', $40.00, 2) --id 2
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon EOS 5D Mk IV', $40.00, 2) --id 3
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon D500', $35.00, 2) --id 4
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon D7500', $35.00, 2) --id 5
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon EOS 80D', $35.00, 2)  --id 6
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon D3400', $30.00, 2)  --id 7
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon EOS 800D', $30.00, 2)  --id 8
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon D750', $30.00, 2)  --id 9
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon EOS 7D Mk II', $25.00, 2)  --id 10
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon D810', $25.00, 2)  --id 11
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Pentax K-1', $20.00, 2)  --id 12
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Sony A99 II', $20.00, 2)  --id 13
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon G3', $20.00, 2) --id 14

Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Shure Beta 87A', $10.00, 3)  --id 15
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Shure SM87', $10.00, 3) --id 16
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('At897', $10.00, 3) --id 17
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Rode NTG2', $10.00, 3) --id 18
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Tascam DR-70D', $10.00, 3) --id 19
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Tascam DR-60D', $10.00, 3) --id 20
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('AT2022 X/Y', $10.00, 3) --id 21
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Shure VP88', $10.00, 3) --id 22
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('AT BP4025 X/Y', $10.00, 3) --id 23
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('AT8022 X/Y', $10.00, 3) --id 24
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Zoom H5', $10.00, 3) --id 25
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Zoom H6', $10.00, 3) --id 26
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Sennheiser ME66', $10.00, 3) --id 27
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Sennheiser MKH-416', $10.00, 3) --id 28
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Sennheiser EW 122P G3', $10.00, 3) --id 29
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Sennheiser AVX MKE2', $10.00, 3) --id 30
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Rode VideoMic Pro', $10.00, 3) --id 31
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Zoom H4n', $10.00, 3) --id 32

Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon Speedlite 430EX III-RT', $10.00, 4) --id 33
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Canon Speedlite Flash 270EX-II', $10.00, 4) --id 34
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon Speedlite Flash SB-700', $10.00, 4) --id 35
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon Speedlite Flash SB-300', $10.00, 4) --id 36
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Nikon AF Speedlite Flash SB-5000', $10.00, 4) --id 37
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Promaster LED308B Bi-Color LED', $10.00, 4) --id 38
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Promaster 57B Ultrasoft Bi-Color LED', $10.00, 4) --id 39
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Promaster VL380 LED (2)', $10.00, 4) --id 40
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Softbox 1ft x 1ft', $10.00, 4) --id 41
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Light Dome 1ft', $10.00, 4) --id 42
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('SoftBox 3ft x 1.5ft', $10.00, 4) --id 43
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Light Dome 2ft', $10.00, 4) --id 44
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Bright Silver Reflector Board 3ft x 2ft', $10.00, 4) --id 45
Insert into Item (ItemDescription, PricePerDay, ItemTypeID) Values ('Dull Silver Reflector Board 3ft x 2ft', $10.00, 4) --id 46

--Insert Staff Types
Insert into StaffType(StaffTypeID, StaffTypeDescription) Values (1, 'Owner')
Insert into StaffType(StaffTypeID, StaffTypeDescription) Values (2, 'Manager')
Insert into StaffType(StaffTypeID, StaffTypeDescription) Values (3, 'Customer Service Rep')
Insert into StaffType(StaffTypeID, StaffTypeDescription) Values (4, 'Editor')

--Insert Staff members
Insert into Staff (StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) Values (1, 'Ryan', 'Jones', 7801234767, 60, 'Jul 17, 2010', 1)
Insert into Staff (StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) Values (2, 'John', 'McLean', 7801223456, 35, 'Jul 28, 2010', 2)
Insert into Staff (StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) Values (3, 'Mary', 'Lane', 7804598726, 24, 'Aug 03, 2010', 3)
Insert into Staff (StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) Values (4, 'Mark', 'Clark', 7803489782, 20, 'Jan 26, 2011', 3)
Insert into Staff (StaffID, StaffFirstName, StaffLastName, Phone, Wage, HireDate, StaffTypeID) Values (5, 'Jenn', 'Smith', 7804687952, 30, 'Jul 30, 2011', 4)

--Insert ProjectTypes
Insert into ProjectType(ProjectTypeCode, ProjectTypeDescription) Values (1, 'Training Seminar')
Insert into ProjectType(ProjectTypeCode, ProjectTypeDescription) Values (2, 'Family Reunion')
Insert into ProjectType(ProjectTypeCode, ProjectTypeDescription) Values (3, 'Wedding')
Insert into ProjectType(ProjectTypeCode, ProjectTypeDescription) Values (4, 'Birthday')
Insert into ProjectType(ProjectTypeCode, ProjectTypeDescription) Values (5, 'Other')

--Insert Clients - Note ClientID is an identity
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Gary', 'Dale', 7805687895, 'GDale@gmail.com', '123 Apple St', 'Tomlinson', 'AB', 'T6H1C2') --id 1
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Dan', 'Ellery', 7806842395, 'DEll@gmail.com', '6978 52st', 'Magrath', 'AB', 'T8J2U8') --id 2
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Quinn', 'McMillan', 7803268574, 'QuinMcM@gmail.com', '89636 58Ave', 'Tomlinson', 'AB', 'T2Y6V7') --id 3
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Ernie', 'Carter', 7809362056, 'ErnCarter@gmail.com', '95874 10st', 'Westbrook', 'AB', 'T8H6S8') --id 4
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Dennis', 'Helgason', 7809852268, 'DennisHelg@gmail.com', '98112 18Ave', 'Tomlinson', 'AB', 'T6J8A1') --id 5
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Tomlinson High School', 'Jim', 'Rutherford', 7804679685, 'JRutherford@TomlinsonHigh.com', '10 Pear St', 'Tomlinson', 'AB', 'T9T1Y6') --id 6
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Tomlinson Minor Hockey', 'Warren', 'Jackson', 7808856468, 'HeadCoach@TomlinsonHockey.com', '11 Pear St', 'Tomlinson', 'AB', 'T9T1Y7') --id 7
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Tomlinson Event Centre', 'Jane', 'Sutherland', 7804256897, 'JaneSuth@Tomlinson.com', '16 Main St', 'Tomlinson', 'AB', 'T5O4X5') --id 8

--Insert Projects - Note ProjectID is an identity                                                                                    (ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID)
Insert into Project(ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID) Values ('Helgason Family Reunion', 'September 14, 2010', 'September 28, 2010', 200, 2, 5, 250, 13.50, 263.50, 3) --id 1
Insert into Project(ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID) Values ('McMillan Wedding', 'March 4, 2011', 'May 2, 2011', 300, 3, 3, 320, 16, 336, 4) --id 2
Insert into Project(ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID) Values ('Shooting Basics', 'August 1, 2011', 'August 15, 2011', 600, 1, 7, 595, 29.75, 624.75, 4) --id 3
Insert into Project(ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID) Values ('Tomlinson Grad 2012', 'July 03, 2012', 'August 6, 2012', 800, 5, 6, 760, 38, 798, 3) --id 4
Insert into Project(ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID) Values ('Jackson Dale 3rd Birthday', 'October 28, 2012', 'November 5, 2012', 120, 4, 1, 120, 6, 126, 4) --id 5

--Insert ProjectItems
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (14, 1, ' ', ' ', 'Aug 28, 2010', 'Aug 30, 2010', 40, 40, 2)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (1, 1, ' ', ' ', ' ', ' ', 210, 210, 3)

Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (4, 2, ' ', ' ', 'Feb 26, 2011', 'Feb 27, 2011', 40, 40, 1)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (1, 2, ' ', ' ', ' ', ' ', 280, 280, 3.5)

Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values(6, 3, ' ', ' ', 'July 4, 2011', 'July 14 2011', 315, 315, 9)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (1, 3, ' ', ' ', ' ', ' ', 280, 280, 3.5)

Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values(2, 4, ' ', ' ', 'June 28, 2012', 'June 29 2012', 40, 40, 1)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values(33, 4, ' ', ' ', 'June 28, 2012', 'June 29 2012', 10, 10, 1)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values(27, 4, ' ', ' ', 'June 28, 2012', 'June 29 2012', 10, 10, 1)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values(41, 4, 'x2', 'x2', 'June 28, 2012', 'June 29 2012', 20, 20, 1)
Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (1, 4, ' ', ' ', ' ', ' ', 720, 720, 9)

Insert into ProjectItem(ItemID, ProjectID, CheckInNotes, CheckOutNotes, DateOut, DateIn, ExtPrice, Historicalprice, Days) Values (1, 5, ' ', ' ', ' ', ' ', 120, 120, 1.5)




/*
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
Select Data From Database
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
*/


/*
------------------------------------------------------------------------------------------
Simple Selects
------------------------------------------------------------------------------------------
*/

-- Select all the projects and their info from the project table


-- Who are the clients we have in this database?


-- How many people work here?


-- What are the names of the workers?


--Repeat the last query using aliases


-- Repeat once again combining the columns into full name



/*
------------------------------------------------------------------------------------------
Simple Selects with 'Where'
------------------------------------------------------------------------------------------
*/

-- Who has a staff type ID of 1?


-- What position is that staff typeID?


-- How many items have been rented for more than one day and what project were they for?


-- Wait! We don't need to see the "Labour" item, do the search again without it


-- Do any of them have an organization? What is that organization? (Note the default organization is just 'Customer')


-- How many client last names start with an M?


-- What is their name?


-- What about clients that have a first name starting with J?


-- What clients have 'a' the second letter of their first name?


--What staff member have more or less than 4 letters in their first name?


--That's strange... There are staff members! How many don't have 4 letters in their first name?




/*
------------------------------------------------------------------------------------------
Simple Selects with date or string functions
------------------------------------------------------------------------------------------
*/

--What is the length of the last names and the last name of our clients?


--What staff members have a last name 6 letters long?


--What are the first 2 letters of each clients name?


--Select clients name in the format of first letter of first name.last name Ex J.Doe


--Select the staff initials


--What is the last 2 letters of each Item description


--What is the last 3 characters of each clients postal code?


--What are 2nd and 3rd letter of each project description?


--What about the 2nd and 5th letter of each client's organization?


--What are all the client names in reverse?


--What are all the client postal codes in lower case?


--What about all the client addresses in Upper case?


--What year was the owner hired/the company started? (StaffID = 1)


--What month was the first project started in?




/*
------------------------------------------------------------------------------------------
Simple Select aggregates
------------------------------------------------------------------------------------------
*/

--What is the average amount we make on a project?


-- How much have we made total from projects?


--What was the least expensive project?


--What was the most expensive project?


--How many projects have we done


--Just for fun, do all the aggregates in one line!


--What is the average amount spent on items?


--That's great, but not that useful... What about the average amount spent on each item?


--Cool! What about the sum too? 


-- How much money is spent on each project per item on averge and the total?



/*
------------------------------------------------------------------------------------------
Simple Selects with 'Order By'
------------------------------------------------------------------------------------------
*/

--Select all the project items, we just need the ItemID and Project ID


-- That's a hard to read table... Order it by the projectID


-- Is ordering by the days rented - What are the most used items


-- Hm... That goes from shotest rented to longest rented... Try going longest to shortest?


--We don't need to see labour, we don't rent it out. Take it out of the search.



/*
------------------------------------------------------------------------------------------
Unions
------------------------------------------------------------------------------------------
*/

--To make sure we know what we are looking for. Select all customers and all staff


--Select all the people that we have dealt/worked with Ie: Customers and staff


--What Item types, Staff types and project types do we have?



/*
------------------------------------------------------------------------------------------
Inner Joins
------------------------------------------------------------------------------------------
*/

--What are the names of the items from the previous query?


--Awesome! Now we are getting somewhere. What is the name of the projects that those items were used on?


-- Who was the client for each project?


--What items appeared on a project?



--What project items where on the project for Client 6, and what are the item names?



/*
------------------------------------------------------------------------------------------
Inner Joins with Aggregates
------------------------------------------------------------------------------------------
*/

--How many staff do we have in each staff type?


--What is the average sale for the staff members that have made a sale?


--What is the average amount spent on labour costs? What about the max and min? Display the Id, description and the values.



/*
------------------------------------------------------------------------------------------
Outer Joins
------------------------------------------------------------------------------------------
*/

--Select all the clients and their projects - Even if they didnt have a a project



--Do the same with a right outer join


--Select all items and the project they were used for?


--Again, do the same with a right outer join



/*
------------------------------------------------------------------------------------------
All and Distinct
------------------------------------------------------------------------------------------
*/

--Select all items that are on a project


--That's alot of labour items... I don't think we need to see them all. Just show each item once


--Well, I think we want to see how many times each item appears. Add a column to show how many times the item appears


--Great! Now just to check. Select all again to make sure they are there
--Note: The select is a tiny bit different but will give the same result as the first query in this section


/*
------------------------------------------------------------------------------------------
Views
Note: These can be finicky with intellisense. Ctrl + Shift + R refreshes intellisense
	  Views need to be the only statement in a batch. GO makes sure that a new batch starts
------------------------------------------------------------------------------------------
*/

--Let's make a view that has the clients, their project type, project description, and the staff members that helped them and their type description


--Let's see what we made


--Hmm. I think we should add how much they cost. Alter the view to show the total too.


--Let's check the view again


--What was the code to make that view? I don't feel like looking up a few lines...
--Note: This might be red, but should still work


--We don't really need that view any more. You can get rid of it


/*
------------------------------------------------------------------------------------------
SubQueries
------------------------------------------------------------------------------------------
*/

--Select the staff types


--Using a subquery, find the owner


--What items have not appeared on a project?


--What Staff have not done a project?


--What customers have not done a project?


--What staff have a higher than average wage?


--Where are our clients from - How many from each city?


--Which city has the most students?


--More of a challenge just for fun - Nested subqueries - Subquery in a subquery - Subqueryception!
--(They don't necessarily need multiple subqueries, just the way I chose to do these questions for a proof of concept)
--What are the staff types that have not done a project?


--What types of items have not been used on a project? 

/*
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
DML
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
*/

/*
------------------------------------------------------------------------------------------
Insert
------------------------------------------------------------------------------------------
*/

--We forgot to add someome to our staff earlier. Dwight	Swanson was hired on Feburary 13, 2011. His phone number is 7807586695 and he is an editor and makes 28/hr. Add him to the database


--We are also going to be hiring a compositor soon. Add the position so the database is ready for it


--We can rent out a laptop now! Add an MSI P56 Creator to the item table. It's 50 per day to rent and needs a new item type of 'Laptops'


--Also add another Laptop. A Microsoft Surface Book 2 for 45 per day




/*
------------------------------------------------------------------------------------------
Update
------------------------------------------------------------------------------------------
*/

--Oops! The Laptop is an MSI P65 Creator. Fix that record to the proper name.


--Hmm. The laptops should be a bit more. Make them both $60 per day


/*
------------------------------------------------------------------------------------------
Delete
------------------------------------------------------------------------------------------
*/

--Our accountant says it's not profitable enough to rent out laptops. Delete the laptops and the item type


--We also had to fire Dwight. Since we don't track releases, delete his record from the database. We will just keep the backup records
--Note: Generally you don't want to delete things like staff from databases. You just track their release/fire dates.

/*
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
Stored Procedures
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
*/

--The way Dan does drops for procedures:
--If Exists (Select * from INFORMATION_SCHEMA.ROUTINES Where ROUTINE_TYPE = N'PROCEDURE' AND ROUTINE_NAME = '')
--    Drop Procedure 
--GO

/*
------------------------------------------------------------------------------------------
Stored Procedures - Simple
------------------------------------------------------------------------------------------
*/

--Create a stored procedure to list all the clients without a project


--Create a procedure to find all the items we haven't used on a project

--Create a stored procedure to show how many staff members we have of each staff type


--Create a procedure to find the projects that have earned higher than average total. 
--Display the ProjectID, Description, Project Type and total


--Create a procedure to find the highest total project. 
--Display the ProjectID, Description, Project Type and total


--Create a procedure to find the client who has spent the most money on projects
--Display their name and the total they spent


/*
------------------------------------------------------------------------------------------
Stored Procedures - Parameters
------------------------------------------------------------------------------------------
*/

--Create a procedure to find projects that have a total greater than a given amount
--Display the ProjectID, Description, Project Type and total


--Create a procedure to find how many projects a particular item has been used on


--Create a procedure to show all clients from a given city
