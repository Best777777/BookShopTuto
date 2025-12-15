/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2025/6/5 1:11:16                             */
/*==============================================================*/


drop table if exists Administrator;

drop table if exists Bill;

drop table if exists Book;

drop table if exists Purchase;

drop table if exists User;

drop table if exists 修改更新;

drop table if exists 修改更新2;

/*==============================================================*/
/* Table: Administrator                                         */
/*==============================================================*/
create table Administrator
(
   AdminPassword        char(6)
);

/*==============================================================*/
/* Table: Bill                                                  */
/*==============================================================*/
create table Bill
(
   UId                  int not null,
   BillId               int,
   Qty                  int
);

/*==============================================================*/
/* Table: Book                                                  */
/*==============================================================*/
create table Book
(
   BId                  int not null,
   BTitle               char(100) not null,
   BAuther              char(50) not null,
   BCat                 char(50) not null,
   BQty                 int not null,
   BPrice               int,
   primary key (BId)
);

/*==============================================================*/
/* Table: Purchase                                              */
/*==============================================================*/
create table Purchase
(
   UId                  int not null,
   BId                  int not null,
   Number               smallint,
   primary key (UId, BId)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   UId                  int not null,
   UName                varchar(50),
   UPhone               varchar(20),
   UAdd                 varchar(200),
   UPassword            varchar(50),
   primary key (UId)
);

/*==============================================================*/
/* Table: 修改更新                                                  */
/*==============================================================*/
create table 修改更新
(
   BId                  int not null,
   primary key (BId)
);

/*==============================================================*/
/* Table: 修改更新2                                                 */
/*==============================================================*/
create table 修改更新2
(
   UId                  int not null,
   Stock                int,
   primary key (UId)
);

alter table Bill add constraint FK_创建 foreign key (UId)
      references User (UId) on delete restrict on update restrict;

alter table Purchase add constraint FK_Purchase foreign key (BId)
      references Book (BId) on delete restrict on update restrict;

alter table Purchase add constraint FK_Purchase2 foreign key (UId)
      references User (UId) on delete restrict on update restrict;

alter table 修改更新 add constraint FK_修改更新 foreign key (BId)
      references Book (BId) on delete restrict on update restrict;

alter table 修改更新 add constraint FK_修改更新3 foreign key ()
      references Administrator on delete restrict on update restrict;

alter table 修改更新2 add constraint FK_修改更新2 foreign key (UId)
      references User (UId) on delete restrict on update restrict;

alter table 修改更新2 add constraint FK_修改更新4 foreign key ()
      references Administrator on delete restrict on update restrict;

