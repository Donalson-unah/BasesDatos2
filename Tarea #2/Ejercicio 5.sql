   CREATE OR REPLACE PROCEDURE
      VAR_MAX (val1 IN NUMBER, val2 IN OUT NUMBER) IS
         vmaximox NUMBER;
         BEGIN
            SELECT salario, maximo
            INTO val2, vmax
            FROM EMPLOYEES
            WHERE EMPLOYEE_ID=val1;
            IF val2 < vmax THEN
               val2:=val2+100;
            END IF;
            EXCEPTION
            WHEN NO_DATA_FOUND THEN
               val2:=-1;
               RETURN;
            WHEN OTHERS THEN
              dbms_output.put_line('Error inesperado');
         END;

--------------------------------------------------------

   DECLARE
      vsalario NUMBER;
   BEGIN
      VAR_MAX (51, vsalario)
      dbms_output.put_line('El salario es ', vsalario);
   END;