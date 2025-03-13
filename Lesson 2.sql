/**
crud
crud means 
create = create 
read, = select
update, = Insert records/data or making changes to the table
delete = remove records form table
**/

--How to compeletly remove a record from the database
drop table if exists Pet


--how to create a table
create table Pet
(
PetId Int Not Null,
PetName Varchar(50) Null,
PetColor Varchar(50) Null,
PetAge Int Null,
PetGender Varchar(50) Null
)

--How to load data into a table
Insert into Pet
(
PetId, PetName, PetColor, PetAge, PetGender
)
Values
(1,'Jake','Brown',5,'M'),
(2,'Tally','Black',10,'M'),
(3,'Sue','Pink',7,'F'),
(4,'Billy','Red',15,'M'),
(5,'Lilly','Pink',9,'F'),
(6,'Mark','Blue',11,'M'),
(7,'Bob','Black',8,'M'),
(8,'Loli','Purple',16,Null),
(9,'Able',Null,18,'M'),
(10,Null,'Pink',14,'F')


--How to count how many records in a table
select count(*) as totalcounts
from Pet

--How many Pets are Male
select *
from Pet
where PetGender = 'M'

--How to show Pets with no color
select*
From Pet 
where PetColor is Null

--How to show Pets with no name
select*
From Pet 
where PetName is Null

--How to show Pets with names
select*
From Pet 
where PetName  is not Null

--How to show Pets with Gender
select*
From Pet 
where PetGender  is not Null

--How to show Pets that are not male
select*
From Pet 
where PetGender <> 'M'

--How to show Pets that are not pink
select*
From Pet 
where PetColor <> 'Pink'

--How to show Pets that are not pink
select*
From Pet 
where PetColor != 'Pink'

--show pets that are blue and red
select *
from Pet
where PetColor in ( 'Blue','Red')


--show pets that are blue and red
select *
from Pet
where PetColor not in ( 'Blue','Red')

--show pets that are 3,4,5,6,7
select *
from Pet
where PetId in (3,4,5,6,7)

--show pets that are 3,5,6,7
select *
from Pet
where PetId between 3 and 7

--show pets that are 3,5,6,7
select *
from Pet
where PetId >= 3 and PetId <=7


--Case Statement
--Any pet that is age 7 below are Bad, Any pet that are age 8 to 9 are Good, Any pet that is age 9 but below 15 are better pet than any other pet are great pet
--Make a new column called PetStatus
select 
PetId, 
PetName,
PetColor,
PetAge,
PetGender,
Case
When PetAge < 7 then 'bad'
When PetAge between 8 and 9 then 'Good'
When PetAge >= 9 and PetAge <15 then 'Better'
When PetAge >= 15 then 'Great'
End as PetStatus
from Pet


--How to create a view
create view vwPetStatus as 
select 
PetId, 
PetName,
PetColor,
PetAge,
PetGender,
Case
When PetAge < 7 then 'bad'
When PetAge between 8 and 9 then 'Good'
When PetAge >= 9 and PetAge <15 then 'Better'
When PetAge >= 15 then 'Great'
End as PetStatus
from Pet


--how to run a view
select *
from vwPetStatus

--How to update a record in a table
update Pet
set PetColor = 'White'
where PetColor = 'pink'


--How to update a record in a table
update Pet
set PetGender = 'F'
where PetName = 'Loli'

--How to remove record from a table
delete 
from Pet
where PetAge = 8

--How to remove all record from the table
delete 
from Pet

--How to view Pet Table
select*
from pet



--how to create a table
create table CompanyInfo
(
FirstName Varchar(50) Null,
LastName Varchar(50) Null,
Country Varchar(50) Null,
)


--How to view CompanyInfo Table
select*
from CompanyInfo


--How to load data into a table
Insert into CompanyInfo
(
FirstName, LastName, Country
)
Values
('Adam','Cooper','USA'),
('John','Smith','USA'),
('Mark','Allan','UK'),
('Sally','Jones','USA'),
('Steve','Brown','Canada')


--Case Statement
--Any pet that is age 7 below are Bad, Any pet that are age 8 to 9 are Good, Any pet that is age 9 but below 15 are better pet than any other pet are great pet
--Make a new column called PetStatus
select 
FirstName, 
LastName,
Country,
Case
When Country = 'USA' then 'North America'
When Country = 'Canada' then 'North America'
When Country = 'UK' then 'Europe'
End as Continent
from CompanyInfo