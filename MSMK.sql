use master
go

if exists(select * from sys.databases where name='EveryTime')
drop database EveryTime
go
create database EveryTime
go

use EveryTime
go


--�ȼ���
create table grade
(
	gradeId int primary key identity(1,1),--�û��ȼ�(1Ϊ��ң�2Ϊ���ң�3Ϊ��Ӧ�̣�4Ϊƽ̨����)
	ClassTypes varchar(20)--�û��ȼ�(Ϊ��ң�Ϊ���ң�Ϊ��Ӧ�̣�Ϊƽ̨����)
)
go
--�û���
create table Users
(
	Userid int primary key identity(1,1),--�û�id
	Username varchar(50) not null,       --�û���
	Userpassword varchar(50) not null,   --�û�����
	Userbalance money default(0) not null,           --�û����
	Usergrade int references grade(gradeId), --�û��ȼ�(1Ϊ��ң�2Ϊ���ң�3Ϊ��Ӧ�̣�4Ϊƽ̨����)
	UsersState int  default(0) check(UsersState=0 or UsersState=1)--�û�״̬  Ĭ��Ϊ0   0������1����
)
go
--������Ϣ
create table information
(
	Tel varchar(50),--�绰
	Mailbox varchar(50),--����
	Userid int references Users(Userid)--�û�ID
)
go
--�ջ���
create table Receiving 
(
	ReceivingID int primary key identity(1,1),--�ջ�ID
	Consignee varchar(50),--�ջ���
	ShippingAddress varchar(50),--�ջ���ַ
	Mobile varchar(50),--�ջ��ֻ���
	Userid int references Users(Userid)--�û�ID
)
go

create table Sproduct--������Ʒ��
(
    Sproductid int primary key identity(1,1),--������Ʒid
	Sproductname varchar(50)not null,        --������Ʒ����
	Sproductcontent varchar(100) not null,   --������Ʒ���
	Sproductprice money default(0),     --������Ʒ�۸�
	Sproductimg varchar(100) not null,       --������ƷͼƬ
	--Userid int references Users(Userid)--�û�ID
)
go

create table List--������
(
   
	Listid int primary key identity(1,1),--����id
	Sproductid int references Sproduct(Sproductid),--��Ӧ������Ʒ�����Ʒid�������
	Liststate int default(1) check(Liststate=1 or Liststate=2 or Liststate=3 or Liststate=4),--(Ĭ��ֵΪ1��1=δ������2���ѷ�����3������ɣ�4���˻�)����״̬
	Userid int references Users (Userid)--��Ӧ�û�����û�id�������
)
go

--create table Talk--������
--(
--  	Talkid int primary key identity(1,1),     --����id
--	--Sellerid int references Sproduct(Sellerid), --��Ӧ���ұ�����id���������
--	--Buyerid int references  Buyer(Buyerid),   --��Ӧ��ұ����id���������	
--	Talkcontent varchar(50) not null,         --��������
--	Talktime time not null,                   --����ʱ��
--)
--go

create table ProviderProduct--��Ӧ����Ʒ��
(
Productid int primary key identity(1,1),--��ƷID
Productname varchar(50) not null,--��Ʒ��
Productcontent varchar(50) not null,--��Ʒ���
Productprice money default(0) not null,--��Ʒ�۸�	
Productimg varchar(50) not null,--��ƷͼƬ
Userid int references Users (Userid)--�û�ID
)
go


create table comment--������۱�
(
commentid int primary key identity(1,1),--����ID
commentcontent varchar(50),--����
commenttime datetime default(getdate()),--����ʱ��
 Sproductid int references Sproduct(Sproductid)--������Ʒid ���
)
go

--�����
create table Notice
(
	NoticeID int primary key identity(1,1),--����ID
	NoticeTitle varchar(50) not null,--�������
	NoticeContent varchar(200) not null,--��������
	NoticeTime datetime default(getdate()),--����ʱ��
	Userid int references Users(Userid) --���淢����
)
go

--������
create table Approve
(
	ApproveID int primary key identity(1,1),--����ID
	ApproveLevel int not null,--��������
	ApproveContent varchar(200),--��������
	ApproveTime datetime default(getdate()),--����ʱ��
	Userid int references Users(Userid) --������
)
go



--�ǼǱ����ݲ���
insert grade values('���')
insert grade values('����')
insert grade values('��Ӧ��')
insert grade values('ƽ̨����')
--	select* from grade


--�û������ݲ���
insert Users values('����','123456',default,1,default)
insert Users values('����','123456',1324,2,default)
insert Users values('����','123456',1324,1,1)
insert Users values('����','123456',10000,3,default)
insert Users values('�Ժ�','123456',10000,3,default)
insert Users values('����','123456',10000,2,default)
insert Users values('������','123456',10000,3,default)
insert Users values('¬���','123456',10000,2,default)
insert Users values('����Զ','123456',10000,2,default)
insert Users values('����','123456',10000,4,default)
--��ѯ
--	select * from Users

--������Ϣ
insert information values('12345678910','123456@qq.com',1)
insert information values('12345678910','123456@qq.com',2)
insert information values('12345678910','123456@qq.com',3)
insert information values('12345678910','123456@qq.com',4)
insert information values('12345678910','123456@qq.com',5)
insert information values('12345678910','123456@qq.com',6)
insert information values('12345678910','123456@qq.com',7)
insert information values('12345678910','123456@qq.com',8)
insert information values('12345678910','123456@qq.com',9)
insert information values('12345678910','123456@qq.com',10)
--	select * from information


--�ջ�����Ϣ����
insert Receiving values('����','����ʡ֣���н�ˮ����԰·136��','12345678911',1)
insert Receiving values('����','����ʡ֣���йܳǻ�����1��','12345678912',2)
insert Receiving values('����','����ʡ֣���о�����136��','12345678913',3)
insert Receiving values('����','����ʡ֣���н�ˮ��136��','12345678914',4)
insert Receiving values('����','����ʡ֣���н�ˮ���Ļ�·136��','12345678915',5)
insert Receiving values('����','����ʡ֣���ж�����136��','12345678916',6)
insert Receiving values('����','����ʡ֣���ж�����XX·130��','12345678917',7)
insert Receiving values('����','����ʡ֣���о�����XX·16��','12345678918',8)
insert Receiving values('����','����ʡ֣���йܳǻ�����XX·16��','12345678919',9)
insert Receiving values('����','����ʡ֣���ж�����XX·136��','12345678920',10)
--select * from Receiving


--������Ʒ��Ϣ
insert Sproduct values('����ŷ','��Լ�ݻ�','5300','~/img/kxo/14.gif')
insert Sproduct values('����ŷ','��Լ�ݻ�','5200','~/img/kxo/13.gif')
insert Sproduct values('����ŷ','��Լ�ݻ�','5400','~/img/kxo/5.gif')
insert Sproduct values('������','��Լ�ݻ�','5800','~/img/amn/6.gif')
insert Sproduct values('������','��Լ�ݻ�','5800','~/img/amn/7.gif')
insert Sproduct values('������','��Լ�ݻ�','5800','~/img/amn/1.gif')
insert Sproduct values('����','��Լ�ݻ�','3300','~/img/lq/4.gif')
insert Sproduct values('����','��Լ�ݻ�','3900','~/img/lq/5.gif')
insert Sproduct values('����ʿ','��Լ�ݻ�','15300','~/img/lls/5.gif')
insert Sproduct values('����ʿ','��Լ�ݻ�','35300','~/img/lls/6.gif')
--select * from Sproduct

--������Ϣ
insert List values(1,2,1)
insert List values(2,3,2)
insert List values(3,1,3)
insert List values(4,2,4)
insert List values(5,1,5)
insert List values(6,3,6)
insert List values(7,2,7)
insert List values(8,1,8)
insert List values(9,2,9)
insert List values(10,3,10)
--select * from List
--��������
insert into Notice values('����Ա����','ÿʱÿ����վ��ʽ����',default,10)
insert into Notice values('����Ա����','���λ������ҹ���������ƽ̨����',default,10)
insert into Notice values('�����̹���','��Դ���£�����ע',default,4)
insert into Notice values('�����̹���','��Դ�����£��������',default,5)
insert into Notice values('�����̹���','��Դ�������£����ע��',default,7)
insert into Notice values('���ҹ���','�������£���ӭѡ��',default,2)
insert into Notice values('���ҹ���','�������£���ӭѡ��',default,6)
insert into Notice values('���ҹ���','�������£���ӭѡ��',default,6)
insert into Notice values('���ҹ���','�������£���ӭѡ��',default,8)
insert into Notice values('���ҹ���','�������£���ӭѡ��',default,9)
--select * from Notice


--���������
insert into Approve values(2,'�����Ϊ����',default,1)
insert into Approve values(2,'�����Ϊ����',default,1)
insert into Approve values(2,'�����Ϊ����',default,3)
insert into Approve values(2,'�����Ϊ����',default,3)
insert into Approve values(2,'�����Ϊ����',default,3)
insert into Approve values(3,'�����Ϊ������',default,2)
insert into Approve values(3,'�����Ϊ������',default,6)
insert into Approve values(3,'�����Ϊ������',default,6)
insert into Approve values(3,'�����Ϊ������',default,8)
insert into Approve values(3,'�����Ϊ������',default,9)
--select * from Approve


--������Ϣ
insert comment values('���۴�',default,2) 
insert comment values('���۴�',default,4) 
insert comment values('���۴�',default,5) 
insert comment values('���۴�',default,6) 
insert comment values('���۴�',default,3) 
insert comment values('���۴�',default,7)  
insert comment values('���۴�',default,9) 
insert comment values('���۴�',default,8) 
insert comment values('���۴�',default,1) 
insert comment values('���۴�',default,10) 
--select * from comment

--��Ӧ����Ʒ�����
insert into ProviderProduct values('����ŷ-�׽��','�߶˴�������ֵ��ӵ��','2499','../img/kxo/1.gif',4)
insert into ProviderProduct values('����ŷ-�ڽ��','�߶˴�������ֵ��ӵ��','2699','../img/kxo/2.gif',4)
insert into ProviderProduct values('����ŷ-�Ͻ��','�߶˴�������ֵ��ӵ��','2899','../img/kxo/3.gif',4)
insert into ProviderProduct values('����ŷ-ʱ�п�','�߶˴�������ֵ��ӵ��','2799','../img/kxo/5.gif',5)
insert into ProviderProduct values('����ŷ-���ſ�','�߶˴�������ֵ��ӵ��','2599','../img/kxo/6.gif',5)
insert into ProviderProduct values('����ŷ-������','�߶˴�������ֵ��ӵ��','2399','../img/kxo/7.gif',5)
insert into ProviderProduct values('����ŷ-�ݻ���','�߶˴�������ֵ��ӵ��','2199','../img/kxo/8.gif',7)
insert into ProviderProduct values('����ŷ-���п�','�߶˴�������ֵ��ӵ��','3199','../img/kxo/9.gif',7)
insert into ProviderProduct values('����ŷ-���¿�','�߶˴�������ֵ��ӵ��','3399','../img/kxo/10.gif',7)
insert into ProviderProduct values('����ŷ-�ö���','�߶˴�������ֵ��ӵ��','3599','../img/kxo/11.gif',7)
--select * from ProviderProduct