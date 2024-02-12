--------------------------------------------------------
-- Archivo creado  - lunes-julio-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table APORTES
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."APORTES" 
   (	"ID_APORTE" NUMBER(10,0), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE), 
	"TASA_INTERES" FLOAT(5), 
	"RESCATE_MAX" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."APORTES"."ID_APORTE" IS 'numero identificador del aporte';
   COMMENT ON COLUMN "ALUMNOS"."APORTES"."NOMBRE" IS 'nombre del aporte';
   COMMENT ON COLUMN "ALUMNOS"."APORTES"."DESCRIPCION" IS 'descripcion del aporte';
   COMMENT ON COLUMN "ALUMNOS"."APORTES"."TASA_INTERES" IS 'porcentaje de la tasa de interes';
   COMMENT ON COLUMN "ALUMNOS"."APORTES"."RESCATE_MAX" IS 'porcentaje del rescate maximo';
   COMMENT ON TABLE "ALUMNOS"."APORTES"  IS 'Esta contiene los nombres/tipos/id de cada uno de los aportes';
--------------------------------------------------------
--  DDL for Table APORTES_SOLICITADOS
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."APORTES_SOLICITADOS" 
   (	"MESES_TOMADOS" NUMBER(3,0), 
	"SOCIO_ID_SOCIO" NUMBER(10,0), 
	"CUPON_PAGO_ID_CUPON" NUMBER(10,0), 
	"APORTES_ID_APORTE" NUMBER(10,0), 
	"SOCIO_CATEGORIA_ID_CATEGORIA" NUMBER(10,0), 
	"SOCIO_ID_PROFESION" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."APORTES_SOLICITADOS"."MESES_TOMADOS" IS 'cantidad de meses tomados';
   COMMENT ON COLUMN "ALUMNOS"."APORTES_SOLICITADOS"."SOCIO_ID_SOCIO" IS 'socio posee un numero identificador que es el id (key)';
   COMMENT ON COLUMN "ALUMNOS"."APORTES_SOLICITADOS"."CUPON_PAGO_ID_CUPON" IS 'numero identificador del cupon';
   COMMENT ON COLUMN "ALUMNOS"."APORTES_SOLICITADOS"."APORTES_ID_APORTE" IS 'numero identificador del aporte';
   COMMENT ON COLUMN "ALUMNOS"."APORTES_SOLICITADOS"."SOCIO_CATEGORIA_ID_CATEGORIA" IS 'numero identificador de la categoria';
   COMMENT ON COLUMN "ALUMNOS"."APORTES_SOLICITADOS"."SOCIO_ID_PROFESION" IS 'numero identificador de la profesion';
   COMMENT ON TABLE "ALUMNOS"."APORTES_SOLICITADOS"  IS 'Informacion respectiva de los aportes  solicitados por el socio';
--------------------------------------------------------
--  DDL for Table BOLETA
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."BOLETA" 
   (	"ID_BOLETA" NUMBER(10,0), 
	"FECHA_PAGADA" DATE DEFAULT sysdate, 
	"MONTO_PAGADO" NUMBER(8,0), 
	"INTERES_PAGADO" NUMBER(8,0), 
	"FECHA_VENCIMIENTO" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."BOLETA"."ID_BOLETA" IS 'numero identificador de boleta';
   COMMENT ON COLUMN "ALUMNOS"."BOLETA"."FECHA_PAGADA" IS 'fecha pagada,  [default = sysdate]';
   COMMENT ON COLUMN "ALUMNOS"."BOLETA"."MONTO_PAGADO" IS 'cantidad de monto pagado';
   COMMENT ON COLUMN "ALUMNOS"."BOLETA"."INTERES_PAGADO" IS 'cantidad de interes pagado';
   COMMENT ON COLUMN "ALUMNOS"."BOLETA"."FECHA_VENCIMIENTO" IS 'fecha de vencimiento';
   COMMENT ON TABLE "ALUMNOS"."BOLETA"  IS 'Informacion referente al pago de una cuota';
--------------------------------------------------------
--  DDL for Table CATEGORIA
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."CATEGORIA" 
   (	"ID_CATEGORIA" NUMBER(10,0), 
	"TIPO_CLIENTE" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."CATEGORIA"."ID_CATEGORIA" IS 'numero identificador de la categoria';
   COMMENT ON COLUMN "ALUMNOS"."CATEGORIA"."TIPO_CLIENTE" IS 'el cliente puede ser nuevo, vigente o moroso';
   COMMENT ON TABLE "ALUMNOS"."CATEGORIA"  IS 'Esta contienen los tipos de cliente';
--------------------------------------------------------
--  DDL for Table CREDITO
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."CREDITO" 
   (	"ID_CREDITO" NUMBER(10,0), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE), 
	"TASA_INTERES" FLOAT(5), 
	"CUOTAS_MAX" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."CREDITO"."ID_CREDITO" IS 'numero identificatorio de credito';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO"."NOMBRE" IS 'nombre del credito';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO"."DESCRIPCION" IS 'descripcion del credito';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO"."TASA_INTERES" IS 'porcentaje de la tasa de interes mensual';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO"."CUOTAS_MAX" IS 'numero maximo de cuotas';
   COMMENT ON TABLE "ALUMNOS"."CREDITO"  IS 'Esta contiene los nombres/tipos/id de cada uno de los creditoss';
--------------------------------------------------------
--  DDL for Table CREDITO_SOLICITADO
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."CREDITO_SOLICITADO" 
   (	"ID_CREDITO_SOLICITADO" NUMBER(10,0), 
	"FECHA_SOLICITUD" DATE DEFAULT sysdate, 
	"CANT_CUOTAS" NUMBER(2,0), 
	"MONTO_SOLICITADO" NUMBER(8,0), 
	"SOCIO_ID_SOCIO" NUMBER(10,0), 
	"SOCIO_CATEGORIA_ID_CATEGORIA" NUMBER(10,0), 
	"CREDITO_ID_CREDITO" NUMBER(10,0), 
	"SOCIO_ID_PROFESION" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."ID_CREDITO_SOLICITADO" IS 'numero identificador del credito solicitado';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."FECHA_SOLICITUD" IS 'fecha de la solicitud del credito,  [default = sysdate]';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."CANT_CUOTAS" IS 'la cantidad de cuotas';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."MONTO_SOLICITADO" IS 'la cantidad del monto solicitado';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."SOCIO_ID_SOCIO" IS 'socio posee un numero identificador que es el id (key)';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."SOCIO_CATEGORIA_ID_CATEGORIA" IS 'numero identificador de la categoria';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."CREDITO_ID_CREDITO" IS 'numero identificador del credito';
   COMMENT ON COLUMN "ALUMNOS"."CREDITO_SOLICITADO"."SOCIO_ID_PROFESION" IS 'numero identificador de la profesion';
   COMMENT ON TABLE "ALUMNOS"."CREDITO_SOLICITADO"  IS 'Informacion respectiva de los creditos solicitados por el socio';
--------------------------------------------------------
--  DDL for Table CUOTAS
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."CUOTAS" 
   (	"ID_CUOTA" NUMBER(10,0), 
	"FECHA_VENCIMIENTO" DATE, 
	"MONTO_CUOTA" NUMBER(9,0), 
	"INTERES" NUMBER(9,0), 
	"MONTO_A_PAGAR" NUMBER(9,0), 
	"ID_CRED_SOLI" NUMBER(10,0), 
	"ESTADO_CUOTA" VARCHAR2(30 BYTE), 
	"FECHA_PAGO" DATE DEFAULT sysdate, 
	"MONTO_PAGO" NUMBER(9,0), 
	"BOLETA_ID_BOLETA" NUMBER(10,0), 
	"ID_CREDITO" NUMBER(10,0), 
	"MULTA_ID_MULTA" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."ID_CUOTA" IS 'numero identificador de la cuota';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."FECHA_VENCIMIENTO" IS 'fecha de vencimiento de la cuota';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."MONTO_CUOTA" IS 'cantidad del monto de la cuota';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."INTERES" IS 'monto de interes de la cuota';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."MONTO_A_PAGAR" IS 'monto a pagar de la cuota';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."ID_CRED_SOLI" IS 'numero identificador del credito solicitado';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."ESTADO_CUOTA" IS 'pagada, pendiente y multada';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."FECHA_PAGO" IS 'fecha en la que se pago,  [default = sysdate]';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."MONTO_PAGO" IS 'monto pagado';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."BOLETA_ID_BOLETA" IS 'numero identificador de boleta';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."ID_CREDITO" IS 'numero identificatorio de credito';
   COMMENT ON COLUMN "ALUMNOS"."CUOTAS"."MULTA_ID_MULTA" IS 'numero identificador de la multa';
   COMMENT ON TABLE "ALUMNOS"."CUOTAS"  IS 'Informacion de acuerdo a las cantidades a pagar de acuerdo a cada credito solicitado';
--------------------------------------------------------
--  DDL for Table CUPON_PAGO
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."CUPON_PAGO" 
   (	"ID_CUPON" NUMBER(10,0), 
	"MONTO_PAGADO" NUMBER(9,0), 
	"FECHA_PAGO" DATE DEFAULT sysdate, 
	"NOMBRE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."CUPON_PAGO"."ID_CUPON" IS 'numero identificador del cupon';
   COMMENT ON COLUMN "ALUMNOS"."CUPON_PAGO"."MONTO_PAGADO" IS 'monto pagado del cupon';
   COMMENT ON COLUMN "ALUMNOS"."CUPON_PAGO"."FECHA_PAGO" IS 'fecha de pago del cupon,  [default = sysdate]';
   COMMENT ON COLUMN "ALUMNOS"."CUPON_PAGO"."NOMBRE" IS 'nombre del cupon';
   COMMENT ON TABLE "ALUMNOS"."CUPON_PAGO"  IS 'Informacion referente al pago de un aporte';
--------------------------------------------------------
--  DDL for Table ESTADO_DE_CUENTA
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."ESTADO_DE_CUENTA" 
   (	"ID_ESTADO_CUENTA" NUMBER(38,0), 
	"CODIGO_BARRA" BLOB, 
	"FECHA_ESTADO_CUENTA" DATE DEFAULT sysdate, 
	"SOCIO_ID_SOCIO" NUMBER(10,0), 
	"SOCIO_CATEGORIA_ID_CATEGORIA" NUMBER(10,0), 
	"SOCIO_ID_PROFESION" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CODIGO_BARRA") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "ALUMNOS"."ESTADO_DE_CUENTA"."ID_ESTADO_CUENTA" IS 'numero identificador de estado de cuenta';
   COMMENT ON COLUMN "ALUMNOS"."ESTADO_DE_CUENTA"."CODIGO_BARRA" IS 'imagen del codigo de barra';
   COMMENT ON COLUMN "ALUMNOS"."ESTADO_DE_CUENTA"."FECHA_ESTADO_CUENTA" IS 'fecha de estado de cuenta,  [default = sysdate]';
   COMMENT ON COLUMN "ALUMNOS"."ESTADO_DE_CUENTA"."SOCIO_ID_SOCIO" IS 'socio posee un numero identificador que es el id (key)';
   COMMENT ON COLUMN "ALUMNOS"."ESTADO_DE_CUENTA"."SOCIO_CATEGORIA_ID_CATEGORIA" IS 'numero identificador de la categoria';
   COMMENT ON COLUMN "ALUMNOS"."ESTADO_DE_CUENTA"."SOCIO_ID_PROFESION" IS 'numero identificador de la profesion';
   COMMENT ON TABLE "ALUMNOS"."ESTADO_DE_CUENTA"  IS 'Esta contiene informacion de la cuenta del socio';
--------------------------------------------------------
--  DDL for Table MULTA
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."MULTA" 
   (	"ID_MULTA" NUMBER(10,0), 
	"MONTO_MULTA" NUMBER(9,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."MULTA"."ID_MULTA" IS 'numero identificador de la multa';
   COMMENT ON COLUMN "ALUMNOS"."MULTA"."MONTO_MULTA" IS 'monto de la multa';
   COMMENT ON TABLE "ALUMNOS"."MULTA"  IS 'Informacion de acuerdo al monto multado de la cuota del credito';
--------------------------------------------------------
--  DDL for Table PROFESIONES
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."PROFESIONES" 
   (	"ID_PROFESION" NUMBER(10,0), 
	"NOMBRE_PROFESION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."PROFESIONES"."ID_PROFESION" IS 'numero identificador de la profesion';
   COMMENT ON COLUMN "ALUMNOS"."PROFESIONES"."NOMBRE_PROFESION" IS 'nombre de la profesion';
   COMMENT ON TABLE "ALUMNOS"."PROFESIONES"  IS 'Tabla que contiene la informacion de cada profesi�n';
--------------------------------------------------------
--  DDL for Table SOCIO
--------------------------------------------------------

  CREATE TABLE "ALUMNOS"."SOCIO" 
   (	"ID_SOCIO" NUMBER(10,0), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"AP_PATERNO" VARCHAR2(30 BYTE), 
	"AP_MATERNO" VARCHAR2(30 BYTE), 
	"e-mail" VARCHAR2(30 BYTE), 
	"DIRECCION" VARCHAR2(30 BYTE), 
	"CUIDAD" VARCHAR2(30 BYTE), 
	"REGION" VARCHAR2(30 BYTE), 
	"FECHA_INSCRIPCION" DATE DEFAULT sysdate, 
	"APORTE_INSCRIPCION" NUMBER(8,0), 
	"CATEGORIA_ID_CATEGORIA" NUMBER(10,0), 
	"PROFESIONES_ID_PROFESION" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."ID_SOCIO" IS 'socio posee un numero identificador que es el id (key)';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."NOMBRE" IS 'primer nombre del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."AP_PATERNO" IS 'apellido paterno del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."AP_MATERNO" IS 'apellido materno del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."e-mail" IS 'correo electronico del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."DIRECCION" IS 'direccion del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."CUIDAD" IS 'ciudad del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."REGION" IS 'region del socio';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."FECHA_INSCRIPCION" IS 'fecha en la que se inscribi� el socio,  [default = sysdate]';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."APORTE_INSCRIPCION" IS 'es el monto que el socio paga al inscribirse';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."CATEGORIA_ID_CATEGORIA" IS 'numero identificador de la categoria';
   COMMENT ON COLUMN "ALUMNOS"."SOCIO"."PROFESIONES_ID_PROFESION" IS 'numero identificador de la profesion';
   COMMENT ON TABLE "ALUMNOS"."SOCIO"  IS 'Tabla que almacena la informacion de los socios';
REM INSERTING into ALUMNOS.APORTES
SET DEFINE OFF;
REM INSERTING into ALUMNOS.APORTES_SOLICITADOS
SET DEFINE OFF;
REM INSERTING into ALUMNOS.BOLETA
SET DEFINE OFF;
REM INSERTING into ALUMNOS.CATEGORIA
SET DEFINE OFF;
REM INSERTING into ALUMNOS.CREDITO
SET DEFINE OFF;
REM INSERTING into ALUMNOS.CREDITO_SOLICITADO
SET DEFINE OFF;
REM INSERTING into ALUMNOS.CUOTAS
SET DEFINE OFF;
REM INSERTING into ALUMNOS.CUPON_PAGO
SET DEFINE OFF;
REM INSERTING into ALUMNOS.ESTADO_DE_CUENTA
SET DEFINE OFF;
REM INSERTING into ALUMNOS.MULTA
SET DEFINE OFF;
REM INSERTING into ALUMNOS.PROFESIONES
SET DEFINE OFF;
REM INSERTING into ALUMNOS.SOCIO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index APORTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."APORTES_PK" ON "ALUMNOS"."APORTES" ("ID_APORTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index APORTES_SOLICITADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."APORTES_SOLICITADOS_PK" ON "ALUMNOS"."APORTES_SOLICITADOS" ("APORTES_ID_APORTE", "SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index APORTES_SOLICITADOS__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."APORTES_SOLICITADOS__IDX" ON "ALUMNOS"."APORTES_SOLICITADOS" ("APORTES_ID_APORTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index APORTES_SOLICITADOS__IDXV1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."APORTES_SOLICITADOS__IDXV1" ON "ALUMNOS"."APORTES_SOLICITADOS" ("CUPON_PAGO_ID_CUPON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOLETA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."BOLETA_PK" ON "ALUMNOS"."BOLETA" ("ID_BOLETA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CATEGORIA_PK" ON "ALUMNOS"."CATEGORIA" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CREDITO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CREDITO_PK" ON "ALUMNOS"."CREDITO" ("ID_CREDITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CREDITO_SOLICITADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CREDITO_SOLICITADO_PK" ON "ALUMNOS"."CREDITO_SOLICITADO" ("ID_CREDITO_SOLICITADO", "CREDITO_ID_CREDITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUOTAS_BOLETA_ID_BOLETA_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CUOTAS_BOLETA_ID_BOLETA_IDX" ON "ALUMNOS"."CUOTAS" ("BOLETA_ID_BOLETA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUOTAS_MULTA_ID_MULTA_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CUOTAS_MULTA_ID_MULTA_IDX" ON "ALUMNOS"."CUOTAS" ("MULTA_ID_MULTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUOTAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CUOTAS_PK" ON "ALUMNOS"."CUOTAS" ("ID_CUOTA", "MULTA_ID_MULTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUPON_PAGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."CUPON_PAGO_PK" ON "ALUMNOS"."CUPON_PAGO" ("ID_CUPON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ESTADO_DE_CUENTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."ESTADO_DE_CUENTA_PK" ON "ALUMNOS"."ESTADO_DE_CUENTA" ("ID_ESTADO_CUENTA", "SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MULTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."MULTA_PK" ON "ALUMNOS"."MULTA" ("ID_MULTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROFESIONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."PROFESIONES_PK" ON "ALUMNOS"."PROFESIONES" ("ID_PROFESION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SOCIO__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."SOCIO__IDX" ON "ALUMNOS"."SOCIO" ("CATEGORIA_ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SOCIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNOS"."SOCIO_PK" ON "ALUMNOS"."SOCIO" ("ID_SOCIO", "CATEGORIA_ID_CATEGORIA", "PROFESIONES_ID_PROFESION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table APORTES
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."APORTES" MODIFY ("ID_APORTE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES" MODIFY ("TASA_INTERES" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES" MODIFY ("RESCATE_MAX" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES" ADD CONSTRAINT "APORTES_PK" PRIMARY KEY ("ID_APORTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table APORTES_SOLICITADOS
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" MODIFY ("SOCIO_ID_SOCIO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" MODIFY ("CUPON_PAGO_ID_CUPON" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" MODIFY ("APORTES_ID_APORTE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" MODIFY ("SOCIO_CATEGORIA_ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" MODIFY ("SOCIO_ID_PROFESION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" ADD CONSTRAINT "APORTES_SOLICITADOS_PK" PRIMARY KEY ("APORTES_ID_APORTE", "SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOLETA
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."BOLETA" MODIFY ("ID_BOLETA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."BOLETA" MODIFY ("FECHA_PAGADA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."BOLETA" MODIFY ("MONTO_PAGADO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."BOLETA" MODIFY ("INTERES_PAGADO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."BOLETA" MODIFY ("FECHA_VENCIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."BOLETA" ADD CONSTRAINT "BOLETA_PK" PRIMARY KEY ("ID_BOLETA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIA
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CATEGORIA" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CATEGORIA" MODIFY ("TIPO_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CATEGORIA" ADD CONSTRAINT "CATEGORIA_PK" PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CREDITO
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CREDITO" MODIFY ("ID_CREDITO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO" MODIFY ("TASA_INTERES" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO" MODIFY ("CUOTAS_MAX" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO" ADD CONSTRAINT "CREDITO_PK" PRIMARY KEY ("ID_CREDITO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CREDITO_SOLICITADO
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" MODIFY ("ID_CREDITO_SOLICITADO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" MODIFY ("FECHA_SOLICITUD" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" MODIFY ("CANT_CUOTAS" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" MODIFY ("MONTO_SOLICITADO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" MODIFY ("CREDITO_ID_CREDITO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" ADD CONSTRAINT "CREDITO_SOLICITADO_PK" PRIMARY KEY ("ID_CREDITO_SOLICITADO", "CREDITO_ID_CREDITO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUOTAS
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("ID_CUOTA" CONSTRAINT "NNC_CUOTAS_ID_CUOTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("FECHA_VENCIMIENTO" CONSTRAINT "NNC_CUOTAS_FECHA_VENCIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("MONTO_CUOTA" CONSTRAINT "NNC_CUOTAS_MONTO_CUOTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("INTERES" CONSTRAINT "NNC_CUOTAS_INTERES" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("MONTO_A_PAGAR" CONSTRAINT "NNC_CUOTAS_MONTO_A_PAGAR" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("ID_CRED_SOLI" CONSTRAINT "NNC_CUOTAS_CREDITO_SOLICITADO_ID_CREDITO_SOLICITADO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("ESTADO_CUOTA" CONSTRAINT "NNC_CUOTAS_ESTADO_CUOTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("BOLETA_ID_BOLETA" CONSTRAINT "NNC_CUOTAS_BOLETA_ID_BOLETA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("ID_CREDITO" CONSTRAINT "NNC_CUOTAS_CREDITO_SOLICITADO_CREDITO_ID_CREDITO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" MODIFY ("MULTA_ID_MULTA" CONSTRAINT "NNC_CUOTAS_MULTA_ID_MULTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUOTAS" ADD CONSTRAINT "CUOTAS_PK" PRIMARY KEY ("ID_CUOTA", "MULTA_ID_MULTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUPON_PAGO
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CUPON_PAGO" MODIFY ("ID_CUPON" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUPON_PAGO" MODIFY ("MONTO_PAGADO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUPON_PAGO" MODIFY ("FECHA_PAGO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUPON_PAGO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."CUPON_PAGO" ADD CONSTRAINT "CUPON_PAGO_PK" PRIMARY KEY ("ID_CUPON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADO_DE_CUENTA
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" MODIFY ("ID_ESTADO_CUENTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" MODIFY ("CODIGO_BARRA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" MODIFY ("FECHA_ESTADO_CUENTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" MODIFY ("SOCIO_ID_SOCIO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" MODIFY ("SOCIO_CATEGORIA_ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" MODIFY ("SOCIO_ID_PROFESION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" ADD CONSTRAINT "ESTADO_DE_CUENTA_PK" PRIMARY KEY ("ID_ESTADO_CUENTA", "SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MULTA
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."MULTA" MODIFY ("ID_MULTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."MULTA" MODIFY ("MONTO_MULTA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."MULTA" ADD CONSTRAINT "MULTA_PK" PRIMARY KEY ("ID_MULTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFESIONES
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."PROFESIONES" MODIFY ("ID_PROFESION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."PROFESIONES" MODIFY ("NOMBRE_PROFESION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."PROFESIONES" ADD CONSTRAINT "PROFESIONES_PK" PRIMARY KEY ("ID_PROFESION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SOCIO
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("ID_SOCIO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("AP_PATERNO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("AP_MATERNO" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("e-mail" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("CUIDAD" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("REGION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("FECHA_INSCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("APORTE_INSCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("CATEGORIA_ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" MODIFY ("PROFESIONES_ID_PROFESION" NOT NULL ENABLE);
  ALTER TABLE "ALUMNOS"."SOCIO" ADD CONSTRAINT "SOCIO_PK" PRIMARY KEY ("ID_SOCIO", "CATEGORIA_ID_CATEGORIA", "PROFESIONES_ID_PROFESION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APORTES_SOLICITADOS
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" ADD CONSTRAINT "APORTES_SOLICITADOS_APORTES_FK" FOREIGN KEY ("APORTES_ID_APORTE")
	  REFERENCES "ALUMNOS"."APORTES" ("ID_APORTE") ENABLE;
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" ADD CONSTRAINT "APORTES_SOLICITADOS_CUPON_PAGO_FK" FOREIGN KEY ("CUPON_PAGO_ID_CUPON")
	  REFERENCES "ALUMNOS"."CUPON_PAGO" ("ID_CUPON") ENABLE;
  ALTER TABLE "ALUMNOS"."APORTES_SOLICITADOS" ADD CONSTRAINT "APORTES_SOLICITADOS_SOCIO_FK" FOREIGN KEY ("SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION")
	  REFERENCES "ALUMNOS"."SOCIO" ("ID_SOCIO", "CATEGORIA_ID_CATEGORIA", "PROFESIONES_ID_PROFESION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CREDITO_SOLICITADO
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" ADD CONSTRAINT "CREDITO_SOLICITADO_CREDITO_FK" FOREIGN KEY ("CREDITO_ID_CREDITO")
	  REFERENCES "ALUMNOS"."CREDITO" ("ID_CREDITO") ENABLE;
  ALTER TABLE "ALUMNOS"."CREDITO_SOLICITADO" ADD CONSTRAINT "CREDITO_SOLICITADO_SOCIO_FK" FOREIGN KEY ("SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION")
	  REFERENCES "ALUMNOS"."SOCIO" ("ID_SOCIO", "CATEGORIA_ID_CATEGORIA", "PROFESIONES_ID_PROFESION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUOTAS
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."CUOTAS" ADD CONSTRAINT "CUOTAS_BOLETA_FK" FOREIGN KEY ("BOLETA_ID_BOLETA")
	  REFERENCES "ALUMNOS"."BOLETA" ("ID_BOLETA") ENABLE;
  ALTER TABLE "ALUMNOS"."CUOTAS" ADD CONSTRAINT "CUOTAS_CREDITO_SOLICITADO_FK" FOREIGN KEY ("ID_CRED_SOLI", "ID_CREDITO")
	  REFERENCES "ALUMNOS"."CREDITO_SOLICITADO" ("ID_CREDITO_SOLICITADO", "CREDITO_ID_CREDITO") ENABLE;
  ALTER TABLE "ALUMNOS"."CUOTAS" ADD CONSTRAINT "CUOTAS_MULTA_FK" FOREIGN KEY ("MULTA_ID_MULTA")
	  REFERENCES "ALUMNOS"."MULTA" ("ID_MULTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ESTADO_DE_CUENTA
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."ESTADO_DE_CUENTA" ADD CONSTRAINT "ESTADO_DE_CUENTA_SOCIO_FK" FOREIGN KEY ("SOCIO_ID_SOCIO", "SOCIO_CATEGORIA_ID_CATEGORIA", "SOCIO_ID_PROFESION")
	  REFERENCES "ALUMNOS"."SOCIO" ("ID_SOCIO", "CATEGORIA_ID_CATEGORIA", "PROFESIONES_ID_PROFESION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOCIO
--------------------------------------------------------

  ALTER TABLE "ALUMNOS"."SOCIO" ADD CONSTRAINT "SOCIO_CATEGORIA_FK" FOREIGN KEY ("CATEGORIA_ID_CATEGORIA")
	  REFERENCES "ALUMNOS"."CATEGORIA" ("ID_CATEGORIA") ENABLE;
  ALTER TABLE "ALUMNOS"."SOCIO" ADD CONSTRAINT "SOCIO_PROFESIONES_FK" FOREIGN KEY ("PROFESIONES_ID_PROFESION")
	  REFERENCES "ALUMNOS"."PROFESIONES" ("ID_PROFESION") ENABLE;