SET SERVEROUTPUT ON
DECLARE
	nombre varchar2(20) := 'maria';
	apellido1 varchar2(20) := 'perez';
	apellido2 varchar2(20) := 'juarez';

BEGIN
	SELECT UPPER(nombre)  AS cadena1;
	SELECT UPPER(apellido1)  AS cadena2;
	SELECT UPPER(apellido2)  AS cadena3;
	select substr(cadena1,1,2); 
	select substr(cadena2,1,2); 
	select substr(cadena3,1,2); 

dbms_output.put_line(cadena1);
dbms_output.put_line(cadena2);
dbms_output.put_line(cadena3);
END;