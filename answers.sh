Basic Queries:

1- SELECT name FROM students
2- SELECT * FROM students where Age > 30
3- SELECT name FROM students WHERE Age = 30 and Gender = "F"
4- SELECT Points FROM students WHERE name = "Alex"
5- INSERT INTO students (name, Age, Gender, Points)
VALUES ("Abdellatif", "21", "M", 350)
6- UPDATE students 
SET Points = 350
WHERE name = "Basma"
7- UPDATE students
SET Points = 150
WHERE name = "Alex"

---------------------------------------------------------

Creating Table:

CREATE TABLE graduates (
	"ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Name" TEXT  NOT NULL UNIQUE,
	"Age" INTEGER,
	"Gender" TEXT,
	"Points" INTEGER,
	"Graduation" TEXT
)

10- INSERT INTO graduates (ID, name, Age, Gender, Points)
SELECT ID, name, Age, Gender, Points 
FROM students
WHERE ID = 4

11- UPDATE graduates
SET Graduation = "08/09/2018"
WHERE ID = 4 


12- DELETE FROM students
WHERE ID = 4

---------------------------------------------------------

Joins: 

14- CREATE TABLE made_date (
	name TEXT,
	Comp_Name TEXT,
	Comp_Date INTEGER
)

15- SELECT * FROM companies
WHERE date < 2000

16- SELECT Company FROM employees
WHERE Role = "Graphic Designer"

---------------------------------------------------------

Count & Filter: 

18- SELECT max(Points), name FROM students

19- SELECT avg(Points) FROM students

20- SELECT count(name) FROM students
WHERE Points = 500

21- SELECT name FROM students
WHERE name LIKE '%s%'

22- SELECT name FROM students
ORDER BY Points DESC
