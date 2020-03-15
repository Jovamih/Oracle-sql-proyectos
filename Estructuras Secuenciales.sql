---ESTRUCTURAL SECUENCIALES

SET SERVEROUTPUT ON;

DECLARE A NUMBER:=60;

BEGIN
    LOOP 
        
        DBMS_OUTPUT.PUT_LINE(A);
        A:=A+1;
        EXIT WHEN A>100;
    END LOOP;
        DBMS_OUTPUT.PUT_LINE('Mostrando segunda secuencia');
    DECLARE J NUMBER:=0;
            I NUMBER:=0;
            N NUMBER:=0;
    BEGIN        
        <<PARENT>>
        LOOP
            J:=J+1;
            I:=0;
                <<CHILD>>
                LOOP 
                    N:=N+1;
                    I:=I+1;
                    DBMS_OUTPUT.PUT(TO_CHAR(N)||' ');
                    EXIT CHILD WHEN I>8;
                END LOOP CHILD;
                
            DBMS_OUTPUT.PUT_LINE('');
            --CONTINUE WHEN N>5; tambien se puede aplicar CONTINUE
            EXIT PARENT WHEN J>6;
        END LOOP PARENT;  
    END;
END;
--BUCLE FOR
SET SERVEROUTPUT ON;
BEGIN

FOR e IN 0..10 LOOP
    DBMS_OUTPUT.PUT_LINE(e);
END LOOP;

END;


--BUCLE WHILE
SET SERVEROUTPUT ON;
DECLARE status BOOLEAN:=FALSE;
BEGIN
    WHILE NOT status LOOP
        DBMS_OUTPUT.PUT_LINE('se ejecutara mientras sea falso');
        status:=TRUE;
    END LOOP;
END;