go
--((((((((((((((((((((((((((start create database))))))))))))))))))))))))))))))
create database itiProject
on
(
--C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA
	Name ='Net_Company_Data',
	FileName = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\itiProject.mdf',
	Size = 10MB,
	Maxsize = unlimited,
	filegrowth = 50%
)
LOG on
(
	Name ='Net_Company_Log',
	FileName = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\itiProject.ldf',
	Size = 5MB,
	Maxsize = 100MB,
	filegrowth = 50%
)
--((((((((((((((((((((((((((end create database))))))))))))))))))))))))))))))
go
--((((((((((((((((((((((((((start create schema))))))))))))))))))))))))))))))
create schema department;
go
create schema exam;
go
create schema mtm;
--((((((((((((((((((((((((((end create schema))))))))))))))))))))))))))))))
go

--((((((((((((((((((((((((((start create tables))))))))))))))))))))))))))))))
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--((((((((((((((((((((((((((start create student table))))))))))))))))))))))))))))))
create  table student
(
	id int identity(1,1) ,
	name varchar(50),
	studentIntake int,
	constraint studentPk primary key(id),
)
go
alter table student
add email varchar(70)
alter table student
add password varchar(70)
alter table student
add role varchar(30)
alter table student
add accountDate date
alter table student
add studentIntake int
go
alter table student
add constraint studentIntakeFk foreign key (studentIntake)
references [department].[intake](id)
on update cascade
on delete cascade
go

--((((((((((((((((((((((((((end create student table))))))))))))))))))))))))))))))
go

--((((((((((((((((((((((((((start create instructor table))))))))))))))))))))))))))))))
create table instructor
(
	id int identity(1,1) ,
	name varchar(50),
	startWork date,
	constraint instructorPk primary key(id),

)
go
alter table instructor
add email varchar(70)
alter table instructor
add password varchar(70)
alter table instructor
add role varchar(30)
alter table instructor
add constraint checkRole check(role in ('manager','instructor'))
alter table instructor
add accountDate date
go
--(((((((((((end create instructor table))))))))))))))))))))))))))))))
--((((((((((((((((((((((((((start create class table))))))))))))))))))))))))))))))
create table class
(
	id int identity(1,1) ,
	name varchar(50),
	classYear date,
	constraint classPk primary key(id),

)
--(((((((((((end create class table))))))))))))))))))))))))))))))
go
--((((((((((((((((((((((((((start create course table))))))))))))))))))))))))))))))
create table course
(
	id int identity(1,1) ,
	name varchar(50),
	maxDegree int,
	minDegree int,
	discription varchar(70),
	constraint coursePk primary key(id),
)
go
alter table course
add courseInstructor int
alter table course
add constraint courseInstructorIdFk foreign key (courseInstructor)
references [dbo].[instructor](id)
on update cascade
on delete cascade
create nonclustered index courseNameIndex
	on course(name)
--((((((((((((((((((((((((((end create course table))))))))))))))))))))))))))))))
go

--((((((((((((((((((((((((((start create track table))))))))))))))))))))))))))))))
create table department.track
(
	id int identity(1,1) ,
	name varchar(50),
	constraint trackPk primary key(id),
)
go
alter table department.track
add departmentTrack int
--alter table department.track
--drop constraint departmentTrackFk
alter table department.track
add constraint departmentTrackIdFk foreign key (departmentTrack)
references [department].[branch](id)
on update cascade
on delete cascade
--((((((((((((((((((((((((((end create track table))))))))))))))))))))))))))))))
go
--((((((((((((((((((((((((((start create track table))))))))))))))))))))))))))))))
create table department.branch
(
	id int identity(1,1) ,
	name varchar(50),
	constraint branchPk primary key(id),
)
go
alter table department.branch
add managerId int
alter table department.branch
drop constraint branchConstructorFk

alter table department.branch
add constraint branchConstructorFk foreign key (managerId)
references [dbo].[instructor](id)

on update cascade
on delete cascade
--((((((((((((((((((((((((((end create track table))))))))))))))))))))))))))))))
go
--((((((((((((((((((((((((((start create intake table))))))))))))))))))))))))))))))
create table department.intake
(
	id int identity(1,1) ,
	name varchar(50),
	startDate date,
	endDate date,
	constraint intakePk primary key(id),
)
go
alter table department.intake
add departmentIntake int
--alter table department.intake
--drop constraint departmentIntakeIdFk 

alter table department.intake
add constraint departmentIntakeIdFk foreign key (departmentIntake)
references [department].[branch](id)
--on update cascade
--on delete cascade
--((((((((((((((((((((((((((end create intake table))))))))))))))))))))))))))))))
go
--((((((((((((((((((((((((((start create exam table))))))))))))))))))))))))))))))
create table exam.exam
(
	id int identity(1,1) ,
	name varchar(50),
	status varchar(50) check (status in('exam','corrective'))
	constraint examPk primary key(id),
)
go
alter table exam.exam
add examCourseId int
alter table exam.exam
add startTime time
alter table exam.exam
add endTime time 
alter table exam.exam
add examDate date 
alter table exam.exam
add constraint examCourseIdFk foreign key (examCourseId)
references course(id)
go
--((((((((((((((((((((((((((end create exam table))))))))))))))))))))))))))))))
--((((((((((((((((((((((((((start create question table))))))))))))))))))))))))))))))
go
create table exam.question
(
	id int identity(1,1) ,
	type varchar(50),
	degree float,
	correctAnswer varchar(max),
	questionText varchar(max),
	constraint questionPk primary key(id)
)
go
alter table exam.question
add instructorQuestionEdit int
alter table exam.question
add constraint instructorQuestionEditFk foreign key (instructorQuestionEdit)
references [dbo].[instructor](id)
on update cascade
on delete cascade

--((((((((((((((((((((((((((end create question table))))))))))))))))))))))))))))))
go
--((((((((((((((((((((((((((start create choices table))))))))))))))))))))))))))))))
create table exam.choices
(
	choiceNumber int identity(1,1),
	id int ,
	choiceText varchar(max),
	constraint choicesPk primary key(choiceNumber)
)
alter table exam.choices
add constraint questionChoicesIdFk foreign key (id)
references [exam].[question](id)
on update cascade
on delete cascade

--((((((((((((((((((((((((((end create choices table))))))))))))))))))))))))))))))
go
create table [mtm].[studentCourse]
(

studentId INT FOREIGN KEY 
REFERENCES student(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
courseId INT FOREIGN KEY 
REFERENCES course(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
studentCoursePk int primary key (studentId,courseId)
)
go
create table [mtm].[instructorWork]
(
instructorId INT FOREIGN KEY 
REFERENCES instructor(id) ,
--ON UPDATE CASCADE  
--ON DELETE CASCADE,
departmentId INT FOREIGN KEY 
REFERENCES department.branch(id) ,
--ON UPDATE CASCADE  
--ON DELETE CASCADE,
instructorWorkPk int primary key (instructorId,departmentId)

)
go
create table [mtm].[examQuestion]
(
examId INT FOREIGN KEY 
REFERENCES exam.exam(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
questionId INT FOREIGN KEY 
REFERENCES exam.question(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
examQuestionPk int primary key (examId,questionId)
)
go
create table [mtm].[instructorExam]
(
instructorId INT FOREIGN KEY 
REFERENCES instructor(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
examId INT FOREIGN KEY 
REFERENCES exam.exam(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
instructorExamPk int primary key (instructorId,examId)
)
go
create table [mtm].[studentExamQuestion]
(
examId INT FOREIGN KEY 
REFERENCES exam.exam(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
questionId INT FOREIGN KEY 
REFERENCES exam.question(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
studentId INT FOREIGN KEY 
REFERENCES student(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
primary key (examId,questionId,studentId),
answer varchar(max),
score int

)
go
create table [mtm].[instructorClass]
(
instructorId INT FOREIGN KEY 
REFERENCES instructor(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE,
classId INT FOREIGN KEY 
REFERENCES class(id) 
ON UPDATE CASCADE  
ON DELETE CASCADE
)

--((((((((((((((((((((((((((end create tables))))))))))))))))))))))))))))))
------------------------------------------------------------------------------
------------------------------------------------------------------------------