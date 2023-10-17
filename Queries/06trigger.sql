go
create or alter TRIGGER preventClassDelete
ON class 
instead of delete  
AS
begin
	PRINT 'User can not delete class after created'
	rollback;
end