-- How to find server name
select @@SERVERNAME

-- How to create a database
create database Emade_Dev
go

use Emade_Dev
Go

--How to check data in a table
select *
From Employee 

--How to count how many records in a table
select count(*) as totalcounts
from Employee

--How to show the females in the employee table
select *
from Employee
where Gender = 'F'

--How to show those that come from spain
select *
from Employee
where Country = 'Spain'

--How to show those that come from Nigeria
select *
from Employee
where Country = 'Nigeria'

--How to show those that come from USA
select *
from Employee
where Country = 'USA'

--How to show the females in the employee table
select *
from Employee
where Gender = 'M'

--How to show those with first name that starts with Y
select * 
from Employee 
where FirstName Like 'Y%'

--How to show those with last name that starts with B
select * 
from Employee 
where LastName Like '%B'

--How to check data in noble table
select *
From noble

--How to show a year in noble table
select *
from Noble
where year = 1963

--How to show a the subject of medicine in noble
select *
from Noble
where Subject = 'medicine'

--How to show latest year in noble table
select MAX(year) as latest_year
from noble


--How to count how many records in a noble table
select count(*) as totalcounts
from noble

--How to check data in Games table
select *
From games

--How to show a year in games table
select *
from games
where year = '2004'

--How to show a city in games
select *
from games
where city = 'london'

--How to show latest year in games table
select MAX(year) as latest_year
from games

--How to check data in World table
select *
From World

--How to show a area in world table
select *
from world
where area = '468'

--How to show a country in world table
select *
from world
where countryname = 'Angola'

--How to show the country with the lowest Gdp in world table
select MAX(gdp) as Highest_Gdp
from world


--How to count how many records in a world table
select count(*) as totalcounts
from world