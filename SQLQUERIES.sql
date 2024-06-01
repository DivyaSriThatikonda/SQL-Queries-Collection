---STUDIES TABLE
CREATE TABLE STUDIES (
  PNAME VARCHAR(255),
  INSTITUTE VARCHAR(255),
  COURSE VARCHAR(255),
  COURSE_FEE INT
);

-- Insert data into the "STUDIES" table
INSERT INTO STUDIES (PNAME, INSTITUTE, COURSE, COURSE_FEE)
VALUES
('ANAND', 'SABHARI', 'PGDCA', 4500),
('ALTAF', 'COIT', 'DCA', 7200),
('JULIANA', 'BDPS', 'MCA', 22000),
('KAMALA', 'PRAGATHI', 'DCA', 5000),
('MARY', 'SABHARI', 'PGDCA', 4500),
('NELSON', 'PRAGATHI', 'DAP', 6200),
('PATRICK', 'PRAGATHI', 'DCAP', 5200),
('QADIR', 'APPLE', 'HDCA', 14000),
('RAMESH', 'SABHARI', 'PGDCA', 4500),
('REBECCA', 'BRILLIANT', 'DCAP', 11000),
('REMITHA', 'BDPS', 'DCS', 6000),
('REVATHI', 'SABHARI', 'DAP', 5000),
('VIJAYA', 'BDPS', 'DCA', 48000);

--SOFTWARE TABLE

CREATE TABLE SOFTWARE (
  PNAME VARCHAR(255),
  TITLE VARCHAR(255),
  DEVELOPIN VARCHAR(255),
  SCOST INT,
  DCOST INT,
  SOLD INT
);

-- Insert data into the "SOFTWARE" table
INSERT INTO SOFTWARE (PNAME, TITLE, DEVELOPIN, SCOST, DCOST, SOLD)
VALUES
('MARY', 'README', 'CPP', 300, 1200, 84),
('ANAND', 'PARACHUTES', 'BASIC', 399.95, 6000, 43),
('ANAND', 'VIDEO TITLING', 'PASCAL', 7500, 16000, 9),
('JULIANA', 'INVENTORY', 'COBOL', 3000, 3500, 0),
('KAMALA', 'PAYROLL PKG.', 'DBASE', 9000, 20000, 7),
('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000, 85000, 4),
('MARY', 'CODE GENERATOR', 'C', 4500, 20000, 23),
('PATTRICK', 'README', 'CPP', 300, 1200, 84),
('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000, 11),
('QADIR', 'VACCINES', 'C', 1900, 3100, 21),
('RAMESH', 'HOTEL MGMT.', 'DBASE', 13000, 35000, 4),
('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51),
('REMITHA', 'TSR HELP PKG.', 'ASSEMBLY', 2500, 6000, 7),
('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2),
('VIJAYA', 'TSR EDITOR', 'C', 900, 700, 6);

---PROGRAMMER TABLE

CREATE TABLE PROGRAMMER (
  PNAME VARCHAR(255),
  DOB DATE,
  DOJ DATE,
  GENDER CHAR(1),
  PROF1 VARCHAR(255),
  PROF2 VARCHAR(255),
  SALARY INT
);

-- Insert data into the "PROGRAMMER" table
INSERT INTO PROGRAMMER (PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY)
VALUES
('ANAND', '1966-04-12', '1992-04-21', 'M', 'PASCAL', 'BASIC', 3200),
('ALTAF', '1964-07-02', '1990-11-13', 'M', 'CLIPPER', 'COBOL', 2800),
('JULIANA', '1960-01-31', '1990-04-21', 'F', 'COBOL', 'DBASE', 3000),
('KAMALA', '1968-10-30', '1992-01-02', 'F', 'C', 'DBASE', 2900),
('MARY', '1970-06-24', '1991-02-01', 'F', 'CPP', 'ORACLE', 4500),
('NELSON', '1985-09-11', '1989-10-11', 'M', 'COBOL', 'DBASE', 2500),
('PATTRICK', '1965-11-10', '1990-04-21', 'M', 'PASCAL', 'CLIPPER', 2800),
('QADIR', '1965-08-31', '1991-04-21', 'M', 'ASSEMBLY', 'C', 3000),
('RAMESH', '1967-05-03', '1991-02-28', 'M', 'PASCAL', 'DBASE', 3200),
('REBECCA', '1967-01-01', '1990-12-01', 'F', 'BASIC', 'COBOL', 2500),
('REMITHA', '1970-04-19', '1993-04-20', 'F', 'C', 'ASSEMBLY', 3600),
('REVATHI', '1969-12-02', '1992-01-02', 'F', 'PASCAL', 'BASIC', 3700),
('VIJAYA', '1965-12-14', '1992-05-02', 'F', 'FOXPRO', 'C', 3500);

SELECT * FROM STUDIES;
SELECT * FROM SOFTWARE;
SELECT * FROM PROGRAMMER;

--Tasks To Be Performed:
--1. Find out the selling cost average for packages developed in Pascal.

SELECT AVG(SOLD) AS Average_Selling_Cost
FROM SOFTWARE
WHERE DEVELOPIN = 'PASCAL';

--2. Display the names and ages of all programmers.

SELECT PNAME, DATEDIFF(YEAR, DOB, GETDATE()) AS Age
FROM PROGRAMMER;

---3. Display the names of those who have done the DAP Course.

SELECT PNAME 
FROM STUDIES 
WHERE COURSE='DAP'

SELECT * FROM STUDIES;
SELECT * FROM SOFTWARE;
SELECT * FROM PROGRAMMER;

---4. Display the names and date of birth of all programmers born in January.

SELECT PNAME ,DOB
FROM PROGRAMMER 
WHERE MONTH(DOB)='1';

--5. What is the highest number of copies sold by a package?

SELECT MAX(SOLD) AS Highest_Copies_Sold
FROM SOFTWARE;

--6. Display lowest course fee.

SELECT MIN(COURSE_FEE) AS LOWEST_COURSE_FEE
FROM STUDIES;

--7. How many programmers have done the PGDCA Course?

SELECT  * FROM STUDIES;
SELECT COUNT(PNAME) 
FROM STUDIES 
WHERE COURSE='PGDCA';

--8. How much revenue has been earned through sales of packages developed in C?

SELECT * FROM SOFTWARE;
--Revenue = Unit Price * Quantity Sold

SELECT SUM(SCOST * SOLD) AS Total_Revenue
FROM SOFTWARE
WHERE DEVELOPIN = 'C';

--9. Display the details of the software developed by Ramesh.

SELECT * FROM SOFTWARE
WHERE PNAME='RAMESH';

--10. How many programmers studied at Sabhari?
SELECT * FROM STUDIES;

SELECT COUNT(*)
FROM STUDIES 
WHERE INSTITUTE='SABHARI';


--11. Display details of packages whose sales crossed the 2000 mark.

SELECT * FROM SOFTWARE;

SELECT PNAME ,TITLE,DEVELOPIN
FROM SOFTWARE 
WHERE (SCOST*SOLD)>2000 ;

--12. Display the details of packages for which development costs have been recovered.SELECT *
FROM SOFTWARE
WHERE SOLD * SCOST >= DCOST;
---13. What is the cost of the costliest software development in Basic?
SELECT * FROM SOFTWARE;

SELECT MAX(DCOST) AS Costliest_Development_Cost
FROM SOFTWARE
WHERE DEVELOPIN = 'Basic';

--14. How many packages have been developed in dBase?
SELECT * FROM PROGRAMMER;

SELECT COUNT(*) AS Number_Of_Packages_Developed_in_dBase
FROM SOFTWARE
WHERE DEVELOPIN = 'dBase';

--15. How many programmers studied in Pragathi?

SELECT * FROM STUDIES;

SELECT COUNT(*) AS No_Of_Programmers_Studied_In_Pragathi
FROM STUDIES
WHERE INSTITUTE ='PRAGATHI';

--16. How many programmers paid 5000 to 10000 for their course?

SELECT * FROM STUDIES;

SELECT COUNT(*) AS 'NO OF PROGRAMMERS'
FROM STUDIES
WHERE COURSE_FEE BETWEEN 5000 AND 10000;

--17. What is the average course fee?

SELECT AVG(COURSE_FEE) AS 'AVERAGE COURSE FEE'
FROM STUDIES ;

--18. Display the details of the programmers knowing C.

SELECT * FROM PROGRAMMER;

SELECT PNAME,DOB,DOJ,SALARY 
FROM PROGRAMMER
WHERE PROF1='C' OR PROF2='C';

--19. How many programmers know either COBOL or Pascal?

SELECT COUNT(*) AS 'Number Of Programmers'
FROM PROGRAMMER
WHERE PROF1 IN ('COBOL', 'Pascal') OR PROF2 IN ('COBOL', 'Pascal');

--20. How many programmers don’t know Pascal and C?

SELECT COUNT(*) AS 'Number Of Programmers'
FROM PROGRAMMER
WHERE PROF1 NOT IN ('COBOL', 'Pascal') OR PROF2 NOT IN ('COBOL', 'Pascal');

--21. How old is the oldest male programmer?

SELECT * FROM PROGRAMMER;

SELECT MAX(DATEDIFF(YEAR, DOB, GETDATE())) AS 'Oldest Male Programmer Age'
FROM PROGRAMMER
WHERE GENDER = 'M';

--22. What is the average age of female programmers?

SELECT AVG(DATEDIFF(YEAR, DOB, GETDATE())) AS 'average age of female programmers'
FROM PROGRAMMER
WHERE GENDER = 'F';

--23. Calculate the experience in years for each programmer and display with
--their names in descending order.

SELECT PNAME,DATEDIFF(YEAR, DOJ, GETDATE()) AS 'experience in years '
FROM PROGRAMMER
ORDER BY 'experience in years ' DESC;

--24. Who are the programmers who celebrate their birthdays during the
--current month?

SELECT PNAME, DOB
FROM PROGRAMMER
WHERE MONTH(DOB) = MONTH(GETDATE());

---25. How many female programmers are there?

SELECT COUNT(*) AS 'NO OF FEMALE PROGRAMMERS'
FROM PROGRAMMER
WHERE GENDER='F';

---26. What are the languages studied by male programmers?  SELECT PNAME,PROF1,PROF2 FROM PROGRAMMER WHERE GENDER='M';

--27. What is the average salary?

SELECT AVG(SALARY) AS AVG_SALARY
FROM PROGRAMMER;

--28. How many people draw a salary between 2000 to 4000?

SELECT COUNT(*) AS 'people drawing a salary between 2000 to 4000'
FROM PROGRAMMER
WHERE SALARY BETWEEN 2000 AND 3000;

--29. Display the details of those who don’t know Clipper, COBOL or Pascal.

SELECT *
FROM PROGRAMMER
WHERE PROF1 NOT IN ('Clipper', 'COBOL', 'Pascal')
  AND PROF2 NOT IN ('Clipper', 'COBOL', 'Pascal');

--30. Display the cost of packages developed by each programmer.

SELECT * FROM SOFTWARE;

SELECT PNAME, SUM(SCOST) AS Total_Development_Cost
FROM SOFTWARE
GROUP BY PNAME
ORDER BY Total_Development_Cost DESC;

--31. Display the sales value of the packages developed by each
--programmer.

SELECT PNAME, SUM(SCOST*SOLD) AS TOTAL_SALES
FROM SOFTWARE
GROUP BY PNAME
ORDER BY Total_Sales DESC;

--32. Display the number of packages sold by each programmer.

SELECT PNAME,SUM(SOLD) AS 'PACKAGES SOLD'
FROM SOFTWARE
GROUP BY PNAME
ORDER BY 'PACKAGES SOLD' DESC;

--33. Display the sales cost of the packages developed by each programmer
--language wise.

SELECT PNAME,DEVELOPIN,SUM(SCOST*SOLD) AS SALES
FROM SOFTWARE
GROUP BY PNAME,DEVELOPIN
ORDER BY SALES ,DEVELOPIN DESC;

--34. Display each language name with the average development cost,
--average selling cost and average price per copy.

SELECT DEVELOPIN AS Language,
       AVG(DCOST) AS Avg_Development_Cost,
	   AVG(SCOST) AS Avg_Price_Per_Copy,
	   AVG(SOLD*scost) AS Avg_Sales
FROM SOFTWARE
GROUP BY DEVELOPIN
ORDER BY Avg_Development_Cost,Avg_Sales,Avg_Price_Per_Copy;

SELECT * FROM SOFTWARE;

--35. Display each programmer’s name and the costliest and cheapest
--packages developed by him or her.

SELECT
    PNAME AS ProgrammerName,
    MAX(DCOST) AS Costliest_Package_Cost,
    MIN(DCOST) AS Cheapest_Package_Cost
FROM SOFTWARE
GROUP BY PNAME ;

--36. Display each institute’s name with the number of courses and the
--average cost per course.

SELECT * FROM STUDIES;

SELECT DISTINCT(INSTITUTE) , COUNT(*) AS 'Number Of Courses',
AVG(COURSE_FEE) AS 'Avg Course Fee'
FROM STUDIES
GROUP BY INSTITUTE
ORDER BY  'Number Of Courses','Avg Course Fee'  ;


--37. Display each institute’s name with the number of students.

SELECT INSTITUTE , COUNT(PNAME) AS 'No Of Students'
FROM STUDIES
GROUP BY INSTITUTE;

--38. Display names of male and female programmers along with their
--gender.

SELECT PNAME,GENDER 
FROM PROGRAMMER ;

--39. Display the name of programmers and their packages.

SELECT PNAME, TITLE AS PackageName
FROM SOFTWARE;

SELECT * FROM SOFTWARE;

---40. Display the number of packages in each language except C and C++.

SELECT DEVELOPIN, COUNT(TITLE) AS NumberOfPackages
FROM SOFTWARE
WHERE DEVELOPIN NOT IN ('C', 'CPP')
GROUP BY DEVELOPIN;

--41. Display the number of packages in each language for which
--development cost is less than 1000.

SELECT DEVELOPIN, COUNT(TITLE) AS NumberOfPackages
FROM SOFTWARE
WHERE DCOST<1000
GROUP BY DEVELOPIN;

--42. Display the average difference between SCOST and DCOST for each
--package.

SELECT TITLE AS Package_Name,
       AVG(SCOST - DCOST) AS Average_Cost_Difference
FROM SOFTWARE
GROUP BY TITLE;

--43. Display the total SCOST, DCOST and the amount to be recovered for
--each programmer whose cost has not yet been recovered.

	   SELECT PNAME AS ProgrammerName,
       SUM(SCOST) AS Total_Selling_Cost,
       SUM(DCOST) AS Total_Development_Cost,
       SUM(SCOST - DCOST) AS Amount_To_Be_Recovered
FROM SOFTWARE
GROUP BY PNAME
HAVING SUM(SCOST - DCOST) > 0;

--44. Display the highest, lowest and average salaries for those earning more
--than 2000.
SELECT * FROM PROGRAMMER;
 
  SELECT
  MAX(SALARY) AS HighestSalary,
  MIN(SALARY) AS LowestSalary,
  AVG(SALARY * 1.0) AS AverageSalary
FROM PROGRAMMER
WHERE SALARY > 2000;

--45. Who is the highest paid C programmer?

SELECT * FROM PROGRAMMER;

SELECT PNAME, SALARY
FROM (
  SELECT PNAME, SALARY, ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROW_NUM
  FROM PROGRAMMER
  WHERE PROF1 = 'C' OR PROF2 = 'C'
) Ranked_Programmers
WHERE ROW_NUM = 1;

--46. Who is the highest paid female COBOL programmer?

SELECT TOP 1 PNAME, SALARY
FROM PROGRAMMER
WHERE PROF1 = 'COBOL' OR PROF2 = 'COBOL'
ORDER BY SALARY DESC;

--47. Display the names of the highest paid programmers for each language.

SELECT LANGUAGE, MAX(MAX_SALARY) AS MAX_SALARY
FROM (
  SELECT PROF1 AS LANGUAGE, MAX(SALARY) AS MAX_SALARY
  FROM PROGRAMMER
  GROUP BY PROF1
  UNION ALL
  SELECT PROF2 AS LANGUAGE, MAX(SALARY) AS MAX_SALARY
  FROM PROGRAMMER
  GROUP BY PROF2
) AS MaxSalaries
GROUP BY LANGUAGE;

--48. Who is the least experienced programmer?

SELECT TOP 1 DATEDIFF(YEAR, DOB, DOJ) AS 'EXPERIENCE IN YEARS', PNAME AS 'LEAST EXPERIENCED PERSON'
FROM PROGRAMMER
GROUP BY DATEDIFF(YEAR, DOB, DOJ), PNAME
ORDER BY 'EXPERIENCE IN YEARS' ;

--49. Who is the most experienced male programmer knowing PASCAL?

SELECT TOP 1 PNAME AS ' Most Experienced Male Programmer', DATEDIFF(YEAR, DOB, DOJ) AS ' EXPERIENCE IN YEARS'
FROM PROGRAMMER
WHERE GENDER = 'M' AND (PROF1 = 'PASCAL' OR PROF2 = 'PASCAL')
ORDER BY ' EXPERIENCE IN YEARS';

--50. Which language is known by only one programmer?

SELECT LANGUAGE, COUNT(*) AS NUM_PROGRAMMERS
FROM (
  SELECT PROF1 AS LANGUAGE FROM PROGRAMMER 
  UNION ALL
  SELECT PROF2 AS LANGUAGE FROM PROGRAMMER
) AS Languages
GROUP BY LANGUAGE
HAVING COUNT(*) = 1;

--51. Who is the above programmer referred in 50

SELECT PNAME AS 'PROGRAMMER NAME', 'CPP' AS 'KNOWN LANGUAGE'
FROM PROGRAMMER
WHERE PROF1 = 'CPP' OR PROF2 = 'CPP'
UNION ALL
SELECT PNAME AS 'PROGRAMMER NAME', 'FOXPRO' AS 'KNOWN LANGUAGE'
FROM PROGRAMMER
WHERE PROF1 = 'FOXPRO' OR PROF2 = 'FOXPRO'
UNION ALL
SELECT PNAME AS 'PROGRAMMER NAME', 'ORACLE' AS 'KNOWN LANGUAGE'
FROM PROGRAMMER
WHERE PROF1 = 'ORACLE' OR PROF2 = 'ORACLE'

--52. Who is the youngest programmer knowing dBase?
SELECT TOP 1 DATEDIFF(YEAR, DOB,GETDATE()) AS 'AGE', PNAME AS 'PROGRAMMER NAME'
FROM PROGRAMMER
WHERE PROF1 = 'DBASE' OR PROF2 = 'DBASE'
ORDER BY DATEDIFF(YEAR, DOB, GETDATE());

--53. Which female programmer earning more than 3000 does not know C,
--C++, Oracle or dBase?

SELECT PNAME AS 'FEMALE PROGRAMMER NAME', SALARY
FROM PROGRAMMER
WHERE GENDER = 'F'
  AND SALARY > 3000
  AND PNAME NOT IN (
    SELECT PNAME
    FROM PROGRAMMER
    WHERE PROF1 IN ('C', 'C++', 'Oracle', 'dBase')
       OR PROF2 IN ('C', 'C++', 'Oracle', 'dBase')
  );

--54. Which institute has the most number of students?

SELECT  TOP 1  COUNT(PNAME) AS 'NO OF STUDENTS', INSTITUTE
FROM STUDIES
GROUP BY INSTITUTE
ORDER BY 'NO OF STUDENTS' DESC;

---55. What is the costliest course?

SELECT  TOP 1 COURSE AS COSTLIEST_COURSE,COURSE_FEE
FROM STUDIES
WHERE COURSE_FEE=(SELECT MAX(COURSE_FEE) FROM STUDIES)
ORDER BY COURSE_FEE DESC;

--56. Which course has been done by the most number of students?

SELECT TOP 1 WITH TIES COURSE AS 'COURSE WITH MOST STUDENTS', COUNT(PNAME) AS 'NUMBER OF STUDENTS'
FROM STUDIES
GROUP BY COURSE
ORDER BY COUNT(PNAME) DESC;

--57. Which institute conducts the costliest course?

SELECT INSTITUTE AS 'INSTITUTE WITH COSTLIEST COURSE', COURSE AS 'COSTLIEST COURSE', COURSE_FEE AS 'MAXIMUM FEE'
FROM STUDIES
WHERE COURSE_FEE = (SELECT MAX(COURSE_FEE) FROM STUDIES);

--58. Display the name of the institute and the course which has below
--average course fee.

SELECT COURSE,INSTITUTE
FROM STUDIES
WHERE COURSE_FEE<(SELECT AVG(COURSE_FEE )FROM STUDIES);

--59. Display the names of the courses whose fees are within 1000 (+ or -) of
--the average fee.

SELECT COURSE
FROM STUDIES
WHERE COURSE_FEE BETWEEN (SELECT AVG(COURSE_FEE) - 1000 FROM STUDIES) AND (SELECT AVG(COURSE_FEE) + 1000 FROM STUDIES);

--60. Which package has the highest development cost?

SELECT * FROM SOFTWARE;

SELECT TITLE AS 'PACKAGE WITH HIGHEST DEVELOPMENT COST'
FROM SOFTWARE
WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE);

--61. Which course has below average number of students?

SELECT COURSE
FROM STUDIES
GROUP BY COURSE
HAVING COUNT(PNAME) < (SELECT AVG(Student_Count) 
FROM (SELECT COUNT(PNAME) AS Student_Count FROM STUDIES
GROUP BY COURSE) AS Subquery);

--62. Which package has the lowest selling cost?

SELECT TITLE AS 'PACKAGE WITH LOWEST SELLING COST'
FROM SOFTWARE
WHERE SCOST=(SELECT MIN(SCOST) FROM SOFTWARE);

--63. Who developed the package that has sold the least number of copies?

SELECT PNAME,TITLE AS ' package that has sold the least number of copies'
FROM SOFTWARE
WHERE SOLD=(SELECT MIN(SOLD) FROM SOFTWARE);

--64. Which language has been used to develop the package which has the
--highest sales amount?

SELECT DISTINCT DEVELOPIN AS LANGUAGE
FROM SOFTWARE
WHERE SOLD = (SELECT MAX(SOLD) FROM SOFTWARE);

--65. How many copies of the package that has the least difference between
--development and selling cost were sold?

SELECT SOLD
FROM SOFTWARE
WHERE ABS(DCOST - SCOST) = (SELECT MIN(ABS(DCOST - SCOST)) FROM SOFTWARE);

--66. Which is the costliest package developed in Pascal?

SELECT TOP 1 TITLE 'costliest package developed in Pascal'
FROM SOFTWARE
WHERE DEVELOPIN = 'PASCAL'
ORDER BY DCOST DESC;

--67. Which language was used to develop the most number of packages?

SELECT TOP 1 WITH TIES DEVELOPIN, COUNT(*) AS NumberOfPackages
FROM SOFTWARE
GROUP BY DEVELOPIN
ORDER BY NumberOfPackages DESC;

--68. Which programmer has developed the highest number of packages?
SELECT * FROM SOFTWARE;

SELECT TOP 1 WITH TIES PNAME, COUNT(*) AS Number_Of_Packages
FROM SOFTWARE
GROUP BY PNAME
ORDER BY Number_Of_Packages DESC;

--69. Who is the author of the costliest package?

SELECT PNAME AS 'Author of the costliest package'
FROM SOFTWARE
WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE) ;

--70. Display the names of the packages which have sold less than the
--average number of copies.

SELECT TITLE  AS ' packages which have sold less than the average number of copies'
FROM SOFTWARE
WHERE SOLD<(SELECT AVG(SOLD) FROM SOFTWARE);

--71. Who are the authors of the packages which have recovered more than
--double the development cost?

SELECT DISTINCT PNAME
FROM SOFTWARE
WHERE SCOST > (2 * DCOST);

--72. Display the programmer names and the cheapest packages developed
--by them in each language.

SELECT PNAME, DEVELOPIN AS 'Cheapest Packages Developed By Programmer'
FROM (
    SELECT PNAME, DEVELOPIN, ROW_NUMBER() OVER (PARTITION BY PNAME ORDER BY DCOST) AS RNK
    FROM SOFTWARE
) AS Ranked_Packages
WHERE RNK = 1;

--73. Display the language used by each programmer to develop the highest
--selling and lowest selling package.

SELECT PNAME,
       MAX(DEVELOPIN) AS Highest_Selling_Language,
       MIN(DEVELOPIN) AS Lowest_Selling_Language
FROM SOFTWARE
WHERE SCOST = (SELECT MAX(SCOST) FROM SOFTWARE)
   OR SCOST = (SELECT MIN(SCOST) FROM SOFTWARE)
GROUP BY PNAME;

--74. Who is the youngest male programmer born in 1965? 

SELECT TOP 1 PNAME, DOB
FROM PROGRAMMER
WHERE GENDER = 'M' AND YEAR(DOB) = 1965
ORDER BY DOB DESC ;

--75. Who is the oldest female programmer who joined in 1992?

SELECT TOP 1 PNAME, DOB
FROM PROGRAMMER
WHERE GENDER = 'F' AND YEAR(DOB) = 1992
ORDER BY DOB ASC;

--76. In which year was the most number of programmers born?

SELECT TOP 1 YEAR(DOB) AS Birth_Year, COUNT(*) AS 'Number Of Programmers'
FROM PROGRAMMER
GROUP BY YEAR(DOB)
ORDER BY 'Number Of Programmers' DESC;

--77. In which month did the most number of programmers join?

SELECT TOP 1 MONTH(DOJ) AS JOINING_MONTH, COUNT(*) AS 'Number Of Programmers'
FROM PROGRAMMER
GROUP BY MONTH(DOJ)
ORDER BY 'Number Of Programmers' DESC;

--78. In which language are most of the programmer’s proficient?

SELECT TOP 1 PROFICIENT_LANGUAGE AS PROFICIENT_LANGUAGE, COUNT(*) AS 'NO OF PROGRAMMERS'
FROM 
(SELECT PROF1 AS PROFICIENT_LANGUAGE
FROM PROGRAMMER
UNION ALL 
SELECT PROF2 AS PROFICIENT_LANGUAGE
FROM PROGRAMMER) AS COMBINED_PROFICIENT_LANGUAGES
GROUP BY PROFICIENT_LANGUAGE
ORDER BY 'NO OF PROGRAMMERS' DESC;

--79. Who are the male programmers earning below the average salary of
--female programmers?

SELECT PNAME AS  PROGRAMMER,SALARY
FROM PROGRAMMER 
WHERE SALARY <
    (SELECT AVG(SALARY) FROM PROGRAMMER 
     WHERE GENDER ='F')
	 AND GENDER ='M'
ORDER BY SALARY DESC;

--80. Who are the female programmers earning more than the highest paid?

SELECT PNAME AS 'female programmers earning more than the highest paid'
FROM PROGRAMMER
WHERE GENDER='F'
AND SALARY >(SELECT MAX(SALARY) FROM PROGRAMMER)

--81. Which language has been stated as the proficiency by most of the programmers?

SELECT TOP 1 PROFICIENT_LANGUAGE AS PROFICIENT_LANGUAGE, COUNT(*) AS 'NO OF PROGRAMMERS'
FROM 
(SELECT PROF1 AS PROFICIENT_LANGUAGE
FROM PROGRAMMER
UNION ALL 
SELECT PROF2 AS PROFICIENT_LANGUAGE
FROM PROGRAMMER) AS COMBINED_PROFICIENT_LANGUAGES
GROUP BY PROFICIENT_LANGUAGE
ORDER BY 'NO OF PROGRAMMERS' DESC;

--82. Display the details of those who are drawing the same salary.

SELECT PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY
FROM PROGRAMMER
WHERE SALARY IN (
    SELECT SALARY
    FROM PROGRAMMER
    GROUP BY SALARY
    HAVING COUNT(*) > 1
);

--83. Display the details of the software developed by the male programmers
--earning more than 3000.

SELECT S.PNAME AS Programmer_Name,
S.TITLE AS Software_Title, 
S.DEVELOPIN AS Language, 
S.SCOST AS Selling_Cost, 
S.DCOST AS Development_Cost,
S.SOLD AS Units_Sold
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'M' AND P.SALARY > 3000;

--84. Display the details of the packages developed in Pascal by the female programmers.

SELECT S.PNAME AS Programmer_Name,
S.TITLE AS Package_Title,
S.DEVELOPIN AS Language, 
S.SCOST AS Selling_Cost,
S.DCOST AS Development_Cost,
S.SOLD AS Units_Sold
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'F' AND S.DEVELOPIN = 'PASCAL';

--85. Display the details of the programmers who joined before 1990.

SELECT *
FROM PROGRAMMER 
WHERE YEAR (DOJ) <1990;

--86. Display the details of the software developed in C by the female
--programmers at Pragathi.

SELECT S.PNAME AS PROGRAMMER, 
 S.TITLE AS 'SOFTWARE DEVELOPED IN C',
 S.DEVELOPIN AS LANGUAGE,
 P.DOB,
 P.DOJ
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE S.DEVELOPIN = 'C' AND P.GENDER = 'F' AND U.INSTITUTE = 'PRAGATHI';

--87. Display the number of packages, number of copies sold and sales value
--of each programmer institute wise.

SELECT COUNT(*) AS 'COUNT OF PACKAGES',
SUM(S.SOLD) AS 'NO OF COPIES SOLD',
SUM(S.SCOST * S.SOLD) AS 'SALES VALUE',
S.PNAME AS PROGRAMMER,
U.INSTITUTE
FROM SOFTWARE S 
JOIN PROGRAMMER P ON S.PNAME = P.PNAME 
JOIN STUDIES U ON P.PNAME = U.PNAME
GROUP BY S.PNAME, U.INSTITUTE
ORDER BY 'COUNT OF PACKAGES','NO OF COPIES SOLD','SALES VALUE';

--88. Display the details of the software developed in dBase by male
--programmers who belong to the institute in which the most number of
---programmers studied.

SELECT TOP 1 S.PNAME AS Programmer,
S.TITLE AS 'Software Title',
S.DEVELOPIN AS Language,
S.SCOST AS 'Selling Cost',
S.DCOST AS 'Development Cost',
S.SOLD AS 'Units Sold',
P.DOB,
P.DOJ,
U.INSTITUTE
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES U ON P.PNAME = U.PNAME
WHERE P.GENDER = 'M' AND S.DEVELOPIN = 'DBASE'
ORDER BY U.INSTITUTE DESC;

--89. Display the details of the software developed by the male programmers
--born before 1965 and female programmers born after 1975.

SELECT S.TITLE AS PACKAGE,
       S.DEVELOPIN AS LANGUAGE,
       P.PNAME AS PROGRAMMER,
       P.DOB AS 'DATE OF BIRTH',
       P.DOJ AS 'DATE OF JOINING',
       S.SCOST AS 'SELLING COST',
       S.DCOST AS 'DEVELOPMENT COST',
       S.SOLD AS 'NO OF UNITS SOLD'
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE (P.GENDER = 'M' AND P.DOB < '1965-01-01') AND (P.GENDER = 'F' AND P.DOB > '1975-01-01');

--90. Display the details of the software that has been developed in the
--language which is neither the first nor the second proficiency of the
--programmers

SELECT S.TITLE AS PACKAGE,
       S.DEVELOPIN AS LANGUAGE,
       P.PNAME AS PROGRAMMER,
       P.PROF1 AS FIRST_PROFICIENCY,
       P.PROF2 AS SECOND_PROFICIENCY,
       S.SCOST AS 'SELLING COST',
       S.DCOST AS 'DEVELOPMENT COST',
       S.SOLD AS 'NO OF UNITS SOLD'
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE S.DEVELOPIN NOT IN (P.PROF1, P.PROF2);

--91. Display the details of the software developed by the male students at
--Sabhari.

SELECT S.TITLE AS PACKAGE,
       S.DEVELOPIN AS LANGUAGE,
       P.PNAME AS PROGRAMMER,
       P.DOB AS 'DATE OF BIRTH',
       P.DOJ AS 'DATE OF JOINING',
       S.SCOST AS 'SELLING COST',
       S.DCOST AS 'DEVELOPMENT COST',
       S.SOLD AS 'NO OF UNITS SOLD'
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES U ON P.PNAME = U.PNAME
WHERE P.GENDER = 'M' AND U.INSTITUTE = 'SABHARI';

--92. Display the names of the programmers who have not developed any
--packages.

SELECT P.PNAME AS PROGRAMMER_NAME
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE S.PNAME IS NULL;

--93. What is the total cost of the software developed by the programmers of
--Apple?

SELECT SUM(SCOST) AS TOTAL_COST
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES U ON P.PNAME = U.PNAME
WHERE U.INSTITUTE = 'APPLE';

--94. Who are the programmers who joined on the same day?

SELECT P1.PNAME AS PROGRAMMER1, P2.PNAME AS PROGRAMMER2, P1.DOJ AS JOINING_DATE
FROM PROGRAMMER P1
JOIN PROGRAMMER P2 ON P1.DOJ = P2.DOJ AND P1.PNAME < P2.PNAME;

--95. Who are the programmers who have the same Prof2?

SELECT P1.PNAME AS PROGRAMMER_1, P2.PNAME AS PROGRAMMER_2, P1.PROF2 AS PROF2
FROM PROGRAMMER P1
JOIN PROGRAMMER P2 ON P1.PROF2 = P2.PROF2 AND P1.PNAME < P2.PNAME;

--96. Display the total sales value of the software institute wise.
 
SELECT  SUM(SCOST*SOLD) AS 'TOTAL SALES',
U.INSTITUTE AS INSTITUTE
FROM SOFTWARE S
JOIN STUDIES U ON S.PNAME=U.PNAME
GROUP BY U.INSTITUTE;

--97. In which institute does the person who developed the costliest package
--study?

SELECT TOP 1 U.INSTITUTE
FROM SOFTWARE S
JOIN STUDIES U ON S.PNAME = U.PNAME
ORDER BY S.SCOST DESC;

--98. Which language listed in Prof1, Prof2 has not been used to develop any
--package?

SELECT P.PROF1 AS PROFICIENCY_1,
P,PROF2 AS PROFICIENCY_2 
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME=P.PNAME
WHERE 
--99. How much does the person who developed the highest selling package
--earn and what course did he/she undergo?

SELECT DISTINCT Language
FROM (
    SELECT Prof1 AS Language FROM PROGRAMMER
    UNION 
    SELECT Prof2  AS Language  FROM PROGRAMMER
) AS Languages
WHERE Language NOT IN (
    SELECT DISTINCT DEVELOPIN FROM SOFTWARE
);

--100. What is the average salary for those whose software sales is more than
--50,000?SELECT AVG(P.SALARY) AS AVERAGE_SALARY
FROM PROGRAMMER P
JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE S.SCOST * S.SOLD > 50000;

--101. How many packages were developed by students who studied in
--institutes that charge the lowest course fee?

SELECT COUNT(*) AS NUM_PACKAGES
FROM SOFTWARE S
JOIN STUDIES U ON S.PNAME = U.PNAME
WHERE U.INSTITUTE IN (
    SELECT INSTITUTE
    FROM STUDIES
    WHERE COURSE_FEE = (SELECT MIN(COURSE_FEE) FROM STUDIES)
);

--102. How many packages were developed by the person who developed the
--cheapest package? Where did he/she study?

SELECT COUNT(*) AS NUM_PACKAGES, U.INSTITUTE
FROM SOFTWARE S
JOIN STUDIES U ON S.PNAME = U.PNAME
WHERE S.DCOST = (SELECT MIN(DCOST) FROM SOFTWARE)
GROUP BY U.INSTITUTE;

--103. How many packages were developed by female programmers earning
--more than the highest paid male programmer?

SELECT COUNT(*) AS NUM_PACKAGES
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'F'
  AND P.SALARY > (SELECT MAX(SALARY) FROM PROGRAMMER WHERE GENDER = 'M');

--104. How many packages are developed by the most experienced
--programmers from BDPS?

SELECT COUNT(*) AS NUM_PACKAGES
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES U ON P.PNAME = U.PNAME
WHERE U.INSTITUTE = 'BDPS'
  AND P.DOJ = (SELECT MAX(DOJ) FROM PROGRAMMER WHERE P.PNAME = S.PNAME);

 SELECT COUNT(*) AS NUM_PACKAGES
FROM SOFTWARE S
JOIN STUDIES U ON S.PNAME = U.PNAME
JOIN PROGRAMMER P ON U.PNAME = P.PNAME
WHERE U.INSTITUTE = 'BDPS'
  AND DATEDIFF(YEAR, P.DOJ, GETDATE()) = (
      SELECT MAX(DATEDIFF(YEAR, DOJ, GETDATE()))
      FROM PROGRAMMER );

--105. List the programmers (from the software table) and the institutes they
--studied at.

SELECT DISTINCT P.PNAME AS PROGRAMMER,
U.INSTITUTE
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES U ON P.PNAME = U.PNAME;

--106. List each PROF with the number of programmers having that PROF
--and the number of the packages in that PROF.


SELECT PROF AS PROFICIENCY_LANGUAGE,
       COUNT(DISTINCT P.PNAME) AS NUM_PROGRAMMERS,
       COUNT(S.TITLE) AS NUM_PACKAGES
FROM (
    SELECT P.PNAME, P.PROF1 AS PROF FROM PROGRAMMER P
    UNION ALL
    SELECT P.PNAME, P.PROF2 AS PROF FROM PROGRAMMER P
) P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
GROUP BY PROF
ORDER BY NUM_PROGRAMMERS DESC, NUM_PACKAGES DESC;


--107. List the programmer names (from the programmer table) and the
--number of packages each has 

SELECT P.PNAME AS PROGRAMMER_NAME,
COUNT(S.TITLE) AS NO_OF_PACKAGES
FROM PROGRAMMER P 
LEFT JOIN SOFTWARE S ON P.PNAME=S.PNAME
GROUP BY P.PNAME
ORDER BY NO_OF_PACKAGES ;

