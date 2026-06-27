create procedure usp_update_dateholder
@mydate Date
as 
begin
begin transaction
update dateholder
set lastdate = @mydate;
commit 
end;


--copy incremental data from sql db to bronze layer (source -> query)
-- select * from SalesOrders 
-- where orderdate>='@{activity('lastDate').output.value[0].LastDate}'
-- and 
-- orderdate<='@{activity('maxDate').output.value[0].maxDate}'


--@activity('maxDate').output.value[0].maxDate
