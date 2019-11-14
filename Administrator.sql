use EveryTime
go
--管理员数据存储

--流量查询
--总人数查询
create proc selectnumber(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='select COUNT(*) from Users where 1=1' 
	if @num<>0
	begin
			set @sql+=' and Usergrade='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec selectnumber 1
create proc Listnumber(@num int=5)
as
	declare @sql varchar(max)
	 set @sql='select COUNT(*) from List where 1=1' 
	if @num<>5
	begin
			set @sql+=' and Liststate='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec Listnumber 5

