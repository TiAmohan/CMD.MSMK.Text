use master
go
if exists(select * from sys.databases where name='EveryTime')--ÿʱÿ�����ݿ�
drop database EveryTime
go
create database EveryTime
go
use EveryTime
go
if exists(select * from sys.tables where name='Users')--�û���
drop table Users
go
create table Users
(
Userid int primary key identity(1,1),--�û�id
Username varchar(50) not null,       --�û���
Userpassword varchar(50) not null,   --�û�����
Usergrade int check(Usergrade=1
 or Usergrade=2 or Usergrade=3 
 or Usergrade=4) not null,           --�û��ȼ�(1Ϊ��ң�2Ϊ���ң�3Ϊ��Ӧ�̣�4Ϊƽ̨����)
Userbalance money not null           --�û����
)
if exists(select * from sys.tables where name='Provider')--��Ӧ�̱�
drop table Provider
go
create table Provider
(
Providerid int primary key identity(1,1),--��Ӧ��id
Providername varchar(50),                --��Ӧ������
Providerstate int default(0) check(Providerstate=0 or Providerstate=1)not null,    --(��Ӧ��״̬Ĭ����0��0��������1�Ƕ���)
)
if exists(select * from sys.tables where name='ProviderProduct')--��Ӧ����Ʒ��
drop table ProviderProduct
go
create table ProviderProduct
(
Productid int primary key identity(1,1),--��Ӧ����Ʒid
Productname varchar(50)not null,        --��Ӧ����Ʒ����
Productcontent varchar(100)not null,    --��Ӧ����Ʒ���
Productprice varchar(100)not null,      --��Ӧ����Ʒ�۸�
Productimg varchar(50) not null,        --��Ӧ����ƷͼƬ
Providerid int references Provider(Providerid)--��Ӧ��Ӧ�̱�Ĺ�Ӧ��id�������
)
if exists(select * from sys.tables where name='Seller')--���ұ�
drop table Seller
go
create table Seller 
(
Sellerid int primary key identity(1,1),--����id
Sellername varchar(50) not null,       --��������
Sellerstate int default(0) check(Sellerstate=0 or Sellerstate=1)not null,    --(����״̬Ĭ����0��0��������1�Ƕ���)
)
if exists(select * from sys.tables where name='SellerProduct')--������Ʒ��
drop table SellerProduct
go
create table SellerProduct
(
Sproductid int primary key identity(1,1),--������Ʒid
Sproductname varchar(50)not null,        --������Ʒ����
Sproductcontent varchar(100) not null,   --������Ʒ���
Sproductprice varchar(100) not null,     --������Ʒ�۸�
Sproductimg varchar(100) not null,       --������ƷͼƬ
Sellerid int references Seller(Sellerid)--��Ӧ���ұ������id�������
)
if exists(select * from sys.tables where name='List')--������
drop table List
go
create table List
(
Listid int primary key identity(1,1),--����id
Sproductid int references SellerProduct(Sproductid),--��Ӧ������Ʒ�����Ʒid�������
Liststate int default(0) check(Liststate=0 or Liststate=1 or Liststate=2 or Liststate=3)not null,--(Ĭ��ֵΪ0��0�Ǵ�������1���ѷ�����2������ɣ�3���˻�)����״̬
Userid int references Users (Userid)--��Ӧ�û�����û�id�������
)

if exists(select * from sys.tables where name='Buyer')-- ��Ҹ�����Ϣ
drop table Buyer
go
create table Buyer
(
Buyerid int primary key identity(1,1), --���id
Buyername varchar(50) not null,        --����û���
Buyerphone varchar(50) not null,       --��ҵ绰
Buyeremail varchar(50) not null,       --�������
Shname varchar(50) not null,           --�ջ�������
Shaddress varchar(50) not null,        --�ջ��˵�ַ
Shphone varchar(50) not null,          --�ջ��˵绰
)
if exists(select * from sys.tables where name='Shopping')--��ң����ﳵ��
drop table Shopping
go
create table Shopping
(
Shoppingid int primary key identity(1,1),   --���ﳵid
Sproductname varchar(50)not null,        --���ﳵ��Ʒ������Ӧ����������Ʒ���ƣ�
Sproductcontent varchar(100) not null,   --���ﳵ��Ʒ��飨��Ӧ����������Ʒ��飩
Sproductprice varchar(100) not null,     --���ﳵ��Ʒ�۸񣨶�Ӧ����������Ʒ�۸�
Sproductimg varchar(100) not null,       --���ﳵ��ƷͼƬ����Ӧ����������ƷͼƬ��
Buyerid int references Buyer(Buyerid)    --��ҹ��ﳵ��Ӧ��Ҹ�����Ϣ�����id���������
)
if exists(select * from sys.tables where name='Send')--���ͱ�
drop table Send
go
create table Send
(
Sendid int primary key identity(1,1),    --����id
Listname varchar(50) not null,           --��������
Listmoney   money not null,              --�������
Listmessage varchar(50) not null,        --������Ϣ
Buyerid int  references Buyer (Buyerid)  --��Ӧ��Ҹ�����Ϣ�����id���������
)
if exists(select * from sys.tables where name='Manage')--ƽ̨���������
drop table Manage
go
create table Manage
(
Manageid  int primary key identity(1,1), --����id
Managetitle varchar(50) not null,        --�������
Managecontent varchar(50) not null,      --��������
Managetime time not null,                --��������
Managegrade int check(
Managegrade=1 or Managegrade=2 or
 Managegrade=3 or Managegrade=4 or
  Managegrade=5) not null                --�����Ӧ����(���ĸ����𷢲�)(��ң����ң���Ӧ�̣����ͣ�ȫ��)
)
if exists(select * from sys.tables where name='Approval')--��������
drop table Approval
go
create table Approval
(
Approvalid int primary key identity(1,1), --����id
Approvalgrade int not null,               --��������
Approvalcontent varchar(50) not null,     --��������
Approvaltime time not null,               --����ʱ��
Userid int references Users(Userid)       --��Ӧ�û����û�id���������
)
if exists(select * from sys.tables where name='Talk')--��������ҵĽ���
drop table Talk
go
create table Talk
(
Talkid int primary key identity(1,1),     --����id
Sellerid int references Seller(Sellerid), --��Ӧ���ұ�����id���������
Buyerid int references  Buyer(Buyerid),   --��Ӧ��ұ����id���������	
Talkcontent varchar(50) not null,         --��������
Talktime time not null,                   --����ʱ��
)
go

insert Users values('����','123456',1,1300)
insert Users values('����','111111',2,200)
select * from Users
