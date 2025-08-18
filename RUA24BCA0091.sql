-- Lab Experiment 01: Implementation of DDL Commands in SQL
-- STUDENT NAME: Syed Yasir
-- USN: 1RUA24BCA0091
-- SECTION: 

SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;
-- OUTPUT : [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]

-- Scenario: University Course Management System
-- CREATE AND LOAD THE database DBLab001
-- Write your SQL query below Codespace:

create database BCA24LAB001;
use BCA24LAB001
-- Task 1: Create the Students Table
-- Create a table to store information about students.
-- Include the following columns:
-- 1. StudentID (Primary Key)
-- 2. FirstName
-- 3. LastName
-- 4. Email (Unique Constraint)
-- 5. DateOfBirth

-- Write your SQL query below Codespace:
create table student(
studentid int Primary KEY,
Firstname varchar (20),
Lastname varchar (20),
email varchar (20),
dob date
);


DESC student; -- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
-- OUTPUT : Disclaimer - This code is not the part of the SQL Code
/*'studentid', 'int', 'NO', 'PRI', NULL, ''
'Firstname', 'varchar(20)', 'YES', '', NULL, ''
'Lastname', 'varchar(20)', 'YES', '', NULL, ''
'email', 'varchar(20)', 'YES', '', NULL, ''
'dob', 'date', 'YES', '', NULL, ''*/

-- Alter the table and 2 new columns
ALTER TABLE student add Gender varchar(20); 
ALTER TABLE student add Age int;


-- Modify a column data type
ALTER TABLE student modify Lastname varchar(30);
DESC student;


-- Rename a column
ALTER TABLE student rename column dob to column DateOfBirth;
DESC student;


-- Drop a column
ALTER TABLE student drop column age;
DESC student;

-- Rename the table
rename table student to STUDENTS;
DESC student;


-- Task 2: Create the Courses Table


-- Create a table to store information about courses.
-- Include the following columns:
-- - CourseID (Primary Key)
-- - CourseName
-- - Credits

-- Write your SQL query below Codespace:
create  table Courses(
coursesid int Primary KEY,
courseName varchar(30),
courseCode varchar(10),
Credits int);

DESC Courses; -- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]

/*-- OUTPUT :
'coursesid', 'int', 'NO', 'PRI', NULL, ''
'courseName', 'varchar(30)', 'YES', '', NULL, ''
'courseCode', 'varchar(10)', 'YES', '', NULL, ''
'Credits', 'int', 'YES', '', NULL, ''*/


-- Alter the table and 2 new columns
alter table Courses add (gender varchar(2), age int);
DESC Courses

-- Modify a column data type
alter table Courses modify courseCode varchar(12),
DESC Courses

-- Rename a colum
rename column courseCode to COURSECODE;
DESC Courses;

-- Drop a column
ALTER TABLE Courses drop column courseName;
DESC Courses;

-- Rename the table
rename table Courses to COURSE;
DESC Courses;


-- Task 3: Create the Enrollments Table
-- Create a table to store course enrollment information.
-- Include the following columns:
-- - EnrollmentID (Primary Key)
-- - StudentID (Foreign Key referencing Students table)
-- - CourseID (Foreign Key referencing Courses table)
-- - EnrollmentDate
show tables;
-- Write your SQL query below Codespace:
CREATE TABLE enrollments_table(
EnrollmentID int primary key,
StudentID int,
CoursesID int,
EnrollmentDate date,
foreign key(StudentID)references Students (StudentID),
foreign key(CoursesID)references Courses (CoursesID)
);

desc courses;


DESC enrollments_table; -- [ [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ] ]
-- OUTPUT :
/*'EnrollmentID', 'int', 'NO', 'PRI', NULL, ''
'StudentID', 'int', 'YES', 'MUL', NULL, ''
'CoursesID', 'int', 'YES', 'MUL', NULL, ''
'EnrollmentDate', 'date', 'YES', '', NULL, ''
*/
-- Alter the table and 2 new columns
-- Modify a column data type
-- Rename a column
-- Drop a column
-- Rename the table

-- Task 4: Alter the Students Table
-- Add a column 'PhoneNumber' to store student contact numbers.

-- Write your SQL query below Codespace:

DESC STUDENTS; -- [[ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]]

-- Task 5: Modify the Courses Table
-- Change the data type of the 'Credits' column to DECIMAL.
-- Write your SQL query below Codespace:

-- Task 6: Drop Tables

SHOW TABLES; -- Before dropping the table

-- Drop the 'Courses' and 'Enrollments' tables from the database.
-- Write your SQL query below Codespace:

SHOW TABLES; -- After dropping the table Enrollement and Course

-- End of Lab Experiment 01
-- Upload the Completed worksheet in the google classroom with file name USN _ LabExperiment01
