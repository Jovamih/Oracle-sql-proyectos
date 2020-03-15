--Estructuras de SELECCCION
SET SERVEROUTPUT ON;
DECLARE edad NUMBER:=34;
        mensaje VARCHAR2(100);
BEGIN 
    IF edad>65 THEN
            mensaje:='Es un mayor de edad';
        ELSIF edad>45 THEN
            mensaje:='Probablemente se aproxima a ser mayor';
        ELSIF edad>=25 THEN
            mensaje:='Ya es todo un adulto';
        ELSIF edad>17 THEN
            mensaje:='ya es todo un adolescente';
        ELSE mensaje:='Todavia es menor';
        
    END IF;

DBMS_OUTPUT.PUT_LINE(mensaje);
END;

--ESTRUCTURAS CASE
SET SERVEROUTPUT ON;
DECLARE V NUMBER:=0;
      MSG VARCHAR2(100);
BEGIN

CASE V 
    WHEN 45 THEN MSG:='Es igual a 45';
    WHEN 34 THEN MSG:='Es igual a 23';
    WHEN 10 THEN MSG:='se parece al 10';
    else MSG:='algo raro pasó aqui';
END CASE;
    DBMS_OUTPUT.PUT_LINE(MSG);
END;

--SEARCHED CASE es mucho mas complejo, 
--simpelemnte no ponemos nada en la declaracion del CASE y podemos hacer comraciones en los WHEN

