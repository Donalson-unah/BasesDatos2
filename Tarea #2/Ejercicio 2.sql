DECLARE
    num1 NUMBER := 555;
    num2 NUMBER;
BEGIN
    num2 := MOD(num1, 2);
  
    IF num2= 0 THEN
      dbms_output.Put_line('El numero es par');
    ELSE
      dbms_output.Put_line('El numero es impar');
    END IF;
END; 