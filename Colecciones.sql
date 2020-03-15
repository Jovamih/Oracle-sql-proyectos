SET SERVEROUTPUT ON;

DECLARE TYPE DATOS IS RECORD(
nombre VARCHAR2(100),
pass varchar2(20)
);
DATO1 DATOS;
BEGIN
    
    SELECT NAME,PASSWORD INTO DATO1.nombre,DATO1.pass FROM TEST;
    DBMS_OUTPUT.PUT_LINE(DATO1.nombre||'    '||DATO1.pass);
    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('mas de un registro involucrado');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('INTERESANTE no hubo ningun dato');
END;
commit;