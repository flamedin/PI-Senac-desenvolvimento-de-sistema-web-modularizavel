DROP SEQUENCE ESQUEMAPI.SEQ_CHAMADO;

CREATE SEQUENCE ESQUEMAPI.SEQ_CHAMADO
  START WITH 1000
  MAXVALUE 9999999999
  MINVALUE 1000
  NOCYCLE
  CACHE 20
  NOORDER;


DROP PUBLIC SYNONYM SEQ_CHAMADO;

CREATE PUBLIC SYNONYM SEQ_CHAMADO FOR ESQUEMAPI.SEQ_CHAMADO;