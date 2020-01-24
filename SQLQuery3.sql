use Customer
CREATE TABLE Programmer
(
	Name varchar(20) NOT NULL,
	DOB date NOT NULL,
	Sex varchar(7) NOT NULL,
	Pro1 varchar(8),
	Pro2 varchar(8),
	DOJ date NOT NULL,
	Salary numeric(6),
)
GO
begin transaction
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('GOWRI','2000-01-15','MALE','TAMIL','ENGLISH','2014-01-20',120000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('elavarasan','1965-01-15','MALE','fortan','mango','1975-08-20',25000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('sundaresan','1965-01-15','MALE','c','c++','1980-05-16',18000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('GOWRIGS','2000-02-17','MALE','dbase','ENGLISH','2015-01-20',10000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('GOWRIG','2005-02-17','MALE','dbase','Python','2015-01-20',1000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('shankar','1965-01-08','MALE','cobol','RProgram','2004-05-15',1300)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('Nitheesh','1965-05-15','MALE','.Net','java','2004-08-08',100)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('Monika','2000-01-08','F-male','c','Python','',200)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('tamil','1985-8-30','F-male','c++','.net','2019-05-20',13050)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('prassana','2000-11-13','Male','.Net','c','2017-03-07',19000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('illakiya','2000-12-14','F-MALE','cobol','pascal','2017-08-06',33000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('anisha','1990-03-31','F-MALE','dbase','cobol','2009-09-09',100000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('anu','1992-01-5','F-MALE','c','c++','2009-09-09',15000)
INSERT INTO Programmer(Name,DOB,Sex,Pro1,Pro2,DOJ,Salary)VALUES('anisha','1992-4-21','F-MALE','HTML','Java','2005-05-09',18000)


DROP TABLE Programmer
--case
------------------------------------------------
select name, CASE WHEN DATEDIFF(yy,DOJ,GETDATE())>1 THEN 'ELIGIBLE CRITERIA' ELSE 'NOT ELIGBLE CRITERIA' END AS ELIGIBLE_CRITERIA FROM Programmer
SELECT name FROM Programmer 
select Name,Salary , CASE WHEN Salary>10000 THEN 'Salary greater than 10000' ELSE 'Salary lesser than 10000' END AS SALARY_S FROM Programmer
-------------------------------------------------------------------
--

commit







----UPDATE Programmer SET Pro1='Pascal',Pro2='c' WHERE NAME='GOWRI'
----UPDATE Programmer SET Pro1='.NET',Pro2='C++' WHERE NAME='SHANKAR'



Drop TABLE Programmer

CREATE TABLE Software
(
	Name varchar(20) NOT NULL,
	Tittle  varchar(50) NOT NULL,
	Dev_in varchar(8) NOT NULL,
	Scost  numeric(7),
	Dcost numeric(7) ,
	Sold numeric(5),

)

INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Ramesh',' service','db',100,500,0)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Ramesh','flight service','dbase',1000,500,20)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Gowri','LIBRARy','BASIC',200,5500,14)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('GOWRIGS','VEHICLE','apple',250,5000,14)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Sri','c','BASIC',200,5500,14)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('SHANKAR','online food delivery','dbase',1500,5000,8)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Marry','online bus service','BASIC',2500,6000,0)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('tamil','online cab service','pascal',6000,500,15)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Ramesh','logistics service','pascal',3500,4000,23)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Prassanna','Loan Calculator','cobol',3500,8000,5)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Monika','Fees Enquiry','cobol',1500,10000,2)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Monika','Placement Tattler','pascal',500,6000,0)
INSERT INTO Software(Name,Tittle,Dev_in,Scost,Dcost,Sold)VALUES('Gowri','online ','dbase',1500,5000,8)





SELECT Name,Sold FROM Software WHERE Tittle='LIBRARy'

UPDATE Software SET Dev_in='WEB' WHERE Name='GOWRI'

SELECT Name,Dev_in FROM Software WHERE Name='GOWRI'

--DELETE FROM Software WHERE NAME='GOWRI'

SELECT Name,Tittle,Dev_in,Scost,Dcost,Sold FROM Software

SELECT MAX(Sold) FROM Software
--Get Copies from software

DROP TABLE Software

CREATE TABLE Studies
(
	Name varchar(25),
	SPlace varchar(20),
	Course varchar(20),
	Ccost numeric(20),
)

INSERT Studies(Name,SPlace,Course,Ccost) Values('GOWRI','Salem','S.S.I.L',5000)
INSERT Studies(Name,SPlace,Course,Ccost) Values('SHANKAR','CHENNAI','PGDCA',4000)
INSERT Studies(Name,SPlace,Course,Ccost) Values('prasanna','Salem','PS',10000)
INSERT Studies(Name,SPlace,Course,Ccost) Values('tamil','SABHARI','DCS',6000)
INSERT Studies(Name,SPlace,Course,Ccost) Values('Nitheesh','Hogenakkal','DCA',5000)
INSERT Studies(Name,SPlace,Course,Ccost) Values('Monica','SABHARI','S.S.I.L',5000)
INSERT Studies(Name,SPlace,Course,Ccost) Values('Monica','SABHARI','DCA',500)
INSERT Studies(Name,SPlace,Course,Ccost) Values('GowriGS','pragathi','DCA',580)
INSERT Studies(Name,SPlace,Course,Ccost) Values('Sri','pragathi','DCA',580)
DROP TABLE Studies



--1)Average cost of pascal
SELECT AVG(Scost) AS AVERAGE FROM Software WHERE Dev_in='PASCAL'
--2)Age
--Age in years
SELECT DATEDIFF(yy,DOB,getdate()) AS [Age In Years] from Programmer

--Age in days
SELECT DATEDIFF(Y,DOB,getdate()) AS [Age In Days] from Programmer

--Age in Years
SELECT DATEDIFF(MM,DOB,getdate()) AS [Age In Years] from Programmer
--3)Display the names and ages of all the programmers who have undergone training in DCS course.
SELECT Programmer.Name,DATEDIFF(YY,Programmer.DOB,GETDATE())  FROM Programmer INNER JOIN Studies on Programmer.Name=Studies.Name WHERE Course='DCS'
--4)What is the highest numbers of copies sold by a package?
SELECT MAX(Sold) AS Maximum_Copies FROM Software GROUP BY Dev_in
--5) Display the names and date of birth of all the programmer born in JANUARY.
SELECT Name,DOB AS [AGE in years] FROM Programmer WHERE MONTH(DOB)=01
--6) Display lowest course fee.
SELECT MIN(Ccost) AS Minimum_Cost FROM Studies
--7) How many programmer has done PGDCA course.
SELECT COUNT(Name) AS COUNT FROM Studies WHERE Course='PGDCA'
--8) How much revenue has been earned through sales of packages in C.
SELECT SUM(Sold*Scost)AS REVENUE FROM Software WHERE Dev_in='c'
--9) Display the details of software developed by Ramesh?
SELECT Tittle,Dev_in,Scost,Dcost,Sold FROM Software WHERE Name='Ramesh'
--10How many programmers studied at SABHARI?
SELECT COUNT(SPlace)AS COUNT_PLACE FROM Studies WHERE SPlace='SABHARI'
--11) Display the details of PACKAGES whose sales crossed the 20000 mark.
SELECT Name,Tittle,Dev_in,Scost,Dcost,Sold FROM Software WHERE (Scost*Sold)>20000
--12) Find out the number of copies which should be sold in order to recover the development cost of
each package?

	SELECT Tittle ,(Scost*Sold) AS CALCULATE  FROM Software WHERE (Scost*Sold)>=Dcost 

--13) What is the price of the costliest software developed in BASIC?
SELECT MAX(Scost) AS MAXIMUM FROM Software  WHERE Dev_in='BASIC'
--14) Display the details of packages for which development cost has been recovered?
SELECT Name,Tittle,Dev_in,Scost,Dcost,Sold FROM Software WHERE (Scost*Dcost)>=Dcost


--15) How many packages were developed in dbase?
SELECT COUNT(Dev_in)AS COUNT_PACKAGES FROM Software WHERE Dev_in='dbase';
--16) How many programmers studies at paragathi?
UPDATE Studies SET SPlace='Pragathi' Where Name='GOWRI'
SELECT COUNT(Splace)AS COUNT FROM Studies WHERE SPlace='Pragathi'
--17)How many programmers paid 5000 to 10000 for their course?
SELECT COUNT(Ccost)AS COUNT FROM Studies WHERE (Ccost>5000)
--18) What is the average course fee?
SELECT AVG(Ccost)AS AVERAGE FROM Studies 
--19) Display the details of programmers knowing c?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE (Pro1='c'OR Pro2='c')
20) How many programmers know either Cobol or Pascal?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE (Pro1='cobol'OR Pro2='pascal')OR(Pro1='pascal'OR Pro2='cobol')
--21) How many programmers don't know Pascal & C?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE (Pro1!='cobol'OR Pro2!='c')OR(Pro1!='c'OR Pro2!='pascal')
--22) How old is the oldest male programmers?

SELECT MAX(DATEDIFF(YY,DOB,GETDATE())) AS OLD_AGE FROM Programmer WHERE Sex='MALE' 
--23) What is the average age of female programmers?

SELECT AVG(DATEDIFF(YY,DOB,GETDATE())) AS AVG_AGE FROM Programmer WHERE Sex='F-MALE'
--24) Calculate the experience in years for each programmers and display along with the names in
descending order?
SELECT Name,(DATEDIFF(YY,DOJ,GETDATE())) FROM Programmer ORDER BY (DATEDIFF(YY,DOJ,GETDATE())) DESC
--25) Who are the programmers who celebrate their birthday during the current month?
SELECT Name FROM Programmer WHERE MONTH(DOB)=MONTH(GETDATE())
--26) How many female programmers are there?
SELECT COUNT(Sex) AS COUNT FROM Programmer WHERE Sex='F-MALE'
--27) What are the languages known by the male programmers?
SELECT Pro1,Pro2 FROM Programmer WHERE Sex='MALE'
--28) What is the Average salary?
SELECT AVG(Salary)AS AVERAGE FROM Programmer
--29) How many people draw 2000 to 4000?
SELECT COUNT(Name)  FROM Programmer WHERE BETWEEN Salary 2000 AND 4000 
--30) Display the details of those who don't know Clipper, Cobol or Pascal?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE Pro1 NOT IN('pascal','cobol','pascal')AND Pro2 NOT IN('pascal','cobol','pascal')
--31) How many Female programmers knowing C are above 24 years of age?
SELECT COUNT(Name) AS COUNT FROM Programmer WHERE Sex='F-MALE' AND DATEDIFF(YY,DOB,GETDATE())>=24 AND ((Pro1='c') OR (Pro2='c') )
--32) Who are the programmers who will be celebrating their Birthday within a week?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE DATEPART(WW,DOB)=DATEPART(WW,GETDATE())
--33 Display the details of those with less than a year's experience?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE (YEAR(GETDATE())-YEAR(DOJ))<=1
--34 Display the details of those who will be completing 2 years of service this year?
SELECT Name,DOB,Sex,Pro1,Pro2,DOJ,Salary FROM Programmer WHERE (YEAR(GETDATE())-YEAR(DOJ))=2
--35 Calculate the amount to be recovered for those packages whose development cost has not been
--recovered?
SELECT Tittle ,(Scost*Sold) AS CALCULATE FROM Software WHERE (Scost*Sold)<Dcost
--36) List the packages which have not been sold so far?
SELECT Tittle FROM Software WHERE Sold=0
--37) Find out the cost of the software developed by Mary?
SELECT Scost FROM Software WHERE Name='marry'
--38) Display the institute’s names from the studies table without duplicates?
SELECT DISTINCT Splace FROM Studies
--39) How many different courses are mentioned in the studies table?
SELECT DISTINCT Course FROM Studies 
--40) Display the names of the programmers whose names contain 2 occurrences of the letter A?
SELECT Name FROM Programmer WHERE NAME LIKE '%a%a%'
--41) Display the names of programmers whose names contain unto 5 characters?
SELECT Name FROM Programmer WHERE NAME LIKE'_____'
--42) How many female programmers knowing COBOL have more than 2 years experience?
SELECT COUNT(Name) AS COUNT FROM Programmer WHERE Sex='F-MALE' AND((Pro1 IN('cobol')) OR (Pro2 IN('cobol'))) AND DATEDIFF(YY,DOJ,GETDATE())>=2
--44) What is the average development cost of a package developed in COBOL?
SELECT AVG(Scost) AS AVERAGE_COST FROM Software WHERE Dev_in='cobol'
--45) Display the name, sex, dob (DD/MM/YY format), doj for all the programmers without using
--conversion function?
SELECT NAME,SUBSTRING(CAST(DOB AS varchar),9,2)+'/'+SUBSTRING(CAST(DOB AS varchar),6,2)+'/'+SUBSTRING(CAST(DOB as varchar),3,2) AS DATE_OF_BIRTH FROM Programmer


--46)Who are the programmers who were born on the last day of the month?
SELECT Name FROM Programmer WHERE EOMONTH(DOB) LIKE DOB
--47) What is the amount paid in salaries of the male p rogrammers who do not know Cobol?
SELECT Name,Salary,Pro1,Pro2 FROM Programmer WHERE Sex='MALE'  AND (Pro1 IN('cobol') AND Pro2 NOT IN('cobol'))
--48) Display the title, scost, dcost and difference between scost and dcost in descending order of
--difference?
SELECT Tittle,Dev_in,Scost,Dcost,Sold,(Dcost-Scost) FROM Software ORDER BY (Dcost-Scost) DESC
--49) Display the name, dob, doj of those month of birth and month of joining are same?
SELECT NAME,DOJ,DOB FROM Programmer WHERE DATEPART(MM,DOB)=DATEPART(MM,DOJ)

--50) Display the names of the packages whose names contain more than 1 word?

SELECT Tittle FROM Software WHERE Tittle LIKE '%_ _%'





--2----ASSIGNMERNT------------------------------

--1) Display THE NUMBER OF packages developed in EACH language.
SELECT Dev_in,COUNT(Tittle) AS COUNT_SOFTWARE FROM Software GROUP BY Dev_in
--2) Display THE NUMBER OF packages developed by EACH person.
SELECT Name,COUNT(Tittle) AS COUNT_SOFTWARE FROM Software GROUP BY Name
--3) Display THE NUMBER OF male and female programmer.
SELECT COUNT(Sex),Sex AS COUNT FROM Programmer GROUP BY SEX
--4)Display THE COSTLIEST packages and HIGEST selling developed in EACH language.
SELECT Dev_in,MAX(Scost) AS MAXIMUM,MAX(Scost*Sold) AS DEVELOPED From Software GROUP BY Dev_in
--5) Display THE NUMBER OF people BORN in EACH YEAR.
SELECT YEAR(DOB),COUNT(Name) AS COUNT_NAME FROM Programmer GROUP BY YEAR(DOB)
--6) Display THE NUMBER OF people JOINED in EACH YEAR.
SELECT COUNT(Name) AS COUNT_DEV FROM Programmer GROUP BY YEAR(DOJ)

--7) Display THE NUMBER OF people BORN in EACH MONTH.
SELECT COUNT(Name) AS COUNT_MONTH FROM Programmer GROUP BY MONTH(DOB)
--8) Display THE NUMBER OF people JOINED in EACH MONTH.
SELECT COUNT(Name) AS COUNT_MONTH FROM Programmer GROUP BY MONTH(DOJ)
--9) Display the language wise COUNTS of prof1.
SELECT Pro1,COUNT(Pro1) AS COUNT_LANG FROM Programmer GROUP BY Pro1
--10) Display the language wise COUNTS of prof2.
SELECT Pro2,COUNT(Pro2) AS COUNT_LANG FROM Programmer GROUP BY Pro2
--11) Display THE NUMBER OF people in EACH salary group.
SELECT Salary,COUNT(Salary) AS COUNT_SALARY  FROM Programmer GROUP BY Name,Salary
--12) Display THE NUMBER OF people who studied in EACH institute.
SELECT Splace,COUNT(Splace) AS COUNT_SALARY  FROM Studies GROUP BY Splace
--13) Display THE NUMBER OF people who studied in EACH course.
SELECT COUNT(Name)AS COUNT_People,Course   FROM Studies GROUP BY Course
--14) Display the TOTAL development COST of the packages developed in EACH language.
SELECT Dev_in,SUM(Dcost) AS D_COST From Software GROUP BY Dev_in
--15) Display the selling cost of the package developed in EACH language.
SELECT Dev_in,SUM(Scost)AS SELLING FROM Software GROUP BY Dev_in
--16) Display the cost of the package developed by EACH programmer.
SELECT Name,SUM(Scost) FROM Software GROUP BY Name,Scost
--17) Display the sales values of the package developed inEACH programmer.
SELECT Name,(Scost*Sold) FROM Software GROUP BY Name,Scost,Sold
--18) Display the NUMBER of packages developed by EACH programmer.
SELECT Name,Tittle,COUNT(Name) FROM Software GROUP BY Name,Tittle
--19) Display the sales COST of packages developed by EACH programmer language wise.
SELECT Name,Dev_in,(Scost*Sold)AS SALES_COST From Software GROUP BY Name,Dev_in,Scost,Sold 
--20) Display EACH programmers name, costliest package and cheapest packages developed by
--Him/Her.
SELECT Name,MAX(Scost),MIN(Scost) FROM Software GROUP BY Name
--21) Display EACH language name with AVERAGE development cost, AVERAGE cost, selling cost
--and AVERAGE price per copy.
SELECT Dev_in,AVG(Dcost) AS D_COST,AVG(Scost)AS S_COST,Scost FROM Software GROUP BY Dev_in,Dcost,Scost
--22) Display EACH institute name with NUMBER of courses, AVERAGE cost per course.
SELECT COUNT(Course)AS COUNT_COURSE,AVG(Ccost) AS AVG_COST,SPlace FROM Studies GROUP BY SPlace,Ccost,Course
--23) Display EACH institute name with NUMBER of students.
SELECT COUNT(Name) AS Name From Studies GROUP BY Splace
--24) Display names of male and female programmers.
SELECT Sex,Name FROM Programmer GROUP BY Sex,Name
--25) Display the programmer's name and their packages.
SELECT Name,Dev_in From Software GROUP BY Name,Dev_in
--26) Display the NUMBER of packages in EACH language.
SELECT DISTINCT COUNT(Dev_in), Dev_in FROM Software GROUP BY Dev_in
--27) Display the NUMBER of packages in EACH language for which development cost is less than
--1000.
SELECT COUNT(Dev_in) AS COUNT,Dev_in FROM Software  WHERE Dcost<=1000 GROUP BY Dev_in
--28) Display the AVERAGE difference BETWEEN scost and dcost for EACH language.
SELECT DISTINCT Dev_in, AVG(Dcost-Scost) AS DIFFERE From Software GROUP BY Dev_in 
--29) Display the TOTAL scost, dcsot and amount TOBE recovered for EACH programmer for
--whose dcost HAS NOT YET BEEN recovered.
SELECT SUM(Scost) AS SUM_SCOST,SUM(Dcost)AS SUM_DCOST,SUM(Sold*Scost)AS SUM_SCOST_SOLD FROM Software WHERE (Scost*Sold)<Dcost
--30) Display highest, lowest and average salaries for THOSE earning MORE than 2000.
SELECT MAX(Salary)AS MAXIMUM,MIN(Salary)AS MINIMUM,AVG(Salary)AS AVERAGE FROM Programmer WHERE Salary>=2000




--3) Assignment:---------------------------
-------------------------------------------------------------------------------


 
--1) Who is the highest paid C programmer?

SELECT Name, FROM(SELECT Name,RANK() OVER (ORDER  BY Salary DESC) AS RANK_I FROM Programmer WHERE Pro1='c' OR Pro2='c' ) as t WHERE RANK_I=1
--2) Who is the h0ighest paid female cobol programmer?
SELECT Name,Sex FROM(SELECT Name,SEX,RANK() OVER(ORDER BY Salary DESC)AS RANK_I FROM Programmer WHERE Sex='F-MALE')AS t WHERE RANK_I=1
--3) Display the name of the HIGEST paid programmer for EACH language (prof1)
SELECT Name,Pro1,Salary FROM(SELECT Name,Pro1,Salary,RANK() OVER(PARTITION BY Pro1 ORDER BY Salary DESC)AS RANK FROM Programmer )AS t WHERE RANK=1
--4) Who is the LEAST experienced programmer?
SELECT Name,DOJ FROM(SELECT Name,DOJ,RANK()OVER(ORDER BY DOJ DESC) AS RANK FROM Programmer )AS t WHERE RANK=1
--5) Who is the MOST experienced programmer?
SELECT Name,DOJ FROM(SELECT Name,DOJ,RANK()OVER(ORDER BY DOJ ) AS RANK FROM Programmer )AS t WHERE RANK=1
--6) Which language is known by ONLY ONE programmer?
SELECT Pro1 FROM Programmer GROUP BY Pro1 HAVING Pro1 NOT IN(SELECT Pro2 FROM Programmer) AND COUNT(Pro1)=1
UNION
SELECT Pro2 FROM Programmer GROUP BY Pro2 HAVING Pro2 NOT IN (SELECT Pro1 FROM Programmer)AND COUNT(Pro2)=1
--7) Who is the YONGEST programmer knowing DBASE?
SELECT Name,AGE FROM(SELECT Name,DATEDIFF(YY,DOB,GETDATE())AS AGE,RANK () OVER (ORDER BY DATEDIFF(YY,DOB,GETDATE()))AS RANK FROM Programmer WHERE (Pro1 IN('dbase')) OR(Pro2 IN('dbase')))AS t WHERE RANK=1


--8) Which institute has MOST NUMBER of students?
SELECT Splace FROM(SELECT Splace,RANK() OVER( ORDER BY COUNT(Name) DESC) AS RANK FROM Studies GROUP BY Splace) AS Place WHERE RANK=1

--10) Which female programmer earns MORE than 3000/- but DOES NOT know C, C++, Oracle or
--Dbase?
SELECT DISTINCT Name FROM Programmer WHERE Sex='F-MALE' AND Salary>3000 AND (Pro1 NOT in('c','c++') AND Pro2 NOT IN('c','c++'))
--11) Which is the COSTLIEST course?
SELECT Course FROM(SELECT Course,RANK() OVER(ORDER BY MAX(CCost) DESC) AS RANK FROM Studies GROUP BY Course) AS t WHERE RANK=1
--12) Which course has been done by MOST of the students?
SELECT Course FROM Studies WHERE Course IN (SELECT 
--13) Display name of the institute and course Which has below AVERAGE course fee?
SELECT Splace, Course, Ccost FROM Studies WHERE Ccost < (SELECT AVG(Ccost) FROM STUDIES)

--14) Which institute conducts COSTLIEST course?
SELECT Splace FROM(SELECT Splace,RANK() OVER(ORDER BY MAX(Ccost) DESC) AS RANK  FROM Studies GROUP BY Splace) AS t WHERE RANK=1
--15) Which course has below AVERAGE number of students?

SELECT Course FROM Studies GROUP BY Course HAVING COUNT(Name) < (SELECT COUNT(Name)/(SELECT COUNT( DISTINCT Course) FROM Studies)FROM Studies)  

SELECT Course FROM Studies WHERE Course IN(SELECT AVG(Name)
--16) Which institute conducts the above course?
Select Splace FROM Studies WHERE Course IN(SELECT Course FROM Studies GROUP BY Course HAVING COUNT(Name) < (SELECT COUNT(Name)/(SELECT COUNT( DISTINCT Course) FROM Studies)FROM Studies)  )

--17) Display names of the course WHOSE fees are within 1000(+ or -) of the AVERAGE fee.
SELECT Course FROM Studies WHERE Ccost>(SELECT AVG(Ccost)+1000 FROM Studies) AND Ccost>(SELECT AVG(Ccost)-1000 FROM Studies)
--18) Which package has the HIGEST development cost?
SELECT Dev_in FROM(SELECT Dev_in,RANK() OVER(ORDER BY MAX(Dcost) DESC)AS RANK FROM Software GROUP BY Dev_in)AS t WHERE RANK=1 
--19) Which package has the LOWEST selling cost?
SELECT Dev_in FROM(SELECT Dev_in,RANK() OVER(ORDER BY MIN(Scost) )AS RANK FROM Software GROUP BY Dev_in)AS t WHERE RANK=1 
--20) Who developed the package, which has sold the LEAST number of copies?
SELECT Name(SELECT Name,RANK() OVER(ORDER BY MIN(Sold)) AS RANK FROM Software GROUP BY Name)AS t WHERE RANK=1
--21) Which language was used to develop the package WHICH has the HIGEST sales amount?
SELE
SELECT Dev_in FROM Software WHERE Scost IN (SELECT MAX(Scost*Sold) FROM Software) 
--22) How many copies of the package that has the LEAST DIFFRENCE between development and
--selling cost were sold?
SELECT Sold, Tittle FROM SOFTWARE WHERE Tittle IN (SELECT Tittle FROM SOFTWARE WHERE (Dcost - Scost) = (SELECT MIN(Dcost - Scost) FROM SOFTWARE))

--23) Which is the COSTLIEAST package developed in PASCAL?
SELECT MAX(Dcost)AS Package,Tittle,Dev_in  FROM Software WHERE Dev_in='pascal' GROUP BY Tittle,Dev_in
SELECT Tittle,Dev_in FROM(SELECT Tittle,Dev_in,RANK() OVER (ORDER BY MAX(Dcost) DESC) AS RANK FROM Software WHERE Dev_in='pascal' GROUP BY Tittle,Dev_in)AS t WHERE RANK=1
--24) Which language was used to develop the MOST NUMBER of package?
SELECT Dev_in FROM(select Dev_in,RANK() OVER(ORDER BY COUNT(Dev_in) DESC)AS RANK FROM Software  GROUP BY Dev_in)AS t WHERE RANK=1
--25) Which programmer has developed the HIGEST NUMBER of package?
SELECT Name FROM Software WHERE Sold IN(SELECT MAX(SOLD) FROM Software)
SELECT Name FROM(SELECT Name,RANK() OVER(ORDER BY COUNT(Tittle) DESC)AS RANK FROM Software  GROUP BY Name)AS t WHERE RANK=1
--26) Who is the author of the COSTLIEST package?
SELECT Name FROM Software WHERE Scost IN(SELECT MAX(Scost) FROM Software)
--27) Display names of packages WHICH have been sold LESS THAN the AVERAGE number of
--copies?
SELECT Tittle FROM Software WHERE Sold <(SELECT AVG(Sold) FROM  Software)
--28) Who are the female programmers earning MORE than the HIGEST paid male programmers?
SELECT Name FROM Programmer WHERE Sex='F-MALE' AND Salary >(SELECT MAX(Salary) FROM Programmer WHERE Sex='MALE')
--29) Which language has been stated as prof1 by MOST of the programmers?
SELECT TOP 1 Pro1 FROM(SELECT Pro1,RANK() OVER( ORDER BY COUNT(Pro1) DESC)AS RANK FROM Programmer GROUP BY Pro1)AS t WHERE RANK=1
--30) Who are the authors of packages, WHICH have recovered MORE THAN double the
--development cost?
SELECT Name FROM Software WHERE (Scost*Sold)>=2*Dcost
--31) Display programmer names and CHEAPEST package developed by them in EACH language?
SELECT Name,Dev_in,Tittle FROM(SELECT Name,Dev_in,Tittle,RANK() OVER (PARTITION BY Dev_in ORDER BY MIN(Scost)) AS RANK FROM Software GROUP BY Name,Dev_in,Tittle)AS t WHERE RANK=1
--32) Who is the YOUNGEST male programmer born in 1965?
SELECT TOP 1 Name,DOB FROM(SELECT  Name,DOB,RANK() OVER(ORDER BY COUNT(DOB) DESC) AS RANK FROM Programmer WHERE Sex='MALE' AND YEAR(DOB)=1965 GROUP BY Name,DOB) AS t WHERE RANK=1

--33) Display language used by EACH programmer to develop the HIGEST selling and LOWEST
--selling package.
SELECT NAME, DEV_IN,SOLD FROM SOFTWARE WHERE SOLD IN (SELECT MAX(SOLD) FROM SOFTWARE GROUP BY NAME) UNION SELECT NAME, DEV_IN,SOLD FROM SOFTWARE WHERE SOLD IN (SELECT MIN(SOLD) FROM SOFTWARE GROUP BY NAME)


--34) Who is the OLDEST female programmer WHO joined in 1992

SELECT TOP 1 Name,DOB FROM(SELECT  Name,DOB,RANK() OVER(ORDER BY COUNT(DOB) DESC) AS RANK FROM Programmer WHERE Sex='F-MALE' AND YEAR(DOB)=1992 GROUP BY Name,DOB)AS t WHERE RANK=1

--35) In WHICH year where the MOST NUMBER of programmer born?
--SELECT 
SELECT   YEAR FROM(SELECT YEAR(DOB) AS YEAR,DENSE_RANK() OVER(ORDER BY COUNT(DOB) DESC) AS RANK FROM Programmer GROUP BY YEAR(DOB))AS t WHERE RANK=1
--36) In WHICH month did MOST NUMBRER of programmer join?
    SELECT MONTH FROM(SELECT MONTH(DOJ)AS MONTH,RANK() OVER(ORDER BY COUNT(MONTH(DOJ)) DESC) AS RANK FROM Programmer GROUP BY MONTH(DOJ))AS t WHERE RANK=1
--37) In WHICH language are MOST of the programmer's proficient?
SELECT Pro1,RANK() OVER( ORDER BY COUNT(Pro1) DESC)AS RANK fROM Programmer GROUP BY Pro1
UNION
SELECT Pro2,RANK() OVER( ORDER BY COUNT(Pro2) DESC)AS RANK fROM Programmer GROUP BY Pro2


SELECT Pro1 FROM Programmer 
--38) Who are the male programmers earning BELOW the AVERAGE salary of female
--programmers?
SELECT Name,Salary FROM Programmer WHERE Sex='MALE' AND Salary <(SELECT AVG(Salary) FROM Programmer WHERE Sex='F-MALE')



--4-Assignment
--1) Display the details of THOSE WHO are drawing the same salary.
SELECT PERSON1.Name,PERSON1.Salary FROM Programmer PERSON1 ,Programmer PERSON2 WHERE PERSON1.Salary=PERSON2.Salary AND PERSON1.name <> PERSON2.name ORDER BY Salary

--2) Display the details of software developed by male programmers earning MORE than 3000.

SELECT DISTINCT s.Name,s.Tittle FROM Software AS s INNER JOIN Programmer AS p ON p.Name=s.Name WHERE p.Sex LIKE 'MALE' AND p.Salary>3000

--3) Display details of packages developed in PASCAL by female programmers.

SELECT DISTINCT p.Name,Tittle FROM Software AS s INNER JOIN Programmer AS p ON p.Name=s.Name WHERE s.Dev_in LIKE 'pascal' AND p.Sex='F-MALE'

--4) Display the details of the programmer WHO joined BEFORE 1990.
SELECT DISTINCT p.Name,p.Salary,p.Pro1,p.Pro2 FROM Programmer AS P WHERE YEAR(DOJ)<1990


--5) Display details of software developed in C by female programmers of PRAGATHI.
SELECT s.Name,s.Dev_in FROM Software AS s INNER JOIN Programmer p ON p.Name=s.Name INNER JOIN studies As st ON st.Name=s.Name WHERE s.Dev_in LIKE 'c' AND st.Splace LIKE 'pragathi'

--6) Display NUMBER of packages NUMBER of copies sold and sales value of EACH programmer
--Institute-wise.

Select DISTINCT Studies.Splace, COUNT(Software.Tittle) TITTLE, COUNT(Software.sold) SOLD, SUM(software.Sold*Software.Scost) SALES_VALUE from Software,Studies where Software.Name=Studies.Name GROUP BY  Studies.Splace
--7) Display details of software developed in DBASE by male programmers WHO belong to the
--institute on which MOST NUMBER OF programmer’s studies.
SELECT s.Name,s.Dev_in FROM Software AS s INNER JOIN Programmer AS p ON s.Name=p.Name INNER JOIN Studies AS st ON s.Name=st.Name WHERE s.Dev_in LIKE 'dbase' AND p.Sex LIKE 'MALE' AND st.Splace IN (SELECT Splace FROM(SELECT Splace,RANK() OVER(ORDER BY COUNT(Name) DESC) AS RANK FROM Studies GROUP BY Splace)AS t WHERE RANK=1) 
--8) Display the details of the software that was developed by male programmers born BEFORE
--1965 and female programmers born AFTER 1975.
SELECT DISTINCT s.Name,Dev_in FROM Software AS s INNER JOIN Programmer AS p ON s.Name=p.Name WHERE s.Name IN(SELECT Name FROM Programmer WHERE YEAR(DOB)<1965 AND SEX LIKE 'MALE' ) OR s.Name IN (SELECT Name FROM Programmer WHERE YEAR(DOB)>1970 AND Sex LIKE 'F-MALE')

--9) Display the details of the software that was developed in the language that is NOT the
--programmer’s first proficiency.
SELECT s.Name,s.Dev_in FROM Software AS s INNER JOIN Programmer AS p ON p.Name=s.Name WHERE s.Dev_in NOT IN (SELECT Pro1 FROM Programmer) AND s.Name IN(SELECT Name FROM Programmer)

--10) Display details of software that was developed in the language which is NEITHER first NOR
--second proficiency of the programmer.
SELECT s.Name,s.Dev_in FROM Software AS s INNER JOIN Programmer AS p ON p.Name=s.Name WHERE s.Dev_in  NOT IN (p.Pro1,p.Pro2)AND s.Name IN(SELECT Name FROM Programmer)

--11) Display details of software developed by male students of SABHARI.
SELECT s.Dev_in,s.Tittle FROM Software AS s INNER JOIN Programmer AS p ON s.Name=p.Name INNER JOIN Studies AS st ON s.Name=st.Name WHERE st.Splace='sabhari'   AND p.Sex LIKE 'MALE'
--12) Display the names of programmers WHO HAVE NOT developed any package.
SELECT p.Name,p.DOB FROM Programmer p LEFT JOIN Software AS s ON p.Name=s.Name WHERE p.Name NOT IN(SELECT Name FROM Software)
--13) What is the total cost of the software developed by the programmers by APPLE?
SELECT Scost AS Total_COST,Programmer.Name FROM Software INNER JOIN Programmer ON Programmer.Name=Software.Name WHERE Software.Dev_in='apple'


--14) Who are the programmers WHO JOINED in the same day?
SELECT DISTINCT PERSON1.Name,PERSON1.DOB FROM Programmer PERSON1 ,Programmer PERSON2 WHERE PERSON1.DOB=PERSON2.DOB AND PERSON1.Name <> PERSON2.Name ORDER BY DOB

--15) Who are the programmers WHO HAVE THE SAME PROF2?
SELECT DISTINCT PERSON1.Name,PERSON1.Pro1,PERSON1.Pro2 FROM Programmer PERSON1 ,Programmer PERSON2 WHERE PERSON1.Pro1=PERSON2.Pro1 AND PERSON1.Pro2=PERSON2.Pro2 AND PERSON1.Name <> PERSON2.Name ORDER BY Pro1,Pro2

--16) Display the total sales values of software, institutes-wise.
SELECT SUM(Software.Sold*Software.Scost)SALES,Studies.Splace FROM Software,Studies WHERE Software.Name=Software.Name GROUP BY Studies.Splace

--17) In which institutes did the person who developed the COSTLIEST package study?
SELECT DISTINCT st.Splace FROM Studies st INNER JOIN Software s ON s.Name=st.Name WHERE Scost IN (SELECT MAX(Scost) fROM Software)
--18) Which language listed in prof1 and prof2 HAS NOT BEEN used to develop any package?
SELECT DISTINCT Pro1 FROM Programmer WHERE Pro1 NOT IN (SELECT Dev_in FROM Software)
UNION ALL
 SELECT DISTINCT Pro2 FROM Programmer WHERE Pro2 NOT IN (SELECT Dev_in FROM Software)ORDER BY PRO1

--19) How much does the person WHO developed the HIGHEST selling package earn and WHAT
--course did he/she undergo?
SELECT p.Name,p.Salary,st.Course FROM Programmer AS p INNER JOIN Software AS s ON s.Name=p.Name INNER JOIN Studies AS st ON st.Name=p.Name WHERE s.Sold=(SELECT MAX(Sold) FROM Software)

--20) How many months will it take for each programmer to recover the cost of the course
--underwent?
Select Programmer.Name,Salary,CEILING(CCost/Salary) AS COURSE_DUE FROM Programmer INNER JOIN Studies ON Programmer.Name=Studies.Name
--21) Which is the COSTLIEST package developed by a person with under 3 year’s expenences?
SELECT s.Name,Scost FROM Software s INNER JOIN Programmer p ON p.Name=s.Name WHERE s.Scost IN (SELECT MAX(Scost) FROM Software),DATEDIFF(YY,p.DOJ,GETDATE())>3
--22) What is the AVERAGE salary for those WHOSE software's sales value is more than 50,000?
SELECT p.Name,AVG(p.Salary)AS AVG FROM Programmer As p INNER JOIN Software AS s ON p.Name=s.Name WHERE p.Salary IN (SELECT Programmer.Salary FROM Programmer,Software WHERE (Software.Scost*Software.Sold)>50000) GROUP BY p.Name
--23) How many packages were developed by the students WHO studied in the institute that Charge
--the LOWEST course fee?
SELECT COUNT(Tittle)AS TITTLE,Name From Software WHERE Name IN (SELECT Name FROM Studies WHERE Splace IN (SELECT Splace FROM Studies WHERE Ccost=(SELECT MIN(Ccost) FROM Studies)))GROUP BY Name
--24) How many packages were developed by the person WHO developed the CHEAPEST package?
--Where did he\she study?
SELECT Name,COUNT(Tittle) FROM Software WHERE Name in(SELECT Course FROM Studies WHERE Name IN(SELECT Name FROM SOFTWARE WHERE Scost=(SELECT MIN(Scost) FROM Software ) ))GROUP BY Name
--25) How many packages were developed by female programmers earning MORE than the
--HIGHEST paid male programmer?
SELECT Software.Name,COUNT(Tittle) FROM Software,Programmer WHERE Software.Name,Programmer.Salary FROM (SELECT Name,Salary FROM Programmer WHERE Sex='F-MALE' AND Salary>(SELECT MAX(Salary)FROM Programmer WHERE Sex='MALE'))GROUP BY Software.Name 
SELECT COUNT(SOFTWARE.TITTLE) PACKAGE_COUNT FROM SOFTWARE,PROGRAMMER  WHERE  PROGRAMMER.NAME=SOFTWARE.NAME AND sex='F-MALE'  AND SALARY>(SELECT max(SALARY) FROM programmer where sex='MALE') 
--27) List the programmers (from software table) and institutes they studied, including those WHO
--DIDN'T develop any package.
SELECT name,splace FROM studies WHERE name not in(SELECT name FROM software)
--28) List each profit with the number of programmers having that prof1 and the number of packages
--developed in that prof1.
SELECT COUNT(SOFTWARE.NAME) PROGRAMMERS,COUNT(Tittle)PACKAGES,SUM(scost*sold-dcost) PROFIT FROM software WHERE dev_in in (SELECT pro1 FROM programmer) GROUP BY dev_in;

--29) List programmer names (from programmer table) and number of packages EACH developed.
SELECT Programmer.Name,COUNT(Software.Tittle) FROM Programmer  LEFT JOIN Software  ON Programmer.Name=Software.Name GROUP BY Programmer.Name
--30) List all the details of programmers who have done a course at S.S.I.L.
SELECT Programmer.Name,Programmer.DOB,Programmer.Salary,Programmer.Pro1,Programmer.Pro2,studies.Course FROM Programmer LEFT JOIN Studies ON Studies.Name=Programmer.Name WHERE Studies.Course LIKE 'S.S.I.L'

































