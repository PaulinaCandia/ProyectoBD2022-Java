-- Generado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   en:        2022-07-26 09:12:43 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aportes (
    id_aporte    NUMBER(10) NOT NULL,
    nombre       VARCHAR2(30) NOT NULL,
    descripcion  VARCHAR2(100) NOT NULL,
    tasa_interes FLOAT(5) NOT NULL,
    rescate_max  NUMBER(5) NOT NULL
);

COMMENT ON COLUMN aportes.id_aporte IS
    'numero identificador del aporte';

COMMENT ON COLUMN aportes.nombre IS
    'nombre del aporte';

COMMENT ON COLUMN aportes.descripcion IS
    'descripcion del aporte';

COMMENT ON COLUMN aportes.tasa_interes IS
    'porcentaje de la tasa de interes';

COMMENT ON COLUMN aportes.rescate_max IS
    'porcentaje del rescate maximo';

ALTER TABLE aportes ADD CONSTRAINT aportes_pk PRIMARY KEY ( id_aporte );

CREATE TABLE aportes_solicitados (
    id_aport_soli INTEGER NOT NULL,
    meses_tomados NUMBER(3),
    id_socio      NUMBER(10) NOT NULL,
    id_aporte     NUMBER(10) NOT NULL
);

COMMENT ON COLUMN aportes_solicitados.meses_tomados IS
    'cantidad de meses tomados';

COMMENT ON COLUMN aportes_solicitados.id_socio IS
    'socio posee un numero identificador que es el id (key)';

COMMENT ON COLUMN aportes_solicitados.id_aporte IS
    'numero identificador del aporte';

ALTER TABLE aportes_solicitados ADD CONSTRAINT aportes_solicitados_pk PRIMARY KEY ( id_aport_soli );

CREATE TABLE boletas (
    id_boleta         NUMBER(10) NOT NULL,
    fecha_pagada      DATE DEFAULT sysdate NOT NULL,
    monto_pagado      NUMBER(8) NOT NULL,
    interes_pagado    NUMBER(8) NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

COMMENT ON COLUMN boletas.id_boleta IS
    'numero identificador de boleta';

COMMENT ON COLUMN boletas.fecha_pagada IS
    'fecha pagada,  [default = sysdate]';

COMMENT ON COLUMN boletas.monto_pagado IS
    'cantidad de monto pagado';

COMMENT ON COLUMN boletas.interes_pagado IS
    'cantidad de interes pagado';

COMMENT ON COLUMN boletas.fecha_vencimiento IS
    'fecha de vencimiento';

ALTER TABLE boletas ADD CONSTRAINT boletas_pk PRIMARY KEY ( id_boleta );

CREATE TABLE categorias (
    id_categoria NUMBER(10) NOT NULL,
    tipo_cliente VARCHAR2(10) NOT NULL
);

COMMENT ON COLUMN categorias.id_categoria IS
    'numero identificador de la categoria';

COMMENT ON COLUMN categorias.tipo_cliente IS
    'el cliente puede ser nuevo, vigente o moroso';

ALTER TABLE categorias ADD CONSTRAINT categorias_pk PRIMARY KEY ( id_categoria );

CREATE TABLE creditos (
    id_credito   NUMBER(10) NOT NULL,
    nombre       VARCHAR2(30) NOT NULL,
    descripcion  VARCHAR2(100) NOT NULL,
    tasa_interes FLOAT(5) NOT NULL,
    cuotas_max   NUMBER(5) NOT NULL
);

COMMENT ON COLUMN creditos.id_credito IS
    'numero identificatorio de credito';

COMMENT ON COLUMN creditos.nombre IS
    'nombre del credito';

COMMENT ON COLUMN creditos.descripcion IS
    'descripcion del credito';

COMMENT ON COLUMN creditos.tasa_interes IS
    'porcentaje de la tasa de interes mensual';

COMMENT ON COLUMN creditos.cuotas_max IS
    'numero maximo de cuotas';

ALTER TABLE creditos ADD CONSTRAINT creditos_pk PRIMARY KEY ( id_credito );

CREATE TABLE creditos_solicitados (
    id_credito_solicitado NUMBER(10) NOT NULL,
    fecha_solicitud       DATE DEFAULT sysdate NOT NULL,
    cant_cuotas           NUMBER(2) NOT NULL,
    monto_solicitado      NUMBER(8) NOT NULL,
    id_socio              NUMBER(10),
    id_credito            NUMBER(10) NOT NULL
);

COMMENT ON COLUMN creditos_solicitados.id_credito_solicitado IS
    'numero identificador del credito solicitado';

COMMENT ON COLUMN creditos_solicitados.fecha_solicitud IS
    'fecha de la solicitud del credito,  [default = sysdate]';

COMMENT ON COLUMN creditos_solicitados.cant_cuotas IS
    'la cantidad de cuotas';

COMMENT ON COLUMN creditos_solicitados.monto_solicitado IS
    'la cantidad del monto solicitado';

COMMENT ON COLUMN creditos_solicitados.id_socio IS
    'socio posee un numero identificador que es el id (key)';

ALTER TABLE creditos_solicitados ADD CONSTRAINT creditos_solicitados_pk PRIMARY KEY ( id_credito_solicitado );

CREATE TABLE cuotas (
    id_cuota              NUMBER(10) NOT NULL,
    fecha_vencimiento     DATE NOT NULL,
    monto_cuota           NUMBER(9) NOT NULL,
    interes               NUMBER(9) NOT NULL,
    monto_a_pagar         NUMBER(9) NOT NULL,
    id_credito_solicitado NUMBER(10) NOT NULL,
    estado_cuota          VARCHAR2(30) NOT NULL,
    fecha_pago            DATE DEFAULT sysdate,
    monto_pago            NUMBER(9),
    id_boleta             NUMBER(10),
    id_multa              NUMBER(10)
);

COMMENT ON COLUMN cuotas.id_cuota IS
    'numero identificador de la cuota';

COMMENT ON COLUMN cuotas.fecha_vencimiento IS
    'fecha de vencimiento de la cuota';

COMMENT ON COLUMN cuotas.monto_cuota IS
    'cantidad del monto de la cuota';

COMMENT ON COLUMN cuotas.interes IS
    'monto de interes de la cuota';

COMMENT ON COLUMN cuotas.monto_a_pagar IS
    'monto a pagar de la cuota';

COMMENT ON COLUMN cuotas.id_credito_solicitado IS
    'numero identificador del credito solicitado';

COMMENT ON COLUMN cuotas.estado_cuota IS
    'pagada, pendiente y multada';

COMMENT ON COLUMN cuotas.fecha_pago IS
    'fecha en la que se pago,  [default = sysdate]';

COMMENT ON COLUMN cuotas.monto_pago IS
    'monto pagado';

COMMENT ON COLUMN cuotas.id_boleta IS
    'numero identificador de boleta';

COMMENT ON COLUMN cuotas.id_multa IS
    'numero identificador de la multa';

ALTER TABLE cuotas ADD CONSTRAINT cuotas_pk PRIMARY KEY ( id_cuota );

CREATE TABLE cupones_de_pagos (
    id_cupon     NUMBER(10) NOT NULL,
    monto_pagado NUMBER(9) NOT NULL,
    fecha_pago   DATE DEFAULT sysdate NOT NULL,
    nombre       VARCHAR2(30) NOT NULL
);

COMMENT ON COLUMN cupones_de_pagos.id_cupon IS
    'numero identificador del cupon';

COMMENT ON COLUMN cupones_de_pagos.monto_pagado IS
    'monto pagado del cupon';

COMMENT ON COLUMN cupones_de_pagos.fecha_pago IS
    'fecha de pago del cupon,  [default = sysdate]';

COMMENT ON COLUMN cupones_de_pagos.nombre IS
    'nombre del cupon';

ALTER TABLE cupones_de_pagos ADD CONSTRAINT cupones_de_pagos_pk PRIMARY KEY ( id_cupon );

CREATE TABLE estado_de_cuentas (
    id_estado_cuenta    NUMBER(10) NOT NULL,
    codigo_barra        BLOB NOT NULL,
    fecha_estado_cuenta DATE DEFAULT sysdate NOT NULL,
    id_socio            NUMBER(10) NOT NULL
);

COMMENT ON COLUMN estado_de_cuentas.id_estado_cuenta IS
    'numero identificador de estado de cuenta';

COMMENT ON COLUMN estado_de_cuentas.codigo_barra IS
    'imagen del codigo de barra';

COMMENT ON COLUMN estado_de_cuentas.fecha_estado_cuenta IS
    'fecha de estado de cuenta,  [default = sysdate]';

COMMENT ON COLUMN estado_de_cuentas.id_socio IS
    'socio posee un numero identificador que es el id (key)';

ALTER TABLE estado_de_cuentas ADD CONSTRAINT estado_de_cuentas_pk PRIMARY KEY ( id_estado_cuenta );

CREATE TABLE lista_aportes (
    id_aport_list INTEGER NOT NULL,
    fecha_pago    DATE ,
    monto_aporte  INTEGER NOT NULL,
    id_cupon      NUMBER(10),
    id_aport_soli INTEGER
);

ALTER TABLE lista_aportes ADD CONSTRAINT lista_aportes_pk PRIMARY KEY ( id_aport_list );

CREATE TABLE multas (
    id_multa    NUMBER(10) NOT NULL,
    monto_multa NUMBER(9) NOT NULL
);

COMMENT ON COLUMN multas.id_multa IS
    'numero identificador de la multa';

COMMENT ON COLUMN multas.monto_multa IS
    'monto de la multa';

ALTER TABLE multas ADD CONSTRAINT multas_pk PRIMARY KEY ( id_multa );

CREATE TABLE profesiones (
    id_profesion     NUMBER(10) NOT NULL,
    nombre_profesion VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN profesiones.id_profesion IS
    'numero identificador de la profesion';

COMMENT ON COLUMN profesiones.nombre_profesion IS
    'nombre de la profesion';

ALTER TABLE profesiones ADD CONSTRAINT profesiones_pk PRIMARY KEY ( id_profesion );

CREATE TABLE residencias (
    id_residencia NUMBER(8) NOT NULL,
    ciudad        VARCHAR2(15) NOT NULL,
    region        VARCHAR2(15) NOT NULL
);

COMMENT ON COLUMN residencias.id_residencia IS
    'identificador de la residencia';

COMMENT ON COLUMN residencias.ciudad IS
    'ciudad en la que vive el socio';

COMMENT ON COLUMN residencias.region IS
    'region en la que vive el socio';

ALTER TABLE residencias ADD CONSTRAINT residencias_pk PRIMARY KEY ( id_residencia );

CREATE TABLE socios (
    id_socio               NUMBER(10) NOT NULL,
    nombre                 VARCHAR2(30) NOT NULL,
    ap_paterno             VARCHAR2(30) NOT NULL,
    ap_materno             VARCHAR2(30) NOT NULL,
    "e-mail"               VARCHAR2(30) NOT NULL,
    direccion              VARCHAR2(30) NOT NULL,
    fecha_inscripcion      DATE DEFAULT sysdate NOT NULL,
    aporte_inscripcion     NUMBER(8) NOT NULL,
    categoria_id_categoria NUMBER(10) NOT NULL,
    id_residencia          NUMBER(8) NOT NULL,
    id_tipo                NUMBER(8) NOT NULL,
    id_profesion           NUMBER(10) NOT NULL
);

COMMENT ON COLUMN socios.id_socio IS
    'socio posee un numero identificador que es el id (key)';

COMMENT ON COLUMN socios.nombre IS
    'primer nombre del socio';

COMMENT ON COLUMN socios.ap_paterno IS
    'apellido paterno del socio';

COMMENT ON COLUMN socios.ap_materno IS
    'apellido materno del socio';

COMMENT ON COLUMN socios."e-mail" IS
    'correo electronico del socio';

COMMENT ON COLUMN socios.direccion IS
    'direccion del socio';

COMMENT ON COLUMN socios.fecha_inscripcion IS
    'fecha en la que se inscribió el socio,  [default = sysdate]';

COMMENT ON COLUMN socios.aporte_inscripcion IS
    'es el monto que el socio paga al inscribirse';

COMMENT ON COLUMN socios.categoria_id_categoria IS
    'numero identificador de la categoria';

ALTER TABLE socios ADD CONSTRAINT socios_pk PRIMARY KEY ( id_socio );

CREATE TABLE tipo_de_socios (
    id_tipo     NUMBER(8) NOT NULL,
    nombre_tipo VARCHAR2(15) NOT NULL
);

COMMENT ON COLUMN tipo_de_socios.id_tipo IS
    'id primario de tipo de socio';

COMMENT ON COLUMN tipo_de_socios.nombre_tipo IS
    'pensionado, independiente o dependiente';

ALTER TABLE tipo_de_socios ADD CONSTRAINT tipo_de_socios_pk PRIMARY KEY ( id_tipo );

CREATE TABLE uf (
    mes      VARCHAR2(15) NOT NULL,
    dia      VARCHAR2(15) NOT NULL,
    monto_uf FLOAT(15) NOT NULL
);

ALTER TABLE aportes_solicitados
    ADD CONSTRAINT aportes_solicitados_aportes_fk FOREIGN KEY ( id_aporte )
        REFERENCES aportes ( id_aporte );

ALTER TABLE aportes_solicitados
    ADD CONSTRAINT aportes_solicitados_socios_fk FOREIGN KEY ( id_socio )
        REFERENCES socios ( id_socio );

ALTER TABLE creditos_solicitados
    ADD CONSTRAINT credi_soli_credi_fk FOREIGN KEY ( id_credito )
        REFERENCES creditos ( id_credito );

ALTER TABLE creditos_solicitados
    ADD CONSTRAINT credi_soli_soci_fk FOREIGN KEY ( id_socio )
        REFERENCES socios ( id_socio );

ALTER TABLE cuotas
    ADD CONSTRAINT cuotas_boletas_fk FOREIGN KEY ( id_boleta )
        REFERENCES boletas ( id_boleta );

ALTER TABLE cuotas
    ADD CONSTRAINT cuotas_creditos_solicitados_fk FOREIGN KEY ( id_credito_solicitado )
        REFERENCES creditos_solicitados ( id_credito_solicitado );

ALTER TABLE cuotas
    ADD CONSTRAINT cuotas_multas_fk FOREIGN KEY ( id_multa )
        REFERENCES multas ( id_multa );

ALTER TABLE estado_de_cuentas
    ADD CONSTRAINT estado_de_cuentas_socios_fk FOREIGN KEY ( id_socio )
        REFERENCES socios ( id_socio );

ALTER TABLE lista_aportes
    ADD CONSTRAINT list_ap_soli_fk FOREIGN KEY ( id_aport_soli )
        REFERENCES aportes_solicitados ( id_aport_soli );

ALTER TABLE lista_aportes
    ADD CONSTRAINT list_cupon_pagos_fk FOREIGN KEY ( id_cupon )
        REFERENCES cupones_de_pagos ( id_cupon );

ALTER TABLE socios
    ADD CONSTRAINT socios_categorias_fk FOREIGN KEY ( categoria_id_categoria )
        REFERENCES categorias ( id_categoria );

ALTER TABLE socios
    ADD CONSTRAINT socios_profesiones_fk FOREIGN KEY ( id_profesion )
        REFERENCES profesiones ( id_profesion );

ALTER TABLE socios
    ADD CONSTRAINT socios_residencias_fk FOREIGN KEY ( id_residencia )
        REFERENCES residencias ( id_residencia );

ALTER TABLE socios
    ADD CONSTRAINT socios_tipo_de_socios_fk FOREIGN KEY ( id_tipo )
        REFERENCES tipo_de_socios ( id_tipo );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            16
-- CREATE INDEX                             0
-- ALTER TABLE                             29
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
