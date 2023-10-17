
--(((((((((((((((((((((((((((((((((((((((((((((start course))))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROCEDURE selectCourse
AS
BEGIN
    SELECT *
	FROM course
END

----- SP INSERT
GO

go
CREATE or alter PROCEDURE insertCourse
	@courseName VARCHAR(50),
	@maxDegree int,
	@minDegree int,
	@discription varchar(70),
	@courseInstuctor INT
AS
BEGIN
    INSERT INTO course
	VALUES(@courseName,@maxDegree,@minDegree,@discription, @courseInstuctor)
END

----- SP UPDATE
GO

go
CREATE or alter PROCEDURE updateCourse
    @courseId INT,
    @courseInstuctor INT
AS
BEGIN
    UPDATE course 
	SET course.courseInstructor = @courseInstuctor
	WHERE course.id = @courseId
END

----- SP DELETE
GO

go
CREATE or alter PROCEDURE deleteCourse
    @courseId INT
AS
BEGIN
    DELETE FROM course
	WHERE course.id = @courseId
END

----- Question table -----

----- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end course))))))))))))))))))))))))))))))))))))))))))))

--(((((((((((((((((((((((((((((((((((((((((((((start question))))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROCEDURE selectQuestion
AS
BEGIN
    SELECT *
	FROM exam.question
END

----- SP INSERT
GO

go
CREATE or alter PROCEDURE insertQuestion
	@questionText VARCHAR(max),
    @type VARCHAR(50),
	@degree float,
	@correctAnswer varchar(max),
	@instructorQuestionEditId int

AS
BEGIN
    INSERT INTO exam.question (type,degree,correctAnswer,questionText,instructorQuestionEdit)
	VALUES(@type, @degree, @correctAnswer,@questionText,@instructorQuestionEditId)
END

----- SP UPDATE
go

GO
CREATE or alter PROCEDURE updateQuestion
    @instructorQuestionEditId INT,
	@questionId int,
	@questionText varchar(max)
AS
BEGIN
    UPDATE exam.question
	SET exam.question.questionText = @questionText
	WHERE exam.question.id = @questionId
	and exam.question.instructorQuestionEdit = @instructorQuestionEditId
END

----- SP DELETE
GO

go
CREATE or alter PROCEDURE deleteQuestion
    @questionId INT
AS
BEGIN
    DELETE FROM exam.question
	WHERE exam.question.id = @questionId
END

----- Choices table -----

----- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end question))))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((((((((start choices))))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROCEDURE selectChoices
AS
BEGIN
    SELECT *
	FROM exam.choices
END

----- SP INSERT
GO

go
CREATE or alter PROCEDURE insertChoices
    @choiceId INT,
	@choiceText VARCHAR(max)
AS
BEGIN
    INSERT INTO exam.choices
	VALUES(@choiceId, @choiceText)
END

----- SP UPDATE
GO

go
CREATE or alter PROCEDURE updateChoices
    @choiceId INT,
	@choiceText VARCHAR(max),
    @newChoiceText VARCHAR(max)
AS
BEGIN
    UPDATE exam.choices
	SET exam.choices.choiceText = @newChoiceText
	WHERE exam.choices.id = @choiceId
	AND exam.choices.choiceText = @choiceText
END
go

--(((((((((((((((((((((((((((((((((((((((((((((end choices))))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((((((((start branch))))))))))))))))))))))))))))))))))))))))))))
GO
CREATE or alter PROCEDURE selectBranch
AS
BEGIN
    SELECT *
		FROM [department].[branch]
END

----- SP INSERT
GO

go
CREATE or alter PROCEDURE insertBranch

	@branchName VARCHAR(50),
    @managerId INT
AS
BEGIN
    INSERT INTO [department].[branch]
	VALUES(@branchName, @managerId )
END

----- SP UPDATE
GO

go
CREATE or alter PROCEDURE updateBranch
    @branchId INT,
    @managerId INT
AS
BEGIN
    UPDATE department.branch
	SET department.branch.managerId = @managerId
	WHERE department.branch.id = @branchId
END

----- SP DELETE
GO

go
CREATE or alter PROCEDURE deleteBranch
    @branchId INT
AS
BEGIN
    DELETE FROM department.branch
	WHERE department.branch.id = @branchId
END

----- Instructor table -----

----- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end branch))))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((((((((start instructor))))))))))))))))))))))))))))))))))))))))))))
CREATE or alter PROCEDURE selectInstructor
AS
BEGIN
    SELECT *
	FROM instructor
END

----- SP INSERT
GO
CREATE or alter PROCEDURE insertInstructor
	@instructorName VARCHAR(50),
	@instructorStartWorkDate Date,
	@instructorEmail VARCHAR(70),
	@instructorEmailPassword VARCHAR(70),
	@instructorAccountDate Date,
    @instructorrole VARCHAR(30)
AS
BEGIN
    INSERT INTO Instructor
	VALUES(@instructorName, @instructorStartWorkDate, @instructorEmail, @instructorEmailPassword, @instructorAccountDate, @instructorrole )
END

----- SP UPDATE
GO
CREATE or alter PROCEDURE updateInstructor
    @instructorId INT,
	@instructorEmailPassword VARCHAR(70),
	@instructorrole VARCHAR(30)
AS
BEGIN
   UPDATE student
	SET password = @instructorEmailPassword,role=@instructorrole
	WHERE id = @instructorId
END

----- SP DELETE
GO
CREATE or alter PROCEDURE deleteInstructor
    @instructorId INT
AS
BEGIN
    DELETE FROM Instructor
	WHERE id = @instructorId
END

----- Std_Phone table -----

----- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end instructor))))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((((((((start student))))))))))))))))))))))))))))))))))))))))))))
GO
create or ALTER PROCEDURE selectStudent
AS
BEGIN
    SELECT *
	FROM student
END

----- SP INSERT
GO
create or ALTER PROCEDURE insertStudent
   	@studentName VARCHAR(50),
	@studentAccountDate Date,
	@studentEmail VARCHAR(70),
	@studentEmailPassword VARCHAR(70),
    @studentRole VARCHAR(30),
	@studentIntake INT
AS
BEGIN
    INSERT INTO Student 
	VALUES(@studentName, @studentAccountDate,@studentEmail,@studentEmailPassword,@studentRole,@studentIntake)
END

----- SP UPDATE
GO
create or ALTER PROCEDURE updateStudent
    @studentId INT,
	@studentEmailPassword VARCHAR(70)
AS
BEGIN
    UPDATE Student
	SET password = @studentEmailPassword
	WHERE id = @studentId
END

----- SP DELETE
GO
create or ALTER PROCEDURE deleteStudent
    @studentId INT
AS
BEGIN
    DELETE FROM Student
	WHERE id = @studentId
END

----- Std_Feedback table -----

----- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end student))))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((((((((start intake))))))))))))))))))))))))))))))))))))))))))))


create or ALTER PROCEDURE selectIntake
AS
BEGIN
    SELECT *
	FROM department.intake
END

----- SP INSERT
GO
create or ALTER PROCEDURE insertIntake
   @intakeName  VARCHAR(50), 
   @startDate Date,
   @endDate Date,
   @intakeBranchId INT
AS
BEGIN
    INSERT INTO department.intake 
	VALUES (@intakeName, @startDate,@endDate,@intakeBranchId)
END

----- SP UPDATE
GO

go
create or ALTER PROCEDURE updateIntake
    @intakeName VARCHAR(30)
AS
BEGIN
    UPDATE department.intake 
	SET name = @intakeName
	WHERE name = @intakeName
END

----- SP DELETE 
GO
create or ALTER PROCEDURE deleteIntake
    @intakeName  VARCHAR(50)
AS
BEGIN
    DELETE FROM department.intake
	WHERE name = @intakeName
END

----- Grad_Std table -----

-- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end intake))))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((((((((start trake))))))))))))))))))))))))))))))))))))))))))))
Go
create or ALTER PROCEDURE selectTrack
AS
BEGIN
    SELECT *
	FROM [department].[track]
END

GO
----- SP INSERT
GO
create or ALTER PROCEDURE insertTrack
   @trackName  VARCHAR(50),
   @trackBranchId INT
AS
BEGIN
    INSERT INTO [department].[track]
	VALUES (@trackName, @trackBranchId)
END


GO
----- SP UPDATE
GO
create or ALTER PROCEDURE updateTrack
    @trackName VARCHAR(50),
	@trackBranchId INT
AS
BEGIN
    UPDATE [department].[track]
	SET name = @trackName
	WHERE name = @trackName
END

GO
----- SP DELETE 
GO
create or ALTER PROCEDURE deleteTrack
    @trackId INT
AS
BEGIN
    DELETE FROM [department].[track]
	WHERE id = @trackId
END

----- Grad_Std table -----

-- SP SELECT
GO
--(((((((((((((((((((((((((((((((((((((((((((((end trake))))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROCEDURE selectClass
AS
BEGIN
    SELECT *
	FROM [dbo].[class]
END

----- SP INSERT
GO

go
CREATE or alter PROCEDURE insertClass
	@className VARCHAR(50),
    @classYear date

AS
BEGIN
    INSERT INTO [dbo].[class]
	VALUES(@className,@classYear)
END

----- SP UPDATE
go

GO
CREATE or alter PROCEDURE updateClass
	@classId int,
    @className VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[class]
	SET name = @className
	WHERE id = @classId
	
END



----- Choices table -----

----- SP SELECT
GO
