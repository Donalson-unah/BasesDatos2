SET SERVEROUTPUT ON 
DECLARE     
	depto DEPARTMENT_ID%ROWTYPE  := 10;
	empleados NUMBER;
	nombreDepto VARCHAR2(50);

BEGIN
	SELECT depto.NAME as nombreDepto from DEPARTMENT;
	SELECT depto.EMPLOYEES as empleados from DEPARTMENT;
	 dbms_output.put_line(nombreDepto);
  	dbms_output.put_line(empleados);
END;