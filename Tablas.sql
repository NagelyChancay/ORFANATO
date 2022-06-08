/*==============================================================*/
/* Table: ADMINISTRADOR                                         */
/*==============================================================*/
create table ADMINISTRADOR 
(
   ID_ADMINISTRADOR     INTEGER              not null,
   ID_FICHA_INGRESO     INTEGER,
   ID_FICHA_MEDICA      INTEGER,
   ID_ORFANATO          INTEGER,
   NOMBRE_ADMI          VARCHAR2(60),
   constraint PK_ADMINISTRADOR primary key (ID_ADMINISTRADOR)
);


/*==============================================================*/
/* Table: ADOPTANTE                                             */
/*==============================================================*/
create table ADOPTANTE 
(
   ID_ADOPTANTE         INTEGER              not null,
   ID_ORFANATO          INTEGER,
   ID_HUERFANO          INTEGER,
   NOMBRE_ADOPTANTE     VARCHAR2(40),
   DOMICILIO_ADOPTANTE  VARCHAR2(40),
   DESCRIP_ADOPTANTE    VARCHAR2(60),
   CI_ADOPTANTE         VARCHAR2(10),
   TFNO_ADPTANTE        VARCHAR2(10),
   FECHA_NAC            DATE,
   constraint PK_ADOPTANTE primary key (ID_ADOPTANTE)
);


/*==============================================================*/
/* Table: FICHA_ADOPCION                                        */
/*==============================================================*/
create table FICHA_ADOPCION 
(
   ID_FICHA_ADOPCION    INTEGER              not null,
   ID_HUERFANO          INTEGER,
   ID_ADOPTANTE         INTEGER,
   FECHA_ADOPCION       DATE,
   constraint PK_FICHA_ADOPCION primary key (ID_FICHA_ADOPCION)
);


/*==============================================================*/
/* Table: FICHA_INGRESO                                         */
/*==============================================================*/
create table FICHA_INGRESO 
(
   ID_FICHA_INGRESO     INTEGER              not null,
   ID_ADMINISTRADOR     INTEGER,
   ID_HUERFANO          INTEGER,
   FECHA_INGRESO        DATE,
   PERSONA_INGRESO      VARCHAR2(40),
   constraint PK_FICHA_INGRESO primary key (ID_FICHA_INGRESO)
);


/*==============================================================*/
/* Table: FICHA_MEDICA                                          */
/*==============================================================*/
create table FICHA_MEDICA 
(
   ID_FICHA_MEDICA      INTEGER              not null,
   ID_ADMINISTRADOR     INTEGER,
   ID_HUERFANO          INTEGER,
   PAT_MEDICA           VARCHAR2(40),
   MEDICO               VARCHAR2(40),
   TTO_MED              VARCHAR2(60),
   constraint PK_FICHA_MEDICA primary key (ID_FICHA_MEDICA)
);


/*==============================================================*/
/* Table: HUERFANO                                              */
/*==============================================================*/
create table HUERFANO 
(
   ID_HUERFANO          INTEGER              not null,
   ID_ORFANATO          INTEGER,
   NOMBRE_H             VARCHAR2(40),
   APELLIDO_H           VARCHAR2(60),
   CI_H                 VARCHAR2(10),
   FECHA_NAC_H          DATE,
   GENERO_H             VARCHAR2(10),
   constraint PK_HUERFANO primary key (ID_HUERFANO)
);


/*==============================================================*/
/* Table: ORFANATO                                              */
/*==============================================================*/
create table ORFANATO 
(
   ID_ORFANATO          INTEGER              not null,
   NOMBRE_ORFANATO      VARCHAR2(60),
   UBI_ORFANATO         VARCHAR2(60),
   TFNO_ORFANATO        VARCHAR2(10),
   constraint PK_ORFANATO primary key (ID_ORFANATO)
);



/*==============================================================*/
/* Table: PADRINO                                               */
/*==============================================================*/
create table PADRINO 
(
   ID_PADRINO           INTEGER              not null,
   ID_HUERFANO          INTEGER,
   ID_ORFANATO          INTEGER,
   NOMBRE_P             VARCHAR2(40),
   APELLIDO_P           VARCHAR2(40),
   DIRECCION_P          VARCHAR2(60),
   CI_P                 VARCHAR2(10),
   GENERO_P             VARCHAR2(20),
   APORTACION_P         NUMBER(6,2),
   constraint PK_PADRINO primary key (ID_PADRINO)
);
