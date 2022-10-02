BEGIN
	SELECT MAX(SALARY) AS salario_maximo FROM Employees WHERE Employee_ID = 100;
	dbms_output.Put_line(salario_maximo );
END;