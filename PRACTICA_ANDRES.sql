create schema Practica authorization trutbgpn;

--creacion de tablas + insert de cada una + ALTER TABLE agregando PK Y FK

create table Practica.MODELO(
id_modelo varchar(10) not null,
nombre varchar(15)not null,
comentario varchar(300));

alter table practica.MODELO
add constraint MODELO_PK primary key (id_modelo);

insert into Practica.MODELO(id_MODELO, nombre) values ('m1','micra');
insert into Practica.MODELO(id_MODELO, nombre) values ('c1','corolla');
insert into Practica.MODELO(id_MODELO, nombre) values ('p1','polo');
insert into Practica.MODELO(id_MODELO, nombre) values ('f1','fiesta');
insert into Practica.MODELO(id_MODELO, nombre) values ('g1','golf');
insert into Practica.MODELO(id_MODELO, nombre) values ('22','208');
insert into Practica.MODELO(id_MODELO, nombre) values ('J1','JUKE');
insert into Practica.MODELO(id_MODELO, nombre) values ('a2','a1');
insert into Practica.MODELO(id_MODELO, nombre) values ('r4','rav4');
insert into Practica.MODELO(id_MODELO, nombre) values ('i3','i30');
insert into Practica.MODELO(id_MODELO, nombre) values ('32','308');
insert into Practica.MODELO(id_MODELO, nombre) values ('t1','tundra');
insert into Practica.MODELO(id_MODELO, nombre) values ('f2','focus');
insert into Practica.MODELO(id_MODELO, nombre) values ('r1','rubicon');
insert into Practica.MODELO(id_MODELO, nombre) values ('52','500');


create table Practica.color(
id_color varchar(10) not null,
nombre varchar(15)not null,
comentario varchar(300));

alter table practica.color
add constraint color_PK primary key (id_color);

insert into Practica.color(id_color, nombre) values ('a1','azul');
insert into Practica.color(id_color, nombre) values ('r1','rojo');
insert into Practica.color(id_color, nombre) values ('n1','negro');
insert into Practica.color(id_color, nombre) values ('g1','gris ');
insert into Practica.color(id_color, nombre) values ('b1','blanco');
insert into Practica.color(id_color, nombre) values ('a2','azul electrico');




create table Practica.MARCA(
id_marca varchar(10) not null,
nombre varchar(15)not null,
comentario varchar(300));

alter table practica.marca
add constraint MARCA_PK primary key (id_marca);

insert into Practica.MARCA(id_marca, nombre) values ('n','nissan');
insert into Practica.MARCA(id_marca, nombre) values ('v','vw');
insert into Practica.MARCA(id_marca, nombre) values ('a','audi');
insert into Practica.MARCA(id_marca, nombre) values ('j','jeep');
insert into Practica.MARCA(id_marca, nombre) values ('h','hyundai');
insert into Practica.MARCA(id_marca, nombre) values ('t','toyota');
insert into Practica.MARCA(id_marca, nombre) values ('fi','fiat');
insert into Practica.MARCA(id_marca, nombre) values ('f','ford');
insert into Practica.MARCA(id_marca, nombre) values ('p','peugeot');

create table Practica.GRUPO_EMPRESARIAL(
id_grupo varchar(10) not null,
nombre varchar(15)not null,
comentario varchar(300));

alter table practica.GRUPO_EMPRESARIAL
add constraint GRUPO_PK primary key (id_GRUPO);

insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('rn','renault nissan');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('t','toyota');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('v','volkswagen');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('fo','ford');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('p','psa');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('a','alianza');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('h','hyundai');
insert into Practica.GRUPO_EMPRESARIAL(id_grupo, nombre) values ('fc','fca');

create table Practica.aseguracion(
id_aseguradora varchar(10) not null,
nombre varchar(15)not null,
comentario varchar(300));

alter table practica.aseguracion
add constraint aseg_PK primary key (id_aseguradora);

insert into Practica.ASEGURACION(id_aseguradora, nombre) values ('map','mapfre');
insert into Practica.ASEGURACION(id_aseguradora, nombre) values ('all','allianz');
insert into Practica.ASEGURACION(id_aseguradora, nombre) values ('axa','axa');
insert into Practica.ASEGURACION(id_aseguradora, nombre) values ('mut','mutua');


create table Practica.FLOTA(
id_coche varchar(10) not null,
dt_compra date not null,
matricula varchar(8 ) not null,
total_km varchar(15) not null,
id_modelo varchar (5) not null,
id_marca  varchar (5) not null,
id_grupo  varchar (5) not null,
id_color  varchar (5) not null,
id_aseguradora varchar(5) not null,
n_poliza  varchar (10) not null);

alter table Practica.FLOTA
add constraint Flota_PK primary key(id_coche);

alter table practica.flota 
add constraint MARCA_FK foreign key(id_marca)
references practica.marca(id_marca);

alter table practica.flota 
add constraint MODELO_FK foreign key(id_modelo)
references practica.MODELO(id_modelo);

alter table practica.flota 
add constraint GRUPO_FK foreign key(id_grupo)
references practica.grupo_empresarial(id_grupo);

alter table practica.flota 
add constraint aseg_FK foreign key(id_aseguradora)
references practica.aseguracion(id_aseguradora);

alter table practica.flota 
add constraint color_FK foreign key(id_color)
references practica.color(id_color);


insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('1','2010-10-20','2810lkm','20000','m1','n','rn','a1','map','ma12');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('2','2015-09-05','1314ltj','60000','c1','t','t','r1','all','al21');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('3','2010-11-20','2527vnj','25000','p1','v','v','n1','map','ma32');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('4','2015-10-06','5657qln','40000','f1','f','fo','g1','map','ma45');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('5','2010-12-20','3640cst','42500','g1','v','v','b1','axa','ax53');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('6','2015-11-05','7892tlf','45000','22','p','p','a2','mut','mu67');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('7','2011-01-20','1514klm','47500','J1','n','a','r1','axa','ax71');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('8','2015-12-06','7284jmn','50000','a2','a','v','n1','all','al87');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('9','2011-02-20','3526dfg','52500','f1','f','fo','g1','axa','ax93');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('10','2016-01-06','7813pln','55000','r4','t','t','b1','all','al107');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('11','2011-03-20','2134pyt','57500','i3','h','h','a1','map','ma112');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('12','2016-02-03','6743sql','60000','32','p','p','r1','all','al126');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('13','2011-04-20','7680jvs','62500','m1','n','rn','g1','map','ma137');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('14','2016-03-05','5463scl','65000','t1','h','h','b1','map','ma145');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('15','2011-05-20','7891etl','67500','f2','f','fo','a1','axa','ax157');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('16','2016-04-04','0964bdt','70000','r1','j','fc','r1','mut','mu160');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('17','2011-06-20','8910hjg','72500','52','fi','fc','g1','axa','ax178');
insert into Practica.FLOTA(id_coche,dt_compra,matricula,total_km,id_modelo,id_marca ,id_grupo,id_color, id_aseguradora, n_poliza) values ('18','2016-05-05','5040trl','75000','52','fi','fc','b1','all','al185');

create table Practica.moneda(
id_moneda varchar(10) not null,
nombre varchar(15)not null,
comentario varchar(300));

alter table practica.moneda
add constraint moneda_PK primary key (id_moneda);

insert into practica.moneda(id_moneda,nombre) values ('eu','Euro');
insert into practica.moneda(id_moneda,nombre) values ('do','dolar');


create table Practica.COCHE_REVISIONES(
id_coche varchar(10) not null,
dt_revision date not null,
id_revision varchar (6) not null,
km_revision varchar (10) not null,
precio_revision varchar(10) not null,
id_moneda varchar(4) not null);

alter table Practica.COCHE_REVISIONES
add constraint COCHE_REVISIONES_PK primary key(id_coche, dt_revision);

alter table Practica.COCHE_REVISIONES
add constraint COCHE_REVISIONES_FK foreign key(id_coche)
references Practica.FLOTA(id_coche) ;

alter table Practica.COCHE_REVISIONES
add constraint monedas_FK foreign key(id_moneda)
references Practica.moneda(id_moneda) ;

insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('2','2018/10/05','1','25000','75','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('4','2016/12/01','2','10000','60','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('5','2020/05/05','3','80000','120','do');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('3','2019/02/01','4','90000','90','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('1','2011/10/06','5','10500','80','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('5','2023/07/05','6','183000','120','do');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('7','2017/07/06','7','118500','160','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('6','2018/09/15','8','25400','80','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('13','2021/12/12','9','289500','200','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('14','2019/01/15','10','35000','75','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('15','2020/11/11','11','160500','105','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('17','2019/12/13','12','96000','95','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('16','2018/08/14','13','43150','80','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('11','2017/02/12','14','97000','101','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('18','2020/09/24','15','52500','99','do');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('12','2021/12/14','16','53000','98','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('6','2022/04/13','17','45335','96','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('9','2018/05/14','18','37670','95','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('8','2015/12/20','19','30005','94','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('10','2022/12/15','20','22340','92','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('11','2017/10/01','21','14675','91','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('2','2023/05/07','22','17009','89','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('3','2018/09/05','23','78650','88','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('1','2020/12/15','24','122000','87','eu');
insert into Practica.coche_revisiones(id_coche, dt_revision,id_revision,km_revision, precio_revision, id_moneda) values('18','2021/12/13','25','75000','85','do');



