create schema manager

go
alter schema manager
transfer [dbo].[insertInstructor]
alter schema manager
transfer [dbo].[insertCourse]
alter schema manager
transfer [dbo].[insertStudent]
alter schema manager
transfer [dbo].[insertBranch]
alter schema manager
transfer [dbo].[InsertIntake]
alter schema manager
transfer [dbo].[insertTrack]

alter schema manager
transfer [dbo].[deleteBranch]
alter schema manager
transfer [dbo].[deleteCourse]
alter schema manager
transfer [dbo].[DeleteInstructor]
alter schema manager
transfer [dbo].[DeleteIntake]
alter schema manager
transfer [dbo].[deleteStudent]
alter schema manager
transfer [dbo].[deleteTrack]

alter schema manager
transfer [dbo].[updateBranch]
alter schema manager
transfer [dbo].[updateCourse]
alter schema manager
transfer [dbo].[updateInstructor]
alter schema manager
transfer [dbo].[UpdateIntake]
alter schema manager
transfer [dbo].[UpdateStudent]
alter schema manager
transfer [dbo].[updateTrack]
go
go
alter schema examProc
transfer [dbo].[numberOfQuestion]
alter schema examProc
transfer [dbo].[studentExamGrade]

go
go
create schema instructor
GO
alter schema instructor
transfer [dbo].[DeleteQuestion]
alter schema instructor
transfer [dbo].[insertChoices]
alter schema instructor
transfer [dbo].[insertQuestion]
alter schema instructor
transfer [dbo].[UpdateChoices]
alter schema instructor
transfer [dbo].[updateQuestion]

GO
--((((((((((((((((((((((((((((((((((((start create student account))))))))))))))))))))))))))))))))
go
--- Create a role for the admin account
CREATE ROLE studentRole;

---Assign Permissions to Roles:
-- Grant necessary permissions to the admin role
GRANT EXECUTE  ON [examProc].[TakeExam]  TO studentRole;
GRANT EXECUTE ON [examProc].[SaveStudentExamAnswers] TO studentRole;

-- Create SQL logins for each account
CREATE LOGIN student WITH PASSWORD = 'student123';

-- Map logins to database users and assign roles
CREATE USER student FOR LOGIN student WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE studentRole ADD MEMBER student;
go
--((((((((((((((((((((((((((((((((((((end create student account))))))))))))))))))))))))))))))))
--((((((((((((((((((((((((((((((((((((start create instructor account))))))))))))))))))))))))))))))))
go
--- Create a role for the admin account
CREATE ROLE instructorRole;

---Assign Permissions to Roles:
-- Grant necessary permissions to the admin role
GRANT EXECUTE  ON  [examProc].[GenerateAnExam] TO instructorRole;
GRANT EXECUTE ON [examProc].[GenerateInstructorExam] TO instructorRole;
GRANT EXECUTE ON [examProc].[GetStudentModelAnswer] TO instructorRole;
GRANT EXECUTE ON SCHEMA::[instructor] TO instructorRole;
-- Create SQL logins for each account
CREATE LOGIN instructor WITH PASSWORD = 'instructor123';

-- Map logins to database users and assign roles
CREATE USER instructor FOR LOGIN instructor WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE instructorRole ADD MEMBER instructor;
go
--((((((((((((((((((((((((((((((((((((end create instructor account))))))))))))))))))))))))))))))))
--((((((((((((((((((((((((((((((((((((start create instructor account))))))))))))))))))))))))))))))))
--((((((((((((((((((((((((((((((((((((end create manager account))))))))))))))))))))))))))))))))
go
CREATE ROLE managerRole;

---Assign Permissions to Roles:
-- Grant necessary permissions to the admin role
GRANT EXECUTE ON SCHEMA::[manager] TO managerRole


-- Create SQL logins for each account

CREATE LOGIN manager WITH PASSWORD = 'manager123';

-- Map logins to database users and assign roles
CREATE USER manager FOR LOGIN manager WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE managerRole ADD MEMBER manager;
go
--((((((((((((((((((((((((((((((((((((end create manager account))))))))))))))))))))))))))))))))
