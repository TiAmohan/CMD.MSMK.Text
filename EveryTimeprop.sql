use EveryTime
go
--��ѯ�˺�����  �����˺�������е�¼
if exists(select * from sys.procedures where name='Userslogin')
drop proc Userslogin
go
create proc Userslogin(@Username varchar(50),@Userpassword varchar(50))
as
	select * from Users where Username=@Username and Userpassword=@Userpassword
go

--	exec Userslgoin '����','123456'
--����ID��ѯ
if exists(select * from sys.procedures where name='UsersloginID')
drop proc UsersloginID
go
create proc UsersloginID(@Userid int)
as
	select * from Users where Userid=@Userid
go
--	exec UsersloginID 1