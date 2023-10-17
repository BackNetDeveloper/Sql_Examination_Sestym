--(((((((((((((((((((((((((((((((((((((((start instructor exam)))))))))))))))))))))))))))))))))))))))))))
exec [dbo].[selectBranch]
exec [dbo].[selectChoices]
exec [dbo].[selectClass]
exec [dbo].[selectCourse]
exec [dbo].[selectInstructor]
exec [dbo].[selectIntake]
exec [dbo].[selectQuestion]
exec [dbo].[selectTrack]
go
CREATE OR ALTER PROCEDURE numberOfQuestion
@examId int
as
begin
select questionId as numberOfQuestion from [mtm].[examQuestion] where examId=@examId 
end

go
go
CREATE OR ALTER PROCEDURE GenerateInstructorExam
@instructorId int,@examId int
as
BEGIN TRY 

IF NOT EXISTS (SELECT * FROM instructor i WHERE i.id = @instructorId) 

BEGIN            
SELECT 'The instructor does not exist' AS 'ErrMessage'    
END 

IF NOT EXISTS (SELECT * FROM exam.exam e WHERE e.id = @examId) 
BEGIN            
SELECT 'The exam does not exist' AS 'ErrMessage'    
END    

ELSE
	INSERT INTO [mtm].[instructorExam] (instructorId, examId)          
	values
	(@instructorId , @examId )
END TRY
BEGIN CATCH 
	SELECT ERROR_MESSAGE() AS errorMessage
END CATCH 
--(((((((((((((((((((((((((((((((((((((((start take exam)))))))))))))))))))))))))))))))))))))))))))
go
--(((((((((((((((((((((((((((((((((((((((end instructor exam)))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((start create exam)))))))))))))))))))))))))))))))))))))))))))
go
CREATE OR ALTER PROCEDURE GenerateAnExam  
@examId INT, @courseId INT, @instructorId int,@Num_MCQ_Questions INT,@Num_TF_Questions INT,
@startTime time,@endTime time,@examDate date, 
@courseName varchar(50),@status varchar(50)

AS

BEGIN TRY 
EXEC GenerateInstructorExam @instructorId,@examId
IF NOT EXISTS (SELECT * FROM course c WHERE c.id = @courseId) 

BEGIN            
SELECT 'The course does not exist' AS 'ErrMessage'    
END    

ELSE    

BEGIN 


-- Generate a random exam with 10 questions      
INSERT INTO exam.exam
(name, status, examCourseId, startTime,endTime,examDate) 
VALUES (@courseName,@status, @courseId, @startTime,@endTime,@examDate);    
-- Select True/False questions related to the same course  
		  
INSERT INTO [mtm].[examQuestion] (examId, questionId)    
SELECT TOP (@Num_TF_Questions) @examId, Q.id   
FROM [exam].[question] Q  
WHERE Q.instructorQuestionEdit = @instructorId 
AND Q.type = 't/f'  
ORDER BY NEWID();    
		  
-- Select Multiple Choice questions related to the same course    
INSERT INTO [mtm].[examQuestion] (examId, questionId)          
SELECT TOP (@Num_MCQ_Questions) @examId, Q.id       
FROM [exam].[question] Q           
WHERE Q.instructorQuestionEdit = @instructorId 
AND Q.type = 'mcq'      
ORDER BY NEWID(); 
		  
-- Select exam model        
SELECT Q.*         
FROM [mtm].[examQuestion] eq, [exam].[question] Q, [exam].[exam] E  
WHERE 
eq.[examId] = E.id
AND eq.questionId = Q.id
AND eq.[examId] = @examId 
END
		  
END TRY
BEGIN CATCH 
	SELECT ERROR_MESSAGE() AS errorMessage
END CATCH 
go
examProc.GenerateAnExam 4,2,2,1,1,'09:00:00','12:00:00','2023-9-8','Object-Oriented Programming','exam'
--(((((((((((((((((((((((((((((((((((((((end create exam)))))))))))))))))))))))))))))))))))))))))))
go
CREATE OR ALTER  procedure [dbo].[TakeExam] 
@examId INT 

as  

begin 
DECLARE @myCursor CURSOR; 
DECLARE @myField INT;   

CREATE TABLE #Exam ( 
Quest_Answer VARCHAR(Max) ,
questionIdShow int
); 
 
set @myCursor = CURSOR 
for 
select eq.questionId
from mtm.examQuestion eq
where eq.examId=@examId 

OPEN @myCursor 
	FETCH NEXT FROM @myCursor 
	INTO @myField 
	WHILE @@FETCH_STATUS = 0 
	
BEGIN 

	insert into #Exam  
	select q.questionText 
	from exam.question q
	where q.id=@myField 
	
	insert into #Exam  
	select CONCAT(char(96+ ROW_NUMBER() 
	over 
	( partition by c.id order by c.choiceText ))
	,c.choiceText,eq.questionId)
	from exam.choices c
	join mtm.examQuestion eq
	on eq.questionId=c.id
	where c.id=@myField 
	
	insert into #Exam   
	values ('') 
 
    FETCH NEXT FROM @myCursor 
	INTO @myField
END
 
CLOSE @myCursor; 
DEALLOCATE @myCursor; 
select * from #Exam 
end 
go
examProc.TakeExam 2
exec examProc.numberOfQuestion 2
--(((((((((((((((((((((((((((((((((((((((end take exam)))))))))))))))))))))))))))))))))))))))))))

--(((((((((((((((((((((((((((((((((((((((end save answer exam)))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROCEDURE SaveStudentExamAnswers 
@examId INT, @studentId INT, @questionId INT, @studentAnswer varchar(max) 

AS

BEGIN 
TRY 
IF NOT EXISTS (SELECT * FROM exam.exam e WHERE e.id = @examId)

BEGIN    
SELECT 'The exam does not exist' AS 'ErrMessage'
end

ELSE IF NOT EXISTS (SELECT * FROM exam.question q WHERE q.id = @questionId)  

BEGIN           
SELECT 'The question does not exist' AS 'ErrMessage'     
END

ELSE 
IF NOT EXISTS (SELECT * FROM Student s WHERE s.id = @studentId) 

BEGIN
SELECT
 'The student does not exist' AS 'ErrMessage'    
END 
 
 ELSE 
 
BEGIN  
INSERT INTO mtm.studentExamQuestion 
	(studentId, examId, questionId, answer)       
VALUES 
	(@studentId, @examId, @questionId, @studentAnswer);     
END
END TRY 
BEGIN CATCH  
 SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH  
go
examProc.SaveStudentExamAnswers 2,1,24,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,25,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,26,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,27,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,28,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,29,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,30,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,31,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,32,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,33,'TRUE'
go
examProc.SaveStudentExamAnswers 2,1,34,'Floating-point value assigned to a Floating type'
go
examProc.SaveStudentExamAnswers 2,1,35,'Compile time polymorphism'
go
examProc.SaveStudentExamAnswers 2,1,36,'Floating-point value assigned to a Floating type'
go
examProc.SaveStudentExamAnswers 2,1,37,'.class'
go
examProc.SaveStudentExamAnswers 2,1,38,'MemoryError'
go
examProc.SaveStudentExamAnswers 2,1,39,'break'
go
examProc.SaveStudentExamAnswers 2,1,40,'interface'
go
examProc.SaveStudentExamAnswers 2,1,41,'Abstract class'
go
examProc.SaveStudentExamAnswers 2,1,42,'javio'
go
examProc.SaveStudentExamAnswers 2,1,43,'catch'
go

--(((((((((((((((((((((((((((((((((((((((end save answer exam)))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((start get asnwer exam)))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROCEDURE GetStudentModelAnswer
    @examId INT,
	@studentId INT
AS
BEGIN TRY
	IF NOT EXISTS (SELECT * FROM exam.exam e WHERE e.id = @examId)
		BEGIN
            SELECT 'The exam does not exist' AS 'ErrMessage'
        END
	ELSE IF NOT EXISTS (SELECT * FROM Student s WHERE s.id = @studentId)
	    BEGIN
            SELECT 'The student does not exist' AS 'ErrMessage'
        END
	ELSE
		BEGIN	
			--((((((((((((((((((((((start set score)))))))))))))))))))))
		    UPDATE mtm.studentExamQuestion   
			SET score = CASE WHEN seq.answer = q.correctAnswer THEN q.degree ELSE 0 END  
			FROM mtm.studentExamQuestion seq     
				INNER JOIN exam.question q
				ON seq.questionId = q.id   
				WHERE seq.examId = @examId 
				AND seq.studentId = @studentId
				--((((((((((((((((((((((end set score)))))))))))))))))))))
			SELECT q.id, q.questionText, c.choiceText [Student Answer],seq.score,
			CASE WHEN seq.answer = q.correctAnswer THEN 'correct answer'
				WHEN seq.answer != q.correctAnswer THEN 'Wrong Answer'
			END AS [Answer Correction]

            FROM mtm.studentExamQuestion seq
			
			INNER JOIN exam.exam e
            ON e.id = seq.examId
			
			INNER JOIN exam.question q
            ON seq.questionId = q.id
			
            INNER JOIN exam.choices C
            ON q.id = c.id
			AND C.choiceText = q.correctAnswer
			WHERE seq.studentId = @studentId
			AND seq.examId = @examId
			AND seq.questionId = c.id


		END		
END TRY
BEGIN CATCH
	SELECT ERROR_MESSAGE() AS errorMessage
END CATCH
go
examProc.GetStudentModelAnswer 2,1
--(((((((((((((((((((((((((((((((((((((((end get asnwer exam)))))))))))))))))))))))))))))))))))))))))))
--(((((((((((((((((((((((((((((((((((((((start get asnwer exam)))))))))))))))))))))))))))))))))))))))))))
go
CREATE or alter PROC studentExamGrade
    @examId INT,
	@studentId INT
AS  
begin
	select sum(score) as studentExamGrade 
	from [mtm].[studentExamQuestion] seq
	where score>0
	and seq.examId=@examId
	and seq.studentId=@studentId
end
go
exec studentExamGrade 4,1
--(((((((((((((((((((((((((((((((((((((((end get asnwer exam)))))))))))))))))))))))))))))))))))))))))))
select * from mtm.studentExamQuestion
exec examProc.studentExamGrade 2,1