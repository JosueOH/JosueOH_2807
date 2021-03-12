
/*eliminar nuestra base de datos si tiene el mismo nombre*/
drop schema if exists fes_aragon;

/*crear un base de datos*/
create database fes_aragon;

/*selecionar la base de datos*/
use fes_aragon;

/*CREAR UN TABLA*/

CREATE TABLE ALUMNO(
    nombre_alumno varchar (15) not null,
    carrera varchar (20) not null,
    no_cuenta int (10) not null,
    direccion varchar (20) not null,
    telefono varchar (8) not null,
    email varchar (30) not null,
    pass varchar (8) not null,
    fecha_registro datetime not null default current_timestamp,
    permisos int (11) not null default 1
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*agergar un registro*/

insert into  ALUMNO values ('aaron Velasco', 'ico', 413112576, 'gloria 15', 
'12354894', 'aaronvelascovea@outlook.com', '13515', "2021-03-09", 5 );



/*definir nuestra PK*/
alter table alumno
    add primary key (no_cuenta);
commit;
/*los cambios son de manera permanente*/