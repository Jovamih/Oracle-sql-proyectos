--Declaracion de variables
SET SERVEROUTPUT ON;
 DECLARE nombre VARCHAR(20):='johan valerio';
            edad NUMBER:=19;
            codigo CHAR(8):='74804782';
BEGIN

    DBMS_OUTPUT.PUT_LINE(nombre);
    DBMS_OUTPUT.PUT_LINE(edad);
    DBMS_OUTPUT.PUT_LINE(codigo);
    
    DBMS_OUTPUT.PUT_LINE('Datos completos: ->'|| nombre||'    '||edad||'  '||codigo);
END;

--Constantes y NOT NULL
SET SERVEROUTPUT ON;
DECLARE numero CONSTANT NUMBER:=365;
        palabra VARCHAR(20) NOT NULL :='JOHANNN';
BEGIN

    DBMS_OUTPUT.PUT_LINE(numero);
    DBMS_OUTPUT.PUT_LINE(palabra);

END;

--variables BOOLEAN
SET SERVEROUTPUT ON;
DECLARE estado BOOLEAN:=TRUE;--TRUE,FALSE,NULL
BEGIN
--No se puede imprimir un valor BOOLEANO, arroja errores
DBMS_OUTPUT.PUT_LINE(estado);

END;
