--OPERADORES aritmeticos
/*
+,-*,**,/,//
*/
--operadores Booleanos
/*
AND, OR,NOT
*/
--OPERADORES relacionales
/*
< >= <>=
*/
SET SERVEROUTPUT ON;

DECLARE a NUMBER:=9;
        b NUMBER:=7;
        fecha DATE:=SYSDATE;
BEGIN
DBMS_OUTPUT.PUT_LINE(fecha);
DBMS_OUTPUT.PUT_LINE(a+b);
DBMS_OUTPUT.PUT_LINE(a-b);

DBMS_OUTPUT.PUT_LINE(a*b);
DBMS_OUTPUT.PUT_LINE(a**b);



END;

--Bloques anidados
SET SERVEROUTPUT ON;
BEGIN
DBMS_OUTPUT.PUT_LINE('Este es el bloque principal');
DECLARE n NUMBER:=99;
    BEGIN
    
    DBMS_OUTPUT.PUT_LINE(n);
    END;
END;

