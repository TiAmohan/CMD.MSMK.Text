use EveryTime
go

--�û���
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


----��Ӧ�̱�
--ȫ����ѯ
if exists(select * from sys.procedures where name='Providerselect')
drop proc Providerselect
go
create proc Providerselect(@Providername varchar(50)='')
as
	select * from Provider where Providername like '%'+@Providername+'%'
go
--	exec Providerselect 


--��Ӧ����Ʒ��
--ȫ����ѯ
if exists(select * from sys.procedures where name='ProviderProductselect')
drop proc ProviderProductselect
go
create proc ProviderProductselect(@Productname varchar(50)='')
as
	select * from ProviderProduct where Productname like '%'+@Productname+'%'
go
--	exec ProviderProductselect 


--���ұ�
--ȫ����ѯ
if exists(select * from sys.procedures where name='Sellerselect')
drop proc Sellerselect
go
create proc Sellerselect(@Sellername varchar(50)='')
as
	select * from Seller where Sellername like '%'+@Sellername+'%'
go
--	exec Sellerselect 


--������Ʒ��
--ȫ����ѯ
if exists(select * from sys.procedures where name='SellerProductselect')
drop proc SellerProductselect
go
create proc SellerProductselect(@Sproductname varchar(50)='')
as
	select * from SellerProduct where Sproductname like '%'+@Sproductname+'%'
go
--	exec SellerProductselect 


--������
--������ѯ (��ѡ)
if exists(select * from sys.procedures where name='Listselect')
drop proc Listselect
go
create proc Listselect(@Liststate int=-1)
as
	if @Liststate<>-1
		select * from List where Liststate=@Liststate
	else
		select * from List
go
--	exec SellerProductselect


--��Ҹ�����Ϣ
--ȫ����ѯ
if exists(select * from sys.procedures where name='Buyerselect')
drop proc Buyerselect
go
create proc Buyerselect
as
	select * from Buyer
go
--	exec Buyerselect 


--��ң����ﳵ��
--ȫ����ѯ
if exists(select * from sys.procedures where name='Shoppingselect')
drop proc Shoppingselect
go
create proc Shoppingselect(@Sproductname varchar(50)='')
as
	select * from Shopping where Sproductname like '%'+@Sproductname+'%'
go
--	exec Shoppingselect 


--ƽ̨���������
--ȫ����ѯ
if exists(select * from sys.procedures where name='Manageselect')
drop proc Manageselect
go
create proc Manageselect
as
	select * from Manage
go
--	exec Shoppingselect 

--��������
--ȫ����ѯ(�ɸ��ݼ���)
if exists(select * from sys.procedures where name='Approvalselect')
drop proc Approvalselect
go
create proc Approvalselect(@Approvalgrade int=-1)
as
	if @Approvalgrade<>-1
		select * from Approval
	else
		select * from Approval where Approvalgrade =@Approvalgrade
go
--	exec Shoppingselect 
