/* *** SQL-Query-CH03-01 Nathan Abay and Derek Macek *** */
SELECT ProjectID, ProjectName, Department, MaxHours,
StartDate, EndDate
FROM PROJECT;

/* *** SQL-Query-CH03-02 Nathan Abay and Derek Macek*** */
SELECT *
FROM PROJECT;

/* *** SQL-Query-CH03-03 Nathan Abay and Derek Macek*** */
SELECT ProjectName, Department, MaxHours
FROM PROJECT;

/* *** SQL-Query-CH03-04 Nathan Abay and Derek Macek*** */
SELECT ProjectName, MaxHours, Department
FROM PROJECT;

/* *** SQL-Query-CH03-05 Nathan Abay and Derek Macek*** */
SELECT Department
FROM PROJECT;

/* *** SQL-Query-CH03-06 Nathan Abay and Derek Macek*** */
SELECT DISTINCT Department
FROM PROJECT;

/* *** SQL-Query-CH03-07 Nathan Abay and Derek Macek*** */
SELECT *
FROM PROJECT
WHERE Department = 'Finance';

/* *** SQL-Query-CH03-08 Nathan Abay and Derek Macek*** */
SELECT *
FROM PROJECT
WHERE StartDate = '05/10/2017';

/* *** SQL-Query-CH03-09 Nathan Abay and Derek Macek*** */
SELECT *
FROM PROJECT
WHERE MaxHours > 135;

/* *** SQL-Query-CH03-10 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-11 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department;

/* *** SQL-Query-CH03-12 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC;

/* *** SQL-Query-CH03-13 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC, LastName ASC;

/* *** SQL-Query-CH03-14 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-15 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
OR OfficePhone = '360-285-8410';

/* *** SQL-Query-CH03-16 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND NOT OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-17 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department IN ('Administration', 'Finance',
'Accounting');

/* *** SQL-Query-CH03-18 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department NOT IN ('Administration', 'Finance',
'Accounting');

/* *** SQL-Query-CH03-19 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber >= 2
AND EmployeeNumber <= 5;

/* *** SQL-Query-CH03-20 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber BETWEEN 2 AND 5;

/* *** SQL-Query-CH03-21 Nathan Abay and Derek Macek*** */
SELECT *
FROM PROJECT
WHERE ProjectName LIKE '2017 Q_ Portfolio Analysis';

/* *** SQL-Query-CH03-22 Nathan Abay and Derek Macek*** */
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88 ';

/* *** SQL-Query-CH03-23 Nathan Abay and Derek Macek*** */
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88%';

/* *** SQL-Query-CH03-24 Nathan Abay and Derek Macek*** */
SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';

/* *** SQL-Query-CH03-25 Nathan Abay and Derek Macek*** */
SELECT *
FROM EMPLOYEE
WHERE Department NOT LIKE '%ing';

/* *** SQL-Query-CH03-26 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NULL;

/* *** SQL-Query-CH03-27 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NOT NULL;

/* *** SQL-Query-CH03-28 Nathan Abay and Derek Macek*** */
SELECT COUNT(*)
FROM PROJECT;

/* *** SQL-Query-CH03-29 Nathan Abay and Derek Macek*** */
SELECT COUNT(*) AS NumberOfProjects
FROM PROJECT;

/* *** SQL-Query-CH03-30 Nathan Abay and Derek Macek*** */
SELECT COUNT(Department) AS NumberOfDepartments
FROM PROJECT;

/* *** SQL-Query-CH03-31 Nathan Abay and Derek Macek*** */
SELECT COUNT(DISTINCT Department) AS NumberOfDepartments
FROM PROJECT;

/* *** SQL-Query-CH03-32 Nathan Abay and Derek Macek*** */
SELECT SUM(MaxHours) AS TotalMaxHours,
AVG(MaxHours) AS AverageMaxHours,
MIN(MaxHours) AS MinimumMaxHours,
MAX(MaxHours) AS MaximumMaxHours
FROM PROJECT
WHERE ProjectID <= 1200;

/* *** SQL-Query-CH03-33 Nathan Abay and Derek Macek*** */
SELECT ProjectName, COUNT(*)
FROM PROJECT;

/* *** SQL-Query-CH03-34 Nathan Abay and Derek Macek*** */
SELECT *
FROM PROJECT
WHERE MaxHours > AVG(MaxHours);

/* *** SQL-Query-CH03-35 Nathan Abay and Derek Macek*** */
SELECT ProjectID, ProjectName, MaxHours,
(24.50 * MaxHours) AS MaxProjectCost
FROM PROJECT;

/* *** SQL-Query-CH03-36 Nathan Abay and Derek Macek*** */
SELECT Department, Count(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department;

/* *** SQL-Query-CH03-37 Nathan Abay and Derek Macek*** */
SELECT Department, Count(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department
HAVING COUNT(*) > 1;

/* *** SQL-Query-CH03-38 Nathan Abay and Derek Macek*** */
SELECT Department, Count(*) AS NumberOfEmployees
FROM EMPLOYEE
WHERE EmployeeNumber <= 10
GROUP BY Department
HAVING COUNT(*) > 1;

/* *** SQL-Query-CH03-39 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

/* *** SQL-Query-CH03-40 Nathan Abay and Derek Macek*** */
SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 50;

/* *** SQL-Query-CH03-41 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN
(SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 50);

/* *** SQL-Query-CH03-42 Nathan Abay and Derek Macek*** */
SELECT DISTINCT ProjectID
FROM PROJECT
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-43 Nathan Abay and Derek Macek*** */
SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 40
AND ProjectID IN
(SELECT ProjectID
FROM PROJECT
WHERE Department = 'Accounting');

/* *** SQL-Query-CH03-44 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN
(SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 40
AND ProjectID IN
(SELECT ProjectID
FROM PROJECT
WHERE Department = 'Accounting'));

/* *** SQL-Query-CH03-45 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT;

/* *** SQL-Query-CH03-46 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;

/* *** SQL-Query-CH03-47 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.
EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

/* *** SQL-Query-CH03-48 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE JOIN ASSIGNMENT
ON EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

/* *** SQL-Query-CH03-49 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName,
SUM(HoursWorked) AS TotalHoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;

/* *** SQL-Query-CH03-50 Nathan Abay and Derek Macek*** */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
WHERE HoursWorked > 50
ORDER BY LastName, FirstName, ProjectID;

/* *** SQL-Query-CH03-51 Nathan Abay and Derek Macek*** */
SELECT ProjectName, FirstName, LastName, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
JOIN PROJECT AS P
ON A.ProjectID = P.ProjectID
ORDER BY P.ProjectID, A.EmployeeNumber;

/* *** SQL-Query-CH03-52 Nathan Abay and Derek Macek*** */
SELECT * FROM PROJECT;

/* *** SQL-Query-CH03-53 Nathan Abay and Derek Macek*** */
SELECT ProjectName, FirstName, LastName, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
JOIN PROJECT AS P
ON A.ProjectID = P.ProjectID
ORDER BY P.ProjectID, A.EmployeeNumber;