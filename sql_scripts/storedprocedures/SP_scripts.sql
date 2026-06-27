create procedure UpdateDateHolder
@mydate Date
as 
begin
begin transaction
update dateholder
set lastdate = @mydate;
commit 
end;
