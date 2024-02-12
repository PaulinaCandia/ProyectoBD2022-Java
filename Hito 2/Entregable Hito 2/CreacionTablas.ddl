-- Generado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   en:        2022-07-04 21:26:10 CLT
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

COMMENT ON TABLE aportes IS
    'Esta contiene los nombres/tipos/id de cada uno de los aportes';

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
    meses_tomados                NUMBER(3),
    socio_id_socio               NUMBER(10) NOT NULL,
    cupon_pago_id_cupon          NUMBER(10) NOT NULL,
    aportes_id_aporte            NUMBER(10) NOT NULL,
    socio_categoria_id_categoria NUMBER(10) NOT NULL,
    socio_id_profesion           NUMBER(10) NOT NULL
);

COMMENT ON TABLE aportes_solicitados IS
    'Informacion respectiva de los aportes  solicitados por el socio';

COMMENT ON COLUMN aportes_solicitados.meses_tomados IS
    'cantidad de meses tomados';

COMMENT ON COLUMN aportes_solicitados.socio_id_socio IS
    'socio posee un numero identificador que es el id (key)';

COMMENT ON COLUMN aportes_solicitados.cupon_pago_id_cupon IS
    'numero identificador del cupon';

COMMENT ON COLUMN aportes_solicitados.aportes_id_aporte IS
    'numero identificador del aporte';

COMMENT ON COLUMN aportes_solicitados.socio_categoria_id_categoria IS
    'numero identificador de la categoria';

COMMENT ON COLUMN aportes_solicitados.socio_id_profesion IS
    'numero identificador de la profesion';

CREATE UNIQUE INDEX aportes_solicitados__idx ON
    aportes_solicitados (
        aportes_id_aporte
    ASC );

CREATE UNIQUE INDEX aportes_solicitados__idxv1 ON
    aportes_solicitados (
        cupon_pago_id_cupon
    ASC );

ALTER TABLE aportes_solicitados
    ADD CONSTRAINT aportes_solicitados_pk PRIMARY KEY ( aportes_id_aporte,
                                                        socio_id_socio,
                                                        socio_categoria_id_categoria,
                                                        socio_id_profesion );

CREATE TABLE boleta (
    id_boleta         NUMBER(10) NOT NULL,
    fecha_pagada      DATE DEFAULT sysdate NOT NULL,
    monto_pagado      NUMBER(8) NOT NULL,
    interes_pagado    NUMBER(8) NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

COMMENT ON TABLE boleta IS
    'Informacion referente al pago de una cuota';

COMMENT ON COLUMN boleta.id_boleta IS
    'numero identificador de boleta';

COMMENT ON COLUMN boleta.fecha_pagada IS
    'fecha pagada,  [default = sysdate]';

COMMENT ON COLUMN boleta.monto_pagado IS
    'cantidad de monto pagado';

COMMENT ON COLUMN boleta.interes_pagado IS
    'cantidad de interes pagado';

COMMENT ON COLUMN boleta.fecha_vencimiento IS
    'fecha de vencimiento';

ALTER TABLE boleta ADD CONSTRAINT boleta_pk PRIMARY KEY ( id_boleta );

CREATE TABLE categoria (
    id_categoria NUMBER(10) NOT NULL,
    tipo_cliente VARCHAR2(10) NOT NULL
);

COMMENT ON TABLE categoria IS
    'Esta contienen los tipos de cliente';

COMMENT ON COLUMN categoria.id_categoria IS
    'numero identificador de la categoria';

COMMENT ON COLUMN categoria.tipo_cliente IS
    'el cliente puede ser nuevo, vigente o moroso';

ALTER TABLE categoria ADD CONSTRAINT categoria_pk PRIMARY KEY ( id_categoria );

CREATE TABLE credito (
    id_credito   NUMBER(10) NOT NULL,
    nombre       VARCHAR2(30) NOT NULL,
    descripcion  VARCHAR2(100) NOT NULL,
    tasa_interes FLOAT(5) NOT NULL,
    cuotas_max   NUMBER(5) NOT NULL
);

COMMENT ON TABLE credito IS
    'Esta contiene los nombres/tipos/id de cada uno de los creditoss';

COMMENT ON COLUMN credito.id_credito IS
    'numero identificatorio de credito';

COMMENT ON COLUMN credito.nombre IS
    'nombre del credito';

COMMENT ON COLUMN credito.descripcion IS
    'descripcion del credito';

COMMENT ON COLUMN credito.tasa_interes IS
    'porcentaje de la tasa de interes mensual';

COMMENT ON COLUMN credito.cuotas_max IS
    'numero maximo de cuotas';

ALTER TABLE credito ADD CONSTRAINT credito_pk PRIMARY KEY ( id_credito );

CREATE TABLE credito_solicitado (
    id_credito_solicitado        NUMBER(10) NOT NULL,
    fecha_solicitud              DATE DEFAULT sysdate NOT NULL,
    cant_cuotas                  NUMBER(2) NOT NULL,
    monto_solicitado             NUMBER(8) NOT NULL,
    socio_id_socio               NUMBER(10),
    socio_categoria_id_categoria NUMBER(10),
    credito_id_credito           NUMBER(10) NOT NULL,
    socio_id_profesion           NUMBER(10)
);

COMMENT ON TABLE credito_solicitado IS
    'Informacion respectiva de los creditos solicitados por el socio';

COMMENT ON COLUMN credito_solicitado.id_credito_solicitado IS
    'numero identificador del credito solicitado';

COMMENT ON COLUMN credito_solicitado.fecha_solicitud IS
    'fecha de la solicitud del credito,  [default = sysdate]';

COMMENT ON COLUMN credito_solicitado.cant_cuotas IS
    'la cantidad de cuotas';

COMMENT ON COLUMN credito_solicitado.monto_solicitado IS
    'la cantidad del monto solicitado';

COMMENT ON COLUMN credito_solicitado.socio_id_socio IS
    'socio posee un numero identificador que es el id (key)';

COMMENT ON COLUMN credito_solicitado.socio_categoria_id_categoria IS
    'numero identificador de la categoria';

COMMENT ON COLUMN credito_solicitado.credito_id_credito IS
    'numero identificador del credito';

COMMENT ON COLUMN credito_solicitado.socio_id_profesion IS
    'numero identificador de la profesion';

ALTER TABLE credito_solicitado ADD CONSTRAINT credito_solicitado_pk PRIMARY KEY ( id_credito_solicitado,
                                                                                  credito_id_credito );

CREATE TABLE cuotas (
    id_cuota          NUMBER(10)
        CONSTRAINT nnc_cuotas_id_cuota NOT NULL,
    fecha_vencimiento DATE
        CONSTRAINT nnc_cuotas_fecha_vencimiento NOT NULL,
    monto_cuota       NUMBER(9)
        CONSTRAINT nnc_cuotas_monto_cuota NOT NULL,
    interes           NUMBER(9)
        CONSTRAINT nnc_cuotas_interes NOT NULL,
    monto_a_pagar     NUMBER(9)
        CONSTRAINT nnc_cuotas_monto_a_pagar NOT NULL,
    id_cred_soli      NUMBER(10) 
         --  ERROR: Column cuotas.id_cred_soli check constraint name length exceeds maximum allowed length(30) 
        CONSTRAINT nnc_cuotas_credito_solicitado_id_credito_solicitado NOT NULL,
    estado_cuota      VARCHAR2(30)
        CONSTRAINT nnc_cuotas_estado_cuota NOT NULL,
    fecha_pago        DATE DEFAULT sysdate,
    monto_pago        NUMBER(9),
    boleta_id_boleta  NUMBER(10)
        CONSTRAINT nnc_cuotas_boleta_id_boleta NOT NULL,
    id_credito        NUMBER(10) 
         --  ERROR: Column cuotas.id_credito check constraint name length exceeds maximum allowed length(30) 
        CONSTRAINT nnc_cuotas_credito_solicitado_credito_id_credito NOT NULL,
    multa_id_multa    NUMBER(10)
        CONSTRAINT nnc_cuotas_multa_id_multa NOT NULL
);

COMMENT ON TABLE cuotas IS
    'Informacion de acuerdo a las cantidades a pagar de acuerdo a cada credito solicitado';

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

COMMENT ON COLUMN cuotas.id_cred_soli IS
    'numero identificador del credito solicitado';

COMMENT ON COLUMN cuotas.estado_cuota IS
    'pagada, pendiente y multada';

COMMENT ON COLUMN cuotas.fecha_pago IS
    'fecha en la que se pago,  [default = sysdate]';

COMMENT ON COLUMN cuotas.monto_pago IS
    'monto pagado';

COMMENT ON COLUMN cuotas.boleta_id_boleta IS
    'numero identificador de boleta';

COMMENT ON COLUMN cuotas.id_credito IS
    'numero identificatorio de credito';

COMMENT ON COLUMN cuotas.multa_id_multa IS
    'numero identificador de la multa';

CREATE UNIQUE INDEX cuotas_boleta_id_boleta_idx ON
    cuotas (
        boleta_id_boleta
    ASC );

CREATE UNIQUE INDEX cuotas_multa_id_multa_idx ON
    cuotas (
        multa_id_multa
    ASC );

ALTER TABLE cuotas ADD CONSTRAINT cuotas_pk PRIMARY KEY ( id_cuota,
                                                          multa_id_multa );

CREATE TABLE cupon_pago (
    id_cupon     NUMBER(10) NOT NULL,
    monto_pagado NUMBER(9) NOT NULL,
    fecha_pago   DATE DEFAULT sysdate NOT NULL,
    nombre       VARCHAR2(30) NOT NULL
);

COMMENT ON TABLE cupon_pago IS
    'Informacion referente al pago de un aporte';

COMMENT ON COLUMN cupon_pago.id_cupon IS
    'numero identificador del cupon';

COMMENT ON COLUMN cupon_pago.monto_pagado IS
    'monto pagado del cupon';

COMMENT ON COLUMN cupon_pago.fecha_pago IS
    'fecha de pago del cupon,  [default = sysdate]';

COMMENT ON COLUMN cupon_pago.nombre IS
    'nombre del cupon';

ALTER TABLE cupon_pago ADD CONSTRAINT cupon_pago_pk PRIMARY KEY ( id_cupon );

CREATE TABLE estado_de_cuenta (
    id_estado_cuenta             NUMBER(50) NOT NULL,
    codigo_barra                 BLOB NOT NULL,
    fecha_estado_cuenta          DATE DEFAULT sysdate NOT NULL,
    socio_id_socio               NUMBER(10) NOT NULL,
    socio_categoria_id_categoria NUMBER(10) NOT NULL,
    socio_id_profesion           NUMBER(10) NOT NULL
);

COMMENT ON TABLE estado_de_cuenta IS
    'Esta contiene informacion de la cuenta del socio';

COMMENT ON COLUMN estado_de_cuenta.id_estado_cuenta IS
    'numero identificador de estado de cuenta';

COMMENT ON COLUMN estado_de_cuenta.codigo_barra IS
    'imagen del codigo de barra';

COMMENT ON COLUMN estado_de_cuenta.fecha_estado_cuenta IS
    'fecha de estado de cuenta,  [default = sysdate]';

COMMENT ON COLUMN estado_de_cuenta.socio_id_socio IS
    'socio posee un numero identificador que es el id (key)';

COMMENT ON COLUMN estado_de_cuenta.socio_categoria_id_categoria IS
    'numero identificador de la categoria';

COMMENT ON COLUMN estado_de_cuenta.socio_id_profesion IS
    'numero identificador de la profesion';

ALTER TABLE estado_de_cuenta
    ADD CONSTRAINT estado_de_cuenta_pk PRIMARY KEY ( id_estado_cuenta,
                                                     socio_id_socio,
                                                     socio_categoria_id_categoria,
                                                     socio_id_profesion );

CREATE TABLE multa (
    id_multa    NUMBER(10) NOT NULL,
    monto_multa NUMBER(9) NOT NULL
);

COMMENT ON TABLE multa IS
    'Informacion de acuerdo al monto multado de la cuota del credito';

COMMENT ON COLUMN multa.id_multa IS
    'numero identificador de la multa';

COMMENT ON COLUMN multa.monto_multa IS
    'monto de la multa';

ALTER TABLE multa ADD CONSTRAINT multa_pk PRIMARY KEY ( id_multa );

CREATE TABLE profesiones (
    id_profesion     NUMBER(10) NOT NULL,
    nombre_profesion VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE profesiones IS
    'Tabla que contiene la informacion de cada profesión';

COMMENT ON COLUMN profesiones.id_profesion IS
    'numero identificador de la profesion';

COMMENT ON COLUMN profesiones.nombre_profesion IS
    'nombre de la profesion';

ALTER TABLE profesiones 
    ADD CONSTRAINT nombre_profesion_UN 
    CHECK (constraint nombre_profesion_UN nombre_profesion unique)
;
ALTER TABLE profesiones ADD CONSTRAINT profesiones_pk PRIMARY KEY ( id_profesion );

CREATE TABLE socio (
    id_socio                 NUMBER(10) NOT NULL,
    nombre                   VARCHAR2(30) NOT NULL,
    ap_paterno               VARCHAR2(30) NOT NULL,
    ap_materno               VARCHAR2(30) NOT NULL,
    "e-mail"                 VARCHAR2(30) NOT NULL,
    direccion                VARCHAR2(30) NOT NULL,
    cuidad                   VARCHAR2(30) NOT NULL,
    region                   VARCHAR2(30) NOT NULL,
    fecha_inscripcion        DATE DEFAULT sysdate NOT NULL,
    aporte_inscripcion       NUMBER(8) NOT NULL,
    categoria_id_categoria   NUMBER(10) NOT NULL,
    profesiones_id_profesion NUMBER(10) NOT NULL
);

COMMENT ON TABLE socio IS
    'Tabla que almacena la informacion de los socios';

COMMENT ON COLUMN socio.id_socio IS
    'socio posee un numero identificador que es el id (key)';

COMMENT ON COLUMN socio.nombre IS
    'primer nombre del socio';

COMMENT ON COLUMN socio.ap_paterno IS
    'apellido paterno del socio';

COMMENT ON COLUMN socio.ap_materno IS
    'apellido materno del socio';

COMMENT ON COLUMN socio."e-mail" IS
    'correo electronico del socio';

COMMENT ON COLUMN socio.direccion IS
    'direccion del socio';

COMMENT ON COLUMN socio.cuidad IS
    'ciudad del socio';

COMMENT ON COLUMN socio.region IS
    'region del socio';

COMMENT ON COLUMN socio.fecha_inscripcion IS
    'fecha en la que se inscribió el socio,  [default = sysdate]';

COMMENT ON COLUMN socio.aporte_inscripcion IS
    'es el monto que el socio paga al inscribirse';

COMMENT ON COLUMN socio.categoria_id_categoria IS
    'numero identificador de la categoria';

COMMENT ON COLUMN socio.profesiones_id_profesion IS
    'numero identificador de la profesion';

CREATE UNIQUE INDEX socio__idx ON
    socio (
        categoria_id_categoria
    ASC );

ALTER TABLE socio
    ADD CONSTRAINT socio_pk PRIMARY KEY ( id_socio,
                                          categoria_id_categoria,
                                          profesiones_id_profesion );

ALTER TABLE aportes_solicitados
    ADD CONSTRAINT aportes_solicitados_aportes_fk FOREIGN KEY ( aportes_id_aporte )
        REFERENCES aportes ( id_aporte );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE aportes_solicitados
    ADD CONSTRAINT aportes_solicitados_cupon_pago_fk FOREIGN KEY ( cupon_pago_id_cupon )
        REFERENCES cupon_pago ( id_cupon );

ALTER TABLE aportes_solicitados
    ADD CONSTRAINT aportes_solicitados_socio_fk FOREIGN KEY ( socio_id_socio,
                                                              socio_categoria_id_categoria,
                                                              socio_id_profesion )
        REFERENCES socio ( id_socio,
                           categoria_id_categoria,
                           profesiones_id_profesion );

ALTER TABLE credito_solicitado
    ADD CONSTRAINT credito_solicitado_credito_fk FOREIGN KEY ( credito_id_credito )
        REFERENCES credito ( id_credito );

ALTER TABLE credito_solicitado
    ADD CONSTRAINT credito_solicitado_socio_fk FOREIGN KEY ( socio_id_socio,
                                                             socio_categoria_id_categoria,
                                                             socio_id_profesion )
        REFERENCES socio ( id_socio,
                           categoria_id_categoria,
                           profesiones_id_profesion );

ALTER TABLE cuotas
    ADD CONSTRAINT cuotas_boleta_fk FOREIGN KEY ( boleta_id_boleta )
        REFERENCES boleta ( id_boleta );

ALTER TABLE cuotas
    ADD CONSTRAINT cuotas_credito_solicitado_fk FOREIGN KEY ( id_cred_soli,
                                                              id_credito )
        REFERENCES credito_solicitado ( id_credito_solicitado,
                                        credito_id_credito );

ALTER TABLE cuotas
    ADD CONSTRAINT cuotas_multa_fk FOREIGN KEY ( multa_id_multa )
        REFERENCES multa ( id_multa );

ALTER TABLE estado_de_cuenta
    ADD CONSTRAINT estado_de_cuenta_socio_fk FOREIGN KEY ( socio_id_socio,
                                                           socio_categoria_id_categoria,
                                                           socio_id_profesion )
        REFERENCES socio ( id_socio,
                           categoria_id_categoria,
                           profesiones_id_profesion );

ALTER TABLE socio
    ADD CONSTRAINT socio_categoria_fk FOREIGN KEY ( categoria_id_categoria )
        REFERENCES categoria ( id_categoria );

ALTER TABLE socio
    ADD CONSTRAINT socio_profesiones_fk FOREIGN KEY ( profesiones_id_profesion )
        REFERENCES profesiones ( id_profesion );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             5
-- ALTER TABLE                             24
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
-- ERRORS                                   3
-- WARNINGS                                 0
