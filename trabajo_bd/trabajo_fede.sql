create database muebleria;

create table PRODUCTOS (
    PRO_ID number not null,
    PRO_NOMBRE varchar (25),
    PRO_CDM_ID number,
    PRO_PRECIO number
)


insert into PRODUCTOS  (PRO_ID, PRO_NOMBRE, PRO_CDM_ID, PRO_PRECIO)
     values ( 1, "Mesa", 1, 20000);
     values ( 2, "Sillon", 2, 75000);
     values ( 3, "Mesada", 3, 120000);
     values ( 4, "Silla", 3, 15000);
     values ( 5, "Ropero", 4, 100000);


alter table PRODUCTOS (
    add constraint PK_PRO_ID primary key (PRO_ID)
    foreign key (PRO_CDM_ID) reference CATEGORIAS_DE_LA_MUEBLERIA (CDM_ID)
)




create table STOCKS (
    STO_ID number not null,
    STO_PRO_ID number,
    STO_SDM_ID number,
    STO_CANTIDAD number
)


insert into STOCKS (STO_ID, STO_PRO_ID, STO_SDM_ID, STO_CANTIDAD)
    values (1, 1, 1, 5);
    values (2, 2, 3, 7);
    values (3, 3, 5, 10);
    values (4, 4, 2, 20);
    values (5, 5, 4, 4);
    values (6, 1, 4, 9);
    values (7, 3, 2, 6);


alter table STOCKS (
    add constraint PK_STO_ID primary key (STO_ID),
    foreign key (STO_PRO_ID) reference PRODUCTOS (PRO_ID)
    foreign key (STO_SDM_ID) reference SUCURSALES_DE_LA_MUEBLERIA (SDM_ID)
)




create table SUCURSALES_DE_LA_MUEBLERIA (
    SDF_ID number not null,
    SDF_NOMBRE varchar (25) 
)


insert into SUCURSALES_DE_LA_MUEBLERIA (SDM_ID, SDM_NOMBRE)
    values (1, "Bolivar")
    values (2, "Dero")
    values (3, "Pehuajo")
    values (4, "Olavarria")
    values (5, "Tandil")


alter table SUCURSALES_DE_LA_MUEBLERIA (
    add constraint PK_SDM_ID primary key (SDF_ID)
)

create table CATEGORIAS_DE_LA_MUEBLERIA (
    CDM_ID number not null 
    CDM_NOMBRE varchar (25)
)


insert into CATEGORIAS_DE_LA_MUEBLERIA (CDM_ID, CDM_NOMBRE)
    values (1, "Jardin")
    values (2, "Living")
    values (3, "Comedor")
    values (4, "Habitacion")

alter table CATEGORIAS_DE_LA_MUEBLERIA (
    add constraint PK_CDM_ID primary key (CDM_ID)
)