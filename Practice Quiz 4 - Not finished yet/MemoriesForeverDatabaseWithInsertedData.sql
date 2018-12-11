--Create database MemoriesForeverTriggerPracticeQuiz

drop table projectitem
drop table project
drop table item
drop table staff
drop table client
drop table itemtype
drop table projecttype
drop table stafftype
Create Table StaffType
( 
StaffTypeID int not null constraint pk_StaffType primary key clustered,
StaffTypeDescription varchar(50) not null
)

Create Table itemType
(
ItemTypeID int not null constraint pk_ItemType primary key clustered,
ItemTypeDescription varchar(50) not null
)

Create Table ProjectType
(
ProjectTypeCode int not null constraint pk_ProjectType primary key clustered,
ProjectTypeDescription varchar(50) not null
)

Create Table Client
(
ClientID integer identity(1,1) not null constraint pk_Client primary key clustered,
Organization varchar(50) not null,
ClientFirstName varchar(50) not null,
ClientLastName varchar(50) not null,
Phone varchar(10) not null,
Email varchar(50) not null,
Address varchar(100) not null,
City varchar(50) not null,
Province char(2) not null,
PC  char(6) not null,
)

Create Table Staff
(
StaffID int not null constraint pk_Staff primary key clustered,
StaffFirstName varchar(50) not null,
StaffLastName varchar(50) not null,
Phone varchar(10) not null,
Wage smallmoney not null 
constraint df_wage default 9.5
constraint ck_wage check(Wage >0),
HireDate datetime not null,
StaffTypeID int not null constraint fk_StaffToStaffType references StaffType(StaffTypeID),
--constraint ck_hiredate check(HireDate <= getdate())
)

Create Table Item
(
ItemID integer identity (1,1)  not null constraint pk_Item primary key clustered,
ItemDescription varchar(100) not null,
PricePerDay money not null,
ItemTypeID int not null constraint fk_ItemToItemType references ItemType(ItemTypeID)
)

Create Table Project 
(
ProjectId int not null identity (1,1) constraint pk_Project primary key clustered,
ProjectDescription varchar(100) not null,
InDate datetime not null,
OutDate datetime not null,
Estimate money not null constraint df_Estimate default 0,
ProjectTypeCode int not null constraint fk_ProjectToProjectType references ProjectType(ProjectTypeCode),
ClientID int not null, --constraint fk_ProjectToClient references Client(ClientID),
SubTotal money not null,
GST money not null,
Total money not null,
StaffID int not null constraint fk_ProjectToStaff references Staff(StaffID),
constraint ck_dates check (InDate <= OutDate),
--constraint ck_total check (Total > Subtotal)
)

Create Table ProjectItem
(
ItemID int not null constraint fk_ProjectItemToItem references Item(ItemID),
ProjectID int not null constraint fk_ProjectItemToProject references Project(ProjectID),
CheckInNotes varchar(200) not null,
CheckOutNotes varchar(200) not null,
DateOut datetime not null,
DateIn datetime not null,
ExtPrice money not null,
Historicalprice money not null,
Days smallint not null constraint ck_Days check (days>0),
Constraint pk_Projectitem Primary Key clustered (ItemID,ProjectID) ,
constraint ck_dateIn check (DateIn >= DateOut)
)



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