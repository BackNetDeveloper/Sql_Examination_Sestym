--(((((((((((((((((((((((((((((((((((start view allMember)))))))))))))))))))))))))))))))))))))
create or alter view allMembers
as
select name ,role from student    as Students
union
select name ,role from instructor as Instructors
union
select name ,role from instructor as Managers
where role='Manager'
--(((((((((((((((((((((((((((((((((((end view allMember)))))))))))))))))))))))))))))))))))))
--Test--
--Select * From allMembers
--(((((((((((((((((((((((((((((((((((start view doExam)))))))))))))))))))))))))))))))))))))
create or alter view doExame
as
select * from  mtm.studentExamQuestion
--(((((((((((((((((((((((((((((((((((end view doExam)))))))))))))))))))))))))))))))))))))
--Test--
--Select * From doExame