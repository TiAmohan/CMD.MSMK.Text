use EveryTime
go
--����Ա���ݴ洢

--������ѯ
--������ѯ
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
--	exec selectnumber 0

--��������ѯ
create proc Listnumber(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='select COUNT(*) from List where 1=1' 
	if @num<>0
	begin
			set @sql+=' and Liststate='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec Listnumber 

--Ӫ�����ѯ
create proc Listsale(@num int=0)
as
	declare @sql varchar(max)
	 set @sql='
SELECT   SUM( dbo.Sproduct.Sproductprice)
FROM      dbo.List INNER JOIN
                dbo.Users ON dbo.List.Userid = dbo.Users.Userid INNER JOIN
                dbo.Sproduct ON dbo.List.Sproductid = dbo.Sproduct.Sproductid where 1=1' 
	if @num<>0
	begin
			set @sql+=' and Usergrade ='+CONVERT(varchar, @num)
		exec (@sql)
	end
	else
		exec (@sql)
go
--	exec Listsale 1

--top10����


--������ѯ�б�����
--	����	���֡��ȼ���״̬
create proc UsersList(@Username varchar(50)='',@Usergrade int=0,@UsersState int=-1)
as
	declare @sql varchar(max)
	 set @sql='select * from Users,grade where Usergrade=gradeId and Username like ''%'+@Username+'%'''
	 if @Usergrade<>0
		set @sql+=' and Usergrade ='+CONVERT(varchar,@Usergrade)
	 if @UsersState<>-1
		set @sql+=' and UsersState ='+CONVERT(varchar,@UsersState)
	 prInt (@sql)
	 exec (@sql)
go
--	exec UsersList '',0,-1


--��ѯ��������
create proc gradeList
as
	select * from grade
go
--	exec gradeList

--�޸��û�״̬
create proc UsersStateupdate(@Userid int)
as
declare @UsersState varchar(max)
set @UsersState='select UsersState from Users where Userid='+CONVERT(varchar,@Userid)
exec (@UsersState)
declare @num int
set @num=CONVERT(varchar,@UsersState)
if @num=0
	update Users set UsersState=1 where Userid=@Userid

if @num<>0
	update Users set UsersState=0 where Userid=@Userid
go
--	exec UsersStateupdate 3
--select * from Users


--��ѯ����  �ɸ��ݼ����ѯ