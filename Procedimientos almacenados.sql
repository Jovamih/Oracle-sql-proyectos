---PROCEDIMIENTOS ALMACENADOS

CREATE OR REPLACE PROCEDURE agrega_Usuario(
idUsuario IN NUMBER,
nombre IN VARCHAR,
pass IN VARCHAR
) AS
TEMPid NUMBER;
BEGIN

    SELECT idUsuario into tempID FROM TEST  
            T WHERE T.USER_ID=idUsuario;
    
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
        INSERT INTO TEST VALUES(idUsuario,nombre,pass);
    WHEN OTHERS THEN
    NULL;
END agrega_Usuario;
/
BEGIN

AGREGA_USUARIO (128,'elisa','tello89');
END;
/
SELECT
    *
FROM USER_OBJECTS;