﻿ALTER TABLE ESQUEMAPI.CHAMADO
 DROP PRIMARY KEY CASCADE;

DROP TABLE ESQUEMAPI.CHAMADO CASCADE CONSTRAINTS;

CREATE TABLE ESQUEMAPI.CHAMADO
(
   SEQ_CHAMADO            NUMBER (38) NOT NULL,
   ANO_CHAMADO            NUMBER (4) NOT NULL,
   USUARIO_CADASTRO       VARCHAR2 (20 BYTE) NOT NULL,
   DTHR_INS               DATE NOT NULL,
   USUARIO_VERIFICADOR    VARCHAR2 (20 BYTE),
   DTHR_VERIFICA          DATE,
   USUARIO_FINALIZA       VARCHAR2 (20 BYTE),
   DTHR_FINALIZA          DATE,
   CD_NATUREZA_RELATO     NUMBER (1) NOT NULL,
   CD_STATUS_RELATO       NUMBER (1) NOT NULL,
   TITULO_RELATO          VARCHAR2 (100 BYTE) NOT NULL,
   RELATO_SOLICITANTE     VARCHAR2 (900 BYTE) NOT NULL
)
TABLESPACE ESQUEMAPI_DAD_AUTO
PCTUSED 0
PCTFREE 10
INITRANS 1
MAXTRANS 255
STORAGE (INITIAL 64 K
         NEXT 1 M
         MINEXTENTS 1
         MAXEXTENTS UNLIMITED
         PCTINCREASE 0
         BUFFER_POOL DEFAULT)
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX ESQUEMAPI.PK_CHAMADO
   ON ESQUEMAPI.CHAMADO (SEQ_CHAMADO, ANO_CHAMADO)
   NOLOGGING
   TABLESPACE ESQUEMAPI_DAD_AUTO
   PCTFREE 10
   INITRANS 2
   MAXTRANS 255
   STORAGE (INITIAL 64 K
            NEXT 1 M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            PCTINCREASE 0
            BUFFER_POOL DEFAULT)
   NOPARALLEL;
   
   ALTER TABLE ESQUEMAPI.CHAMADO ADD (
  CONSTRAINT PK_CHAMADO
 PRIMARY KEY
 (SEQ_CHAMADO, ANO_CHAMADO)
    USING INDEX 
    TABLESPACE ESQUEMAPI_DAD_AUTO
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          128K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ));


DROP PUBLIC SYNONYM CHAMADO;

CREATE PUBLIC SYNONYM CHAMADO FOR ESQUEMAPI.CHAMADO;