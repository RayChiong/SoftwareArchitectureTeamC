drop table if exists t_customer;

drop table if exists t_goods;

drop table if exists t_goods_sale;

drop table if exists t_goods_type;

drop table if exists t_user;

/*==============================================================*/
/* Table: t_customer                                            */
/*==============================================================*/
create table t_customer
(
   id                   int not null auto_increment,
   name                 varchar(200),
   phone                varchar(200),
   address              varchar(200),
   primary key (id)
)
type = InnoDB;

alter table t_customer comment '客户库';

/*==============================================================*/
/* Table: t_goods                                               */
/*==============================================================*/
create table t_goods
(
   id                   bigint not null auto_increment,
   name                 varchar(200),
   nick_name            varchar(200),
   description          varchar(200),
   create_time          timestamp,
   modify_time          timestamp,
   remove_time          timestamp,
   status               smallint,
   type                 smallint,
   type_name            varchar(200),
   bin_code             varchar(200),
   qr_code              varchar(200),
   primary key (id)
)
type = InnoDB;

alter table t_goods comment '商品库';

/*==============================================================*/
/* Table: t_goods_sale                                          */
/*==============================================================*/
create table t_goods_sale
(
   id                   bigint not null auto_increment,
   goods_id             bigint,
   goods_name           varchar(200),
   goods_type_id        int,
   goods_type_name      varchar(200),
   goods_nick_name      varchar(200),
   sale_time            timestamp,
   sale_count           int,
   receipt              smallint,
   invoice              smallint,
   money                smallint,
   audit                smallint,
   status               smallint,
   customer_id          bigint,
   customer_name        varchar(200),
   seller_id            int,
   seller_name          varchar(200),
   primary key (id)
)
type = InnoDB;

alter table t_goods_sale comment '销售记录';

/*==============================================================*/
/* Table: t_goods_type                                          */
/*==============================================================*/
create table t_goods_type
(
   id                   int not null auto_increment,
   type_name            varchar(200),
   primary key (id)
)
type = InnoDB;

alter table t_goods_type comment '商品类型库';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   int not null auto_increment,
   name                 varchar(200),
   create_time          timestamp,
   last_login_time      timestamp,
   last_login_ip        varchar(200),
   rights               int,
   status               int,
   password             varchar(200),
   primary key (id)
)
type = InnoDB;

alter table t_user comment '系统用户,登录管理用';
