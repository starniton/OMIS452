DELETE FROM assignment;
DELETE FROM project;
DELETE FROM employee;
DELETE FROM department;

/***** DEPARTMENT DATA ********************************************************/
INSERT INTO DEPARTMENT VALUES(
'Administration', 'BC-100-10', 'BLDG01-210', '360-285-8100');
INSERT INTO DEPARTMENT VALUES(
'Legal', 'BC-200-10', 'BLDG01-220', '360-285-8200');
INSERT INTO DEPARTMENT VALUES(
'Human Resources', 'BC-300-10', 'BLDG01-230', '360-285-8300');
INSERT INTO DEPARTMENT VALUES(
'Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400');
INSERT INTO DEPARTMENT VALUES(
'Accounting', 'BC-500-10', 'BLDG01-120', '360-285-8405');
INSERT INTO DEPARTMENT VALUES(
'Sales and Marketing', 'BC-600-10', 'BLDG01-250', '360-287-8500');
INSERT INTO DEPARTMENT VALUES(
'InfoSystems', 'BC-700-10', 'BLDG02-210', '360-287-8600');
INSERT INTO DEPARTMENT VALUES(
'Research and Development', 'BC-800-10', 'BLDG02-250', '360-287-8700');
INSERT INTO DEPARTMENT VALUES(
'Production', 'BC-900-10', 'BLDG02-110', '360-287-8800');

/***** EMPLOYEE DATA ***********************************************************/
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
1, 'Mary', 'Jacobs', 'Administration', 'CEO',
'360-285-8110', 'Mary.Jacobs@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
2, 'Rosalie', 'Jackson', 'Administration', 'Admin Assistant',
'360-285-8120', 'Rosalie.Jackson@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
3, 'Richard', 'Bandalone', 'Legal', 'Attorney', 
'360-285-8210', 'Richard.Bandalone@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
4, 'George', 'Smith', 'Human Resources', 'HR3',
'360-285-8310', 'George.Smith@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
5, 'Alan', 'Adams', 'Human Resources', 'HR1',
'360-285-8320', 'Alan.Adams@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
6, 'Ken', 'Evans', 'Finance', 'CFO',
'360-285-8410', 'Ken.Evans@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
7, 'Mary', 'Abernathy', 'Finance', 'FA3',
'360-285-8420', 'Mary.Abernathy@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
8, 'Tom', 'Caruthers', 'Accounting', 'FA2',
'360-285-8430', 'Tom.Caruthers@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
9, 'Heather', 'Jones', 'Accounting', 'FA2',
'360-285-8440', 'Heather.Jones@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
10, 'Ken', 'Numoto', 'Sales and Marketing', 'SM3',
'360-287-8510', 'Ken.Numoto@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
11, 'Linda', 'Granger', 'Sales and Marketing', 'SM2',
'360-287-8520', 'Linda.Granger@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
12, 'James', 'Nestor', 'InfoSystems', 'CIO',
'360-287-8610', 'James.Nestor@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
13, 'Rick', 'Brown', 'InfoSystems', 'IS2',
'748-235-2345', 'Rick.Brown@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
14, 'Mike', 'Nguyen', 'Research and Development', 'CTO',
'360-287-8710', 'Mike.Nguyen@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
15, 'Jason', 'Sleeman', 'Research and Development', 'RD3',
'360-287-8720', 'Jason.Sleeman@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
16, 'Mary', 'Smith', 'Production', 'OPS3',
'360-287-8810', 'Mary.Smith@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
17, 'Tom', 'Jackson', 'Production', 'OPS2',
'360-287-8820', 'Tom.Jackson@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
18, 'George', 'Jones', 'Production', 'OPS2',
'360-287-8830', 'George.Jones@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
19, 'Julia', 'Hayakawa', 'Production', 'OPS1', 
'847-630-815', 'Julia.Hayakawa@WP.com');
INSERT INTO EMPLOYEE (EmployeeNumber, FirstName, LastName, Department, Position, OfficePhone, EmailAddress)
VALUES(
20, 'Sam', 'Stewart', 'Production', 'OPS1', 
'630-289-5643','Sam.Stewart@WP.com');

/***** PROJECT DATA ************************************************************/
INSERT INTO PROJECT (ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
100, '2017 Q3 Production Plan', 'Production', 100.00, '2017-05-10', '2017-06-15');
INSERT INTO PROJECT (ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
110, '2017 Q3 Marketing Plan', 'Sales and Marketing', 135.00, '2017-05-10', '2017-06-15');
INSERT INTO PROJECT (ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
120, '2017 Q3 Portfolio Analysis', 'Finance', 120.00, '2017-06-05', '2017-06-25' );
INSERT INTO PROJECT (ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
130, '2017 Q3 Tax Preparation', 'Accounting', 145.00, '2017-08-10', '2017-10-15');
INSERT INTO PROJECT (ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
140, '2017 Q4 Production Plan', 'Production', 100.00, '2017-08-10', '2017-09-15');
INSERT INTO PROJECT (ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
150, '2017 Q4 Marketing Plan', 'Sales and Marketing', 135.00, '2017-08-10', '2017-09-15');
INSERT INTO PROJECT(ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate)
VALUES(
160, '2017 Q4 Portfolio Analysis', 'Finance', 140.00, '2017-10-05', '2019-09-26');
/***** ASSIGNMENT DATA ******************************************************/
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(100, 1, 30.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(100, 19, 30.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(100, 18, 50.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(100, 17, 50.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(100, 16, 75.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(100, 3, 75.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(110, 14, 30.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(110, 2, 75.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(110, 10, 55.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(110, 11, 55.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(120, 3, 20.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(120, 6, 40.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(120, 7, 45.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(120, 8, 45.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(130, 3, 25.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(130, 6, 40.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(130, 8, 50.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(130, 9, 50.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(140, 1, 30.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(140, 6, 50.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(140, 10, 50.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(140, 16, 75.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(140, 17, 75.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(150, 1, 30.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(150, 6, 75.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(150, 10, 55.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(150, 11, 55.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(160, 3, 20.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(160, 6, 40.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(160, 7, 45.0);
INSERT INTO ASSIGNMENT (ProjectID, EmployeeNumber, HoursWorked) 
VALUES(160, 8, 45.0);