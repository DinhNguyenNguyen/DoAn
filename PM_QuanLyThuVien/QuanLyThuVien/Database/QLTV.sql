/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     22/09/2021 10:48:54                          */
/*==============================================================*/


--if exists(select 1 from sys.sysforeignkey where role='FK_CTPM_PHIEUMUON') then
--    alter table CTPM
--       delete foreign key FK_CTPM_PHIEUMUON
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_CTPM_SACH') then
--    alter table CTPM
--       delete foreign key FK_CTPM_SACH
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_PHAT_PHIEUMUON') then
--    alter table PHAT
--       delete foreign key FK_PHAT_PHIEUMUON
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_PHIEUMUON_THUTHU') then
--    alter table PHIEUMUON
--       delete foreign key FK_PHIEUMUON_THUTHU
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_PHIEUMUON_SINHVIEN') then
--    alter table PHIEUMUON
--       delete foreign key FK_PHIEUMUON_SINHVIEN
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_SACH_VITRI') then
--    alter table SACH
--       delete foreign key FK_SACH_VITRI
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_SACH_NXB') then
--    alter table SACH
--       delete foreign key FK_SACH_NXB
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_TAIKHOAN_CHUCVU') then
--    alter table TAIKHOAN
--       delete foreign key FK_TAIKHOAN_CHUCVU
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_TAIKHOAN_THUTHU') then
--    alter table TAIKHOAN
--       delete foreign key FK_TAIKHOAN_THUTHU
--end if;

--if exists(select 1 from sys.sysforeignkey where role='FK_VITR_LOAISACH') then
--    alter table VITRI
--       delete foreign key FK_VITR_LOAISACH
--end if;

--drop table if exists CHUCVU;

--drop table if exists CTPM;

--drop table if exists DOCGIA;

--drop table if exists LOAISACH;

--drop table if exists NHANVIEN;

--drop table if exists NXB;

--drop table if exists PHAT;

--drop table if exists PHIEUMUON;

--drop table if exists SACH;

--drop table if exists TAIKHOAN;

--drop table if exists VITRI;

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU 
(
   MACV                 varchar(6)                     not null,
   TENCV                nvarchar(50)                    null,
   constraint PK_CHUCVU primary key clustered (MACV)
);
go

/*==============================================================*/
/* Table: CTPM                                                  */
/*==============================================================*/
create table CTPM 
(
   MAPM                 varchar(6)                     not null,
   MASACH               varchar(6)                     not null,
   NGAYMUON             datetime                       null,
   HENTRA               datetime                       null,
   SOLUONG              integer                        null,
   GHICHU               nvarchar(50)                    null,
   TRASACH              bit                        null,
   constraint PK_CTPM primary key clustered (MAPM, MASACH)
);
go

/*==============================================================*/
/* Table: DOCGIA                                                */
/*==============================================================*/
create table DOCGIA 
(
   MADG                 varchar(6)                     not null,
   HOTEN                nvarchar(50)                    null,
   NAMSINH              date                           null,
   DIACHI               varchar(100)                   null,
   SDT                  numeric(10)                    null,
   EMAIL                varchar(50)                    null,
   constraint PK_DOCGIA primary key clustered (MADG)
);
go

/*==============================================================*/
/* Table: LOAISACH                                              */
/*==============================================================*/
create table LOAISACH 
(
   MALOAI               varchar(6)                     not null,
   TENLOAI              nvarchar(50)                    null,
   constraint PK_LOAISACH primary key clustered (MALOAI)
);
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN 
(
   MANV                 varchar(6)                     not null,
   TENNV                nvarchar(50)                    null,
   NAMSINH              datetime                           null,
   DIACHI               nvarchar(50)                    null,
   SDT                  numeric(10)                    null,
   EMAIL                varchar(50)                    null,
   constraint PK_NHANVIEN primary key clustered (MANV)
);
go

/*==============================================================*/
/* Table: NXB                                                   */
/*==============================================================*/
create table NXB 
(
   MANXB                varchar(6)                     not null,
   TENNXB               nvarchar(50)                    null,
   constraint PK_NXB primary key clustered (MANXB)
);
go

/*==============================================================*/
/* Table: PHAT                                                  */
/*==============================================================*/
create table PHAT 
(
   ID_PHAT              int identity(1,1)                        not null,
   LYDOPHAT             nvarchar(50)                    null,   
   HINHTHUCPHAT         nvarchar(50)                    null,
   GhiChu                 nvarchar(50)                          null,
   NGAYPHAT             datetime                       null,
   TRANGTHAIPHAT        bit                        null,
   MAPM                 varchar(6)                     null,
   MASACH               varchar(6)                     not null,
   constraint PK_PHAT primary key clustered (ID_PHAT)
);
go

/*==============================================================*/
/* Table: PHIEUMUON                                             */
/*==============================================================*/
create table PHIEUMUON 
(
   MAPM                 varchar(6)                     not null,
   MANV                 varchar(6)                     null,
   MADG                 varchar(6)                     null,
   constraint PK_PHIEUMUON primary key clustered (MAPM)
);
go

/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/
create table SACH 
(
   MASACH               varchar(6)                     not null,
   TENSACH              nvarchar(50)                    null,
   TACGIA               varchar(50)                    null,
   NAMXB                numeric(4)                     null,
   MANXB                varchar(6)                     null,
   MAVT                 varchar(6)                     null,
   constraint PK_SACH primary key clustered (MASACH)
);
go

/*==============================================================*/
/* Table: TAIKHOAN                                              */
/*==============================================================*/
create table TAIKHOAN 
(
   IDTAIKHOAN           int                            not null,
   TENTK                varchar(20)                    null,
   MATKHAU              varchar(30)                    null,
   MANV                 varchar(6)                     not null,
   MACV                 varchar(6)                     not null,
   constraint PK_TAIKHOAN primary key clustered (IDTAIKHOAN, MANV, MACV)
);
go

/*==============================================================*/
/* Table: VITRI                                                 */
/*==============================================================*/
create table VITRI 
(
   MAVT                 varchar(6)                     not null,
   MALOAI               varchar(6)                     null,
   TENVITRI             nvarchar(50)                    null,
   constraint PK_VITRI primary key clustered (MAVT)
);
go

/*==============================================================*/
/* Constraint												   */
/*==============================================================*/

-- Chưa tạo ràng buộc ahihi
alter table CTPM
   add constraint FK_CTPM_PHIEUMUON foreign key (MAPM)
      references PHIEUMUON (MAPM)
      on update cascade
      on delete cascade;
go
alter table CTPM
   add constraint FK_CTPM_SACH foreign key (MASACH)
      references SACH (MASACH)
      on update cascade
      on delete cascade;
go
alter table PHAT
   add constraint FK_PHAT_PHIEUMUON foreign key (MAPM, MASACH)
      references CTPM (MAPM, MASACH)
      on update cascade
      on delete cascade;
go
alter table PHIEUMUON
   add constraint FK_PHIEUMUON_THUTHU foreign key (MANV)
      references NHANVIEN (MANV)
      on update cascade
      on delete cascade;
go
alter table PHIEUMUON
   add constraint FK_PHIEUMUON_SINHVIEN foreign key (MADG)
      references DOCGIA (MADG)
      on update cascade
      on delete cascade;
go
alter table SACH
   add constraint FK_SACH_VITRI foreign key (MAVT)
      references VITRI (MAVT)
      on update cascade
      on delete cascade;
go
alter table SACH
   add constraint FK_SACH_NXB foreign key (MANXB)
      references NXB (MANXB)
      on update cascade
      on delete cascade;
go
alter table TAIKHOAN
   add constraint FK_TAIKHOAN_CHUCVU foreign key (MACV)
      references CHUCVU (MACV)
      on update cascade
      on delete cascade;
go
alter table TAIKHOAN
   add constraint FK_TAIKHOAN_THUTHU foreign key (MANV)
      references NHANVIEN (MANV)
      on update cascade
      on delete cascade;
go
alter table VITRI
   add constraint FK_VITR_LOAISACH foreign key (MALOAI)
      references LOAISACH (MALOAI)
      on update cascade
      on delete cascade;
go
