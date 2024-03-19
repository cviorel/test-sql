CREATE DATABASE TestDB;
GO

USE TestDB;
GO

DROP TABLE IF EXISTS dbo.Employees;
GO

CREATE TABLE dbo.Employees (
    EmployeeID INT IDENTITY(1, 1) PRIMARY KEY,
    Name NVARCHAR(100),
    Department NVARCHAR(100),
    JobTitle NVARCHAR(100),
    HiringDate DATE,
    Salary INT
);

CREATE NONCLUSTERED INDEX IX_Employees_HiringDate_Name ON [dbo].[Employees] ([HiringDate]) INCLUDE ([Name]);
CREATE NONCLUSTERED INDEX IX_Employees_Department_Name ON [dbo].[Employees] ([Department]) INCLUDE ([Name]);
CREATE NONCLUSTERED INDEX IX_Employees_Salary_Name ON [dbo].[Employees] ([Salary]) INCLUDE ([Name]);
CREATE NONCLUSTERED INDEX IX_Employees_JobTitle_Name ON [dbo].[Employees] ([JobTitle]) INCLUDE ([Name]);

DROP INDEX IX_Employees_HiringDate_Name ON dbo.Employees;
DROP INDEX IX_Employees_Department_Name ON dbo.Employees;
DROP INDEX IX_Employees_Salary_Name ON dbo.Employees;
DROP INDEX IX_Employees_JobTitle_Name ON dbo.Employees;

INSERT INTO Employees (Name, Department, JobTitle, HiringDate, Salary) VALUES(
  'EmployeeName1', 'Sales', 'Sales Rep', '2024-03-18', 56848),(
  'EmployeeName2', 'Tech', 'Manager', '2024-03-17', 132598),(
  'EmployeeName3', 'Sales', 'Manager', '2024-03-16', 51158),(
  'EmployeeName4', 'Marketing', 'Manager', '2024-03-15', 67573),(
  'EmployeeName5', 'Marketing', 'Sales Rep', '2024-03-14', 73162),(
  'EmployeeName6', 'Sales', 'Manager', '2024-03-13', 133307),(
  'EmployeeName7', 'Sales', 'SysAdmin', '2024-03-12', 60072),(
  'EmployeeName8', 'Sales', 'Sales Rep', '2024-03-11', 49818),(
  'EmployeeName9', 'Tech', 'Sales Rep', '2024-03-10', 108433),(
  'EmployeeName10', 'Sales', 'SysAdmin', '2024-03-09', 109491),(
  'EmployeeName11', 'Marketing', 'Sales Rep', '2024-03-08', 48056),(
  'EmployeeName12', 'Marketing', 'Manager', '2024-03-07', 142872),(
  'EmployeeName13', 'Sales', 'SysAdmin', '2024-03-06', 119814),(
  'EmployeeName14', 'Sales', 'SysAdmin', '2024-03-05', 115962),(
  'EmployeeName15', 'Tech', 'Manager', '2024-03-04', 142855),(
  'EmployeeName16', 'Sales', 'SysAdmin', '2024-03-03', 114395),(
  'EmployeeName17', 'Sales', 'SysAdmin', '2024-03-02', 100862),(
  'EmployeeName18', 'Marketing', 'Sales Rep', '2024-03-01', 61766),(
  'EmployeeName19', 'Sales', 'SysAdmin', '2024-02-29', 61133),(
  'EmployeeName20', 'Sales', 'SysAdmin', '2024-02-28', 125683),(
  'EmployeeName21', 'Tech', 'Manager', '2024-02-27', 87396),(
  'EmployeeName22', 'Tech', 'Sales Rep', '2024-02-26', 106925),(
  'EmployeeName23', 'Marketing', 'Manager', '2024-02-25', 91851),(
  'EmployeeName24', 'Tech', 'Sales Rep', '2024-02-24', 101982),(
  'EmployeeName25', 'Tech', 'SysAdmin', '2024-02-23', 58960),(
  'EmployeeName26', 'Marketing', 'SysAdmin', '2024-02-22', 31448),(
  'EmployeeName27', 'Sales', 'SysAdmin', '2024-02-21', 74658),(
  'EmployeeName28', 'Tech', 'Sales Rep', '2024-02-20', 73447),(
  'EmployeeName29', 'Sales', 'Sales Rep', '2024-02-19', 103190),(
  'EmployeeName30', 'Sales', 'Manager', '2024-02-18', 94242),(
  'EmployeeName31', 'Sales', 'Sales Rep', '2024-02-17', 53343),(
  'EmployeeName32', 'Tech', 'Sales Rep', '2024-02-16', 115681),(
  'EmployeeName33', 'Sales', 'Manager', '2024-02-15', 75154),(
  'EmployeeName34', 'Sales', 'SysAdmin', '2024-02-14', 127291),(
  'EmployeeName35', 'Marketing', 'Sales Rep', '2024-02-13', 109579),(
  'EmployeeName36', 'Tech', 'Sales Rep', '2024-02-12', 92013),(
  'EmployeeName37', 'Marketing', 'Sales Rep', '2024-02-11', 64730),(
  'EmployeeName38', 'Marketing', 'SysAdmin', '2024-02-10', 104214),(
  'EmployeeName39', 'Marketing', 'Sales Rep', '2024-02-09', 80906),(
  'EmployeeName40', 'Marketing', 'SysAdmin', '2024-02-08', 53109),(
  'EmployeeName41', 'Sales', 'Sales Rep', '2024-02-07', 149777),(
  'EmployeeName42', 'Tech', 'Manager', '2024-02-06', 60112),(
  'EmployeeName43', 'Sales', 'SysAdmin', '2024-02-05', 43701),(
  'EmployeeName44', 'Marketing', 'Sales Rep', '2024-02-04', 119422),(
  'EmployeeName45', 'Sales', 'Manager', '2024-02-03', 69531),(
  'EmployeeName46', 'Tech', 'Manager', '2024-02-02', 74161),(
  'EmployeeName47', 'Tech', 'Sales Rep', '2024-02-01', 32315),(
  'EmployeeName48', 'Tech', 'SysAdmin', '2024-01-31', 40733),(
  'EmployeeName49', 'Tech', 'Manager', '2024-01-30', 41700),(
  'EmployeeName50', 'Tech', 'Sales Rep', '2024-01-29', 71982),(
  'EmployeeName51', 'Tech', 'Manager', '2024-01-28', 106892),(
  'EmployeeName52', 'Tech', 'Manager', '2024-01-27', 88146),(
  'EmployeeName53', 'Sales', 'SysAdmin', '2024-01-26', 44616),(
  'EmployeeName54', 'Tech', 'Sales Rep', '2024-01-25', 103784),(
  'EmployeeName55', 'Marketing', 'Sales Rep', '2024-01-24', 89067),(
  'EmployeeName56', 'Marketing', 'Sales Rep', '2024-01-23', 111319),(
  'EmployeeName57', 'Marketing', 'SysAdmin', '2024-01-22', 35686),(
  'EmployeeName58', 'Tech', 'SysAdmin', '2024-01-21', 77812),(
  'EmployeeName59', 'Marketing', 'Manager', '2024-01-20', 130053),(
  'EmployeeName60', 'Marketing', 'Manager', '2024-01-19', 60489),(
  'EmployeeName61', 'Marketing', 'SysAdmin', '2024-01-18', 116031),(
  'EmployeeName62', 'Sales', 'SysAdmin', '2024-01-17', 129973),(
  'EmployeeName63', 'Tech', 'Manager', '2024-01-16', 146222),(
  'EmployeeName64', 'Tech', 'SysAdmin', '2024-01-15', 42773),(
  'EmployeeName65', 'Tech', 'SysAdmin', '2024-01-14', 129803),(
  'EmployeeName66', 'Sales', 'Sales Rep', '2024-01-13', 45072),(
  'EmployeeName67', 'Marketing', 'SysAdmin', '2024-01-12', 38775),(
  'EmployeeName68', 'Tech', 'SysAdmin', '2024-01-11', 93169),(
  'EmployeeName69', 'Sales', 'Manager', '2024-01-10', 104918),(
  'EmployeeName70', 'Marketing', 'Sales Rep', '2024-01-09', 37093),(
  'EmployeeName71', 'Marketing', 'SysAdmin', '2024-01-08', 110680),(
  'EmployeeName72', 'Sales', 'Manager', '2024-01-07', 87952),(
  'EmployeeName73', 'Sales', 'Sales Rep', '2024-01-06', 100619),(
  'EmployeeName74', 'Tech', 'Manager', '2024-01-05', 66673),(
  'EmployeeName75', 'Sales', 'SysAdmin', '2024-01-04', 133464),(
  'EmployeeName76', 'Sales', 'Manager', '2024-01-03', 120592),(
  'EmployeeName77', 'Tech', 'SysAdmin', '2024-01-02', 95483),(
  'EmployeeName78', 'Sales', 'Sales Rep', '2024-01-01', 132035),(
  'EmployeeName79', 'Tech', 'Manager', '2023-12-31', 126692),(
  'EmployeeName80', 'Tech', 'SysAdmin', '2023-12-30', 125374),(
  'EmployeeName81', 'Sales', 'Sales Rep', '2023-12-29', 94521),(
  'EmployeeName82', 'Tech', 'Manager', '2023-12-28', 132116),(
  'EmployeeName83', 'Tech', 'SysAdmin', '2023-12-27', 112209),(
  'EmployeeName84', 'Tech', 'Sales Rep', '2023-12-26', 113035),(
  'EmployeeName85', 'Tech', 'Manager', '2023-12-25', 101724),(
  'EmployeeName86', 'Tech', 'SysAdmin', '2023-12-24', 105474),(
  'EmployeeName87', 'Marketing', 'SysAdmin', '2023-12-23', 74389),(
  'EmployeeName88', 'Tech', 'Sales Rep', '2023-12-22', 58003),(
  'EmployeeName89', 'Tech', 'SysAdmin', '2023-12-21', 74622),(
  'EmployeeName90', 'Sales', 'Manager', '2023-12-20', 37748),(
  'EmployeeName91', 'Tech', 'SysAdmin', '2023-12-19', 98592),(
  'EmployeeName92', 'Sales', 'SysAdmin', '2023-12-18', 77049),(
  'EmployeeName93', 'Sales', 'SysAdmin', '2023-12-17', 54480),(
  'EmployeeName94', 'Sales', 'Sales Rep', '2023-12-16', 115886),(
  'EmployeeName95', 'Sales', 'SysAdmin', '2023-12-15', 30072),(
  'EmployeeName96', 'Tech', 'Sales Rep', '2023-12-14', 69814),(
  'EmployeeName97', 'Sales', 'SysAdmin', '2023-12-13', 85777),(
  'EmployeeName98', 'Marketing', 'Sales Rep', '2023-12-12', 129838),(
  'EmployeeName99', 'Sales', 'Manager', '2023-12-11', 104402),(
  'EmployeeName100', 'Marketing', 'Sales Rep', '2023-12-10', 82436);
GO 1000


SELECT Name
FROM Employees
WHERE Department = 'Marketing'
OR JobTitle = 'Manager'
OR HiringDate < '2024-03-01'
OR Salary > 100000;


SET STATISTICS IO, TIME ON;

SELECT Name
FROM Employees
WHERE Department = 'Marketing'

UNION

SELECT Name
FROM Employees
WHERE JobTitle = 'Manager'

UNION

SELECT Name
FROM Employees
WHERE HiringDate > '2024-03-01'

UNION

SELECT Name
FROM Employees
WHERE Salary > 100000;


SET STATISTICS IO, TIME OFF;