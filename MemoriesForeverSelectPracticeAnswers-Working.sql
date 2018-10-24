/*
This practice is using the Memories Forever Database on the NAIT DMIT Moodle for DMIT1508 - Database Fundamentals.

The Memories Forever database and code was created by DMIT Staff.

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
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Dan', 'Ellery', 7806842395, 'DEll@gmail.com', '6978 52st', 'Tomlinson', 'AB', 'T8J2U8') --id 2
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Quinn', 'McMillan', 7803268574, 'QuinMcM@gmail.com', '89636 58Ave', 'Tomlinson', 'AB', 'T2Y6V7') --id 3
Insert into Client(Organization, ClientFirstName, ClientLastName, Phone, Email, Address, City, Province, PC) Values ('Customer', 'Ernie', 'Carter', 7809362056, 'ErnCarter@gmail.com', '95874 10st', 'Tomlinson', 'AB', 'T8H6S8') --id 4
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
--To add: All and distinct selections, inner joins with aggregates, subqueries, views, unions
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
*/

-- Select all the projects and their info from the project table
Select ProjectId, ProjectDescription, InDate, OutDate, Estimate, ProjectTypeCode, ClientID, SubTotal, GST, Total, StaffID
From    Project

-- How many people work here?
Select count(StaffID)
From Staff

-- What are the names of the workers?
Select StaffFirstName, StaffLastName
From Staff

--Repeat the last query using aliases
Select StaffFirstName as 'First Name', StaffLastName as 'Last Name'
From Staff

-- Repeat once again combining the columns into full name
Select StaffFirstName + ' ' + StaffLastName as 'Staff Name'
From Staff








-- Who has a staff type ID of 1?
Select StaffFirstName + ' ' + StaffLastName as 'Staff Name'
From Staff
Where StaffTypeID = 1

-- What position is that staff typeID?
Select StaffTypeDescription
From StaffType
Where StaffTypeID = 1

-- How many items have been rented for more than one day and what project were they for?
Select ItemID, ProjectID, Days
From ProjectItem
Where Days > 1

-- Wait! We don't need to see the "Labour" item, do the search again without it
Select ItemID, ProjectID, Days
From ProjectItem
Where Days > 1 and ItemID > 1

-- How many clients do we have in this database? Who are they?
Select ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Client

-- Do any of them have an organization? What is that organization? (Note the default organization is just 'Customer')
Select ClientFirstName + ' ' + ClientLastName as 'Client Name', Organization
From Client
Where Organization not like 'Customer'

-- How many client last names start with an M?
Select count(ClientID)
From Client
Where ClientLastName like 'M%'

-- What is their name?
Select ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Client
Where ClientLastName like 'M%'

-- What about clients that have a first name starting with J?
Select ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Client
Where ClientFirstName like 'J%'

-- What clients have 'a' the second letter of their first name?
 Select ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Client
Where ClientFirstName like '_a%'

--What staff member have more or less than 4 letters in their first name?
Select StaffFirstName + ' ' + StaffLastName
From Staff
Where StaffFirstName not like '____'

--That's strange... There are 5 staff members! How many don't have 4 letters in their first name?
Select count(StaffID)
From Staff
Where StaffFirstName like '____'






--What is the average amount we make on a project?
Select Avg(total)
From Project

-- How much have we made total from projects?
Select Sum(total)
From Project

--What was the least expensive project?
Select Min(total)
From Project

--What was the most expensive project?
Select Max(total)
From Project

--How many projects have we done
Select Count(total)
From Project

--Just for fun, do all the aggregates in one line!
Select  Min(total) as 'Min', Max(total) as 'Max', Sum(total) as 'Sum', Avg(total) as 'Avg', Count(total) as 'Count'
From Project



--What is the average amount spent on items?
Select Avg(ExtPrice)
From ProjectItem

--That's great, but not that useful... What about the average amount spent on each item?
Select ItemID, Avg(ExtPrice)
From ProjectItem
Group by ItemID

--Cool! What about the sum too? 
Select ItemID, Avg(ExtPrice) as 'Avg', Sum(ExtPrice) as 'Sum'
From ProjectItem
Group by ItemID

-- How much is spent on each project per item?
Select ProjectID, Avg(ExtPrice) as 'Avg', Sum(ExtPrice) as 'Sum'
From ProjectItem
Group by ProjectID
--These results seem odd, because it's averaging and getting the sum of the price of projects, not items. 
--So the Avg spent per item on project 1 and the sum spent on project 1







--Select all the project items, we just need the ItemID and Project ID
Select ItemID, ProjectID
From ProjectItem

-- That's a hard to read table... Order it by the projectID
Select ItemID, ProjectID
From ProjectItem
Order by ProjectID

-- Is ordering by the days rented - What are the most used items
Select ItemID, ProjectID, Days
From ProjectItem
Order by Days

-- Hm... That goes from shotest rented to longest rented... Try going longest to shortest?
Select ItemID, ProjectID, Days
From ProjectItem
Order by Days desc

--We don't need to see labour, we don't rent it out. Take it out of the search.
Select ItemID, ProjectID, Days
From ProjectItem
Where ItemID != 1 -- Can use > 1 in this scenario
Order by Days desc






--What are the names of the items from the previous query?
Select Item.ItemID, ItemDescription, ProjectID, Days
From ProjectItem
Inner Join Item on ProjectItem.ItemID = Item.ItemID
Where Item.ItemID != 1 -- Can use > 1 in this scenario
Order by Days desc

--Awesome! Now we are getting somewhere. What is the name of the projects that those items were used on?
Select Item.ItemID, ItemDescription, Project.ProjectID, ProjectDescription, Days
From ProjectItem
Inner Join Item on ProjectItem.ItemID = Item.ItemID
Inner Join Project on ProjectItem.ProjectID = Project.ProjectId
Where Item.ItemID != 1 -- Can use > 1 in this scenario
Order by Days desc

--NOTE: This goes a bit backwards. Generally you want to select from the parent table and join from there. 
--      I did it this way to just make it a bit easier to follow from the previous querty. 
--      You would usually want to go:
--          Select Item.ItemID, ItemDescription, Project.ProjectID, ProjectDescription, Days
--          From Item
--          Inner Join ProjectItem on ProjectItem.ItemID = Item.ItemID
--          Inner Join Project on ProjectItem.ProjectID = Project.ProjectId


-- Who was the client for each project?
Select ProjectID, ProjectDescription, ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Client
Inner Join Project on Project.ClientID = Client.ClientID

--What items appeared on a project?
Select Item.ItemID, ItemDescription
From Item
Inner Join ProjectItem on Item.ItemID = ProjectItem.ProjectID


--What project items where on the project for Client 6, and what are the item names?
Select Item.ItemID, ItemDescription, Project.ProjectID, ProjectDescription, Client.ClientID, ClientLastName + ' ' + ClientLastName as 'Client Name'
From Item
Inner Join ProjectItem on Item.ItemID = ProjectItem.ItemID
Inner Join Project on ProjectItem.ProjectID = Project.ProjectId
Inner Join Client on Project.ClientID = Client.ClientID
Where Client.ClientID = 6




--Select all the clients and their projects - Even if they didnt have a a project
Select ProjectID, ProjectDescription, ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Client
Left Outer Join Project on Project.ClientID = Client.ClientID

--Do the same with a right outer join
Select ProjectID, ProjectDescription, ClientFirstName + ' ' + ClientLastName as 'Client Name'
From Project
Right Outer Join Client on Project.ClientID = Client.ClientID

--Select all items and the project they were used for?
Select Item.ItemID, ItemDescription
From Item
Left Outer Join ProjectItem on Item.ItemID = ProjectItem.ProjectID

--Again, do the same with a right outer join
Select Item.ItemID, ItemDescription
From ProjectItem
Right Outer Join Item on Item.ItemID = ProjectItem.ProjectID