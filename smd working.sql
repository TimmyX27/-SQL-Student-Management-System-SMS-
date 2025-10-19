-- Creating a Student Management Database.
create database Student_Management_Database
CREATE TABLE Students
				(Student_ID varchar(5) PRIMARY KEY, 
				 Name varchar (100), 
				 Gender varchar (1), 
				 DOB date, 
				 Department_ID varchar(5)
				);



-- Create Department Information
CREATE TABLE Departments 
				(
                Department_ID varchar(5) PRIMARY KEY,
				Department_Name varchar(100)
                );



-- Create Course Information Table 
CREATE TABLE Courses
				(Course_ID varchar(5) PRIMARY KEY,
				 Course_Name varchar (100),
				 Department_ID varchar(5)
                 );



-- Create Enrollment Table
CREATE TABLE Enrollments
				(
                Enrollment_ID varchar(5) PRIMARY KEY,
				Student_ID varchar(5),
				Course_ID varchar(5),
				Enrollment_Date date
                );
                 

-- Create Instructor table
CREATE TABLE Instructors
				(
                Instructor_ID varchar(5) PRIMARY KEY,
				Name varchar (100),
				Gender varchar(100),
				Email varchar(100),
				Hire_Date date,
				Department_ID varchar(5)
                 );
				 



-- Adding foreign key constriants
alter table Students
add constraint fk_1
foreign key (Department_ID)
references Departments (Department_ID);

alter table Courses
add constraint fk_2
foreign key (Department_ID)
references Departments (Department_ID);


alter table Enrollments
add constraint fk_3
 FOREIGN KEY (Student_ID) 
 REFERENCES Students (Student_ID);
 
 alter table Enrollments
add constraint fk_4
 FOREIGN KEY (Course_ID)
 REFERENCES Courses (Course_ID);

 alter table Instructors
add constraint fk_5
FOREIGN KEY (Department_ID) 
REFERENCES Departments (Department_ID);


-- Populating database
-- Deparment 

INSERT INTO Departments (Department_ID, Department_Name) VALUES
('DT001', 'Computer Science'),
('DT002', 'Biology'),
('DT003', 'Mathematics'),
('DT004', 'Physics'),
('DT005', 'Economics'),
('DT006', 'English');

-- Courses 

INSERT INTO Courses (Course_ID, Course_Name, Department_ID) VALUES
('CS001', 'Introduction to Programming', 'DT001'),
('CS002', 'Data Structures', 'DT001'),
('CS003', 'Database Systems', 'DT001'),
('CS004', 'Algorithms and Complexity', 'DT001'),
('CS005', 'Cell Biology', 'DT002'),
('CS006', 'Genetics', 'DT002'),
('CS007', 'Microbiology', 'DT002'),
('CS008', 'Calculus I', 'DT003'),
('CS009', 'Linear Algebra', 'DT003'),
('CS010', 'Probability and Statistics', 'DT003'),
('CS011', 'Classical Mechanics', 'DT004'),
('CS012', 'Quantum Physics', 'DT004'),
('CS013', 'Thermodynamics', 'DT004'),
('CS014', 'Microeconomics', 'DT005'),
('CS015', 'Macroeconomics', 'DT005'),
('CS016', 'Econometrics', 'DT005'),
('CS017', 'English Literature', 'DT006'),
('CS018', 'Creative Writing', 'DT006'),
('CS019', 'Academic Writing', 'DT006'),
('CS020', 'Technical Communication', 'DT006');

--  instructors

INSERT INTO Instructors (Instructor_ID, Name, Gender, Email, Hire_Date, Department_ID) VALUES
('IT001', 'Dr. Samuel Okoro', 'M', 'samuel.okoro@university.edu.ng', '2023-03-15', 'DT001'),
('IT002', 'Prof. Amina Yusuf', 'F', 'amina.yusuf@university.edu.ng', '2023-05-21', 'DT002'),
('IT003', 'Dr. Michael Adeniyi', 'M', 'michael.adeniyi@university.edu.ng', '2024-02-10', 'DT003'),
('IT004', 'Dr. Helen Chukwu', 'F', 'helen.chukwu@university.edu.ng', '2023-07-09', 'DT004'),
('IT005', 'Dr. Joseph Anya', 'M', 'joseph.anya@university.edu.ng', '2023-10-03', 'DT005'),
('IT006', 'Dr. Rita Oladimeji', 'F', 'rita.oladimeji@university.edu.ng', '2024-01-20', 'DT006'),
('IT007', 'Dr. Emeka Obi', 'M', 'emeka.obi@university.edu.ng', '2023-08-12', 'DT001'),
('IT008', 'Dr. Clara Nwankwo', 'F', 'clara.nwankwo@university.edu.ng', '2023-11-02', 'DT002'),
('IT009', 'Mr. Daniel Peters', 'M', 'daniel.peters@university.edu.ng', '2024-03-18', 'DT003'),
('IT010', 'Prof. Mary Johnson', 'F', 'mary.johnson@university.edu.ng', '2023-06-25', 'DT004'),
('IT011', 'Dr. Aminu Bello', 'M', 'aminu.bello@university.edu.ng', '2023-09-11', 'DT005'),
('IT012', 'Ms. Funke Adeyemi', 'F', 'funke.adeyemi@university.edu.ng', '2024-01-05', 'DT006'),
('IT013', 'Dr. Samuel Kuti', 'M', 'samuel.kuti@university.edu.ng', '2023-12-15', 'DT001'),
('IT014', 'Dr. Ngozi Ezenwa', 'F', 'ngozi.ezenwa@university.edu.ng', '2023-08-22', 'DT003'),
('IT015', 'Mr. Olu Jacobs', 'M', 'olu.jacobs@university.edu.ng', '2024-02-08', 'DT006');


-- STUDENTS

INSERT INTO Students (Student_ID, Name, Gender, DOB, Department_ID) VALUES
('ST001', 'Adebayo Adeola', 'M', '2001-04-12', 'DT001'),
('ST002', 'Amaka Okoye', 'F', '2002-08-03', 'DT002'),
('ST003', 'Babatunde Femi', 'M', '2000-11-21', 'DT001'),
('ST004', 'Chiamaka Obi', 'F', '2001-06-15', 'DT003'),
('ST005', 'Daniel Eke', 'M', '1999-12-05', 'DT004'),
('ST006', 'Ebere Nnaji', 'F', '2003-01-28', 'DT006'),
('ST007', 'Francis John', 'M', '2002-03-07', 'DT005'),
('ST008', 'Grace Uche', 'F', '2000-09-19', 'DT002'),
('ST009', 'Hassan Musa', 'M', '2001-02-10', 'DT001'),
('ST010', 'Ifeoma Eze', 'F', '1999-07-30', 'DT003'),
('ST011', 'Jide Olatunji', 'M', '2000-05-22', 'DT001'),
('ST012', 'Kemi Afolabi', 'F', '2001-10-11', 'DT006'),
('ST013', 'Lekan Owolabi', 'M', '2002-12-01', 'DT005'),
('ST014', 'Mariam Bello', 'F', '2003-06-02', 'DT002'),
('ST015', 'Nkem Opara', 'F', '2000-04-08', 'DT003'),
('ST016', 'Oluwatobi Akin', 'M', '2001-09-27', 'DT001'),
('ST017', 'Patience Okonkwo', 'F', '2002-02-18', 'DT004'),
('ST018', 'Quadri Lawal', 'M', '2000-08-07', 'DT005'),
('ST019', 'Rita Chukwu', 'F', '2001-11-14', 'DT006'),
('ST020', 'Seyi Adesanya', 'M', '1999-03-31', 'DT001'),
('ST021', 'Tosin Bakare', 'F', '2002-07-09', 'DT001'),
('ST022', 'Uzochi Nwaneri', 'F', '2003-05-25', 'DT002'),
('ST023', 'Victor Agbo', 'M', '2000-10-03', 'DT004'),
('ST024', 'Wunmi Adebisi', 'F', '2001-01-05', 'DT006'),
('ST025', 'Xavier Ekong', 'M', '2002-04-16', 'DT005'),
('ST026', 'Yemi Balogun', 'M', '2001-12-20', 'DT001'),
('ST027', 'Zainab Hassan', 'F', '2000-06-06', 'DT002'),
('ST028', 'Abigail Peters', 'F', '2003-03-13', 'DT006'),
('ST029', 'Bolanle Ilesanmi', 'F', '1999-09-09', 'DT003'),
('ST030', 'Chukwuma Nwosu', 'M', '2000-02-26', 'DT004'),
('ST031', 'Damilola Ogun', 'F', '2001-05-04', 'DT001'),
('ST032', 'Elias Mensah', 'M', '2002-11-02', 'DT005'),
('ST033', 'Favour Amadi', 'F', '2000-01-19', 'DT003'),
('ST034', 'Gbenga Ayo', 'M', '1998-12-30', 'DT001'),
('ST035', 'Halima Usman', 'F', '2002-09-23', 'DT002'),
('ST036', 'Ibrahim Bello', 'M', '2001-07-12', 'DT005'),
('ST037', 'Jumoke Ade', 'F', '2000-03-03', 'DT006'),
('ST038', 'Kola Martins', 'M', '1999-11-08', 'DT004'),
('ST039', 'Lola Awolowo', 'F', '2001-08-28', 'DT003'),
('ST040', 'Moses Eze', 'M', '2002-05-17', 'DT004'),
('ST041', 'Ngozi Umeh', 'F', '1998-10-25', 'DT006'),
('ST042', 'Olaide Ojo', 'F', '2000-02-14', 'DT001'),
('ST043', 'Peter Ike', 'M', '2001-06-29', 'DT005'),
('ST044', 'Queen Nwachukwu', 'F', '2002-01-02', 'DT003'),
('ST045', 'Ramon Okoro', 'M', '1999-04-21', 'DT004'),
('ST046', 'Susan Okafor', 'F', '2003-07-20', 'DT006'),
('ST047', 'Tunde Aina', 'M', '2000-09-01', 'DT001'),
('ST048', 'Umar Abdullahi', 'M', '2001-03-11', 'DT002'),
('ST049', 'Vera Chike', 'F', '2002-10-30', 'DT003'),
('ST050', 'Yakubu Sule', 'M', '1999-05-17', 'DT005');


-- ENROLLMENTS


INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Enrollment_Date) VALUES
('EN001', 'ST001', 'CS001', '2023-09-10'),
('EN002', 'ST001', 'CS002', '2023-09-11'),
('EN003', 'ST002', 'CS005', '2023-09-12'),
('EN004', 'ST002', 'CS006', '2023-09-13'),
('EN005', 'ST003', 'CS003', '2024-01-08'),
('EN006', 'ST004', 'CS009', '2023-09-14'),
('EN007', 'ST005', 'CS011', '2023-09-15'),
('EN008', 'ST006', 'CS017', '2024-02-04'),
('EN009', 'ST007', 'CS015', '2024-01-15'),
('EN010', 'ST008', 'CS006', '2023-09-16'),
('EN011', 'ST009', 'CS001', '2023-09-17'),
('EN012', 'ST009', 'CS003', '2023-09-18'),
('EN013', 'ST010', 'CS008', '2023-09-19'),
('EN014', 'ST011', 'CS004', '2023-09-20'),
('EN015', 'ST012', 'CS018', '2023-09-21'),
('EN016', 'ST013', 'CS015', '2023-09-22'),
('EN017', 'ST014', 'CS007', '2023-09-23'),
('EN018', 'ST015', 'CS008', '2023-09-24'),
('EN019', 'ST016', 'CS002', '2023-09-25'),
('EN020', 'ST017', 'CS012', '2023-09-26'),
('EN021', 'ST018', 'CS016', '2023-09-27'),
('EN022', 'ST019', 'CS019', '2023-09-28'),
('EN023', 'ST020', 'CS001', '2023-09-29'),
('EN024', 'ST021', 'CS003', '2023-09-30'),
('EN025', 'ST022', 'CS006', '2024-02-10'),
('EN026', 'ST023', 'CS011', '2023-10-01'),
('EN027', 'ST024', 'CS020', '2023-10-02'),
('EN028', 'ST025', 'CS015', '2023-10-03'),
('EN029', 'ST026', 'CS002', '2023-10-04'),
('EN030', 'ST027', 'CS005', '2023-10-05'),
('EN031', 'ST028', 'CS017', '2023-10-06'),
('EN032', 'ST029', 'CS008', '2023-10-07'),
('EN033', 'ST030', 'CS012', '2023-10-08'),
('EN034', 'ST031', 'CS004', '2023-10-09'),
('EN035', 'ST032', 'CS016', '2023-10-10'),
('EN036', 'ST033', 'CS009', '2023-10-11'),
('EN037', 'ST034', 'CS003', '2023-10-12'),
('EN038', 'ST035', 'CS007', '2023-10-13'),
('EN039', 'ST036', 'CS015', '2023-10-14'),
('EN040', 'ST037', 'CS020', '2023-10-15'),
('EN041', 'ST038', 'CS013', '2023-10-16'),
('EN042', 'ST039', 'CS009', '2023-10-17'),
('EN043', 'ST040', 'CS011', '2023-10-18'),
('EN044', 'ST041', 'CS019', '2023-10-19'),
('EN045', 'ST042', 'CS001', '2023-10-20'),
('EN046', 'ST043', 'CS016', '2023-10-21'),
('EN047', 'ST044', 'CS010', '2023-10-22'),
('EN048', 'ST045', 'CS013', '2023-10-23'),
('EN049', 'ST046', 'CS018', '2023-10-24'),
('EN050', 'ST047', 'CS002', '2023-10-25'),
('EN051', 'ST048', 'CS005', '2023-10-26'),
('EN052', 'ST049', 'CS008', '2023-10-27'),
('EN053', 'ST050', 'CS015', '2023-10-28'),
('EN054', 'ST001', 'CS003', '2023-10-29'),
('EN055', 'ST002', 'CS007', '2023-10-30'),
('EN056', 'ST003', 'CS004', '2023-10-31'),
('EN057', 'ST004', 'CS009', '2023-11-01'),
('EN058', 'ST005', 'CS012', '2023-11-02'),
('EN059', 'ST006', 'CS017', '2023-11-03'),
('EN060', 'ST007', 'CS016', '2023-11-04'),
('EN061', 'ST008', 'CS006', '2023-11-05'),
('EN062', 'ST009', 'CS002', '2023-11-06'),
('EN063', 'ST010', 'CS010', '2023-11-07'),
('EN064', 'ST011', 'CS001', '2023-11-08'),
('EN065', 'ST012', 'CS020', '2023-11-09'),
('EN066', 'ST013', 'CS015', '2023-11-10'),
('EN067', 'ST014', 'CS007', '2023-11-11'),
('EN068', 'ST015', 'CS008', '2023-11-12'),
('EN069', 'ST016', 'CS003', '2023-11-13'),
('EN070', 'ST017', 'CS012', '2023-11-14'),
('EN071', 'ST018', 'CS016', '2023-11-15'),
('EN072', 'ST019', 'CS018', '2023-11-16'),
('EN073', 'ST020', 'CS001', '2023-11-17'),
('EN074', 'ST021', 'CS002', '2023-11-18'),
('EN075', 'ST022', 'CS006', '2023-11-19'),
('EN076', 'ST023', 'CS011', '2023-11-20'),
('EN077', 'ST024', 'CS019', '2023-11-21'),
('EN078', 'ST025', 'CS014', '2023-11-22'),
('EN079', 'ST026', 'CS003', '2023-11-23'),
('EN080', 'ST027', 'CS005', '2023-11-24'),
('EN081', 'ST028', 'CS017', '2023-11-25'),
('EN082', 'ST029', 'CS010', '2023-11-26'),
('EN083', 'ST030', 'CS013', '2023-11-27'),
('EN084', 'ST031', 'CS004', '2023-11-27'),
('EN085', 'ST031', 'CS004', '2023-11-28'),
('EN086', 'ST032', 'CS016', '2023-11-29'),
('EN087', 'ST033', 'CS009', '2023-11-30'),
('EN088', 'ST034', 'CS003', '2023-12-01'),
('EN089', 'ST035', 'CS007', '2023-12-02'),
('EN090', 'ST036', 'CS015', '2023-12-03'),
('EN091', 'ST037', 'CS020', '2023-12-04'),
('EN092', 'ST038', 'CS013', '2023-12-05'),
('EN093', 'ST039', 'CS009', '2023-12-06'),
('EN094', 'ST040', 'CS011', '2023-12-07'),
('EN095', 'ST041', 'CS019', '2023-12-08'),
('EN096', 'ST042', 'CS001', '2023-12-09'),
('EN097', 'ST043', 'CS016', '2023-12-10'),
('EN098', 'ST044', 'CS010', '2023-12-11'),
('EN099', 'ST045', 'CS013', '2023-12-12'),
('EN100', 'ST046', 'CS018', '2023-12-13');


select * from courses