Example of initializing variable
SQL> set serveroutput on
SQL> DECLARE 
  2   a integer := 30;
  3   b integer := 40;
  4   c integer;
  5   f real;
  6   BEGIN 
  7   c := a + b;
  8   dbms_output.put_line('Value of c: ' || c);
  9   f := 100.0/3.0;
 10   dbms_output.put_line('Value of f: ' || f);
 11  END;
 12  /
Value of c: 70
Value of f: 33.33333333333333333333333333333333333333

PL/SQL procedure successfully completed.

2) Example of Local and Global variables

SQL> set serveroutput on
SQL> DECLARE 
  2   --Global variables
  3   num1 number := 95;
  4   num2 number := 85;
  5   BEGIN
  6   dbms_output.put_line('Outer Variable num1: ' || num1);
  7   dbms_output.put_line('Outer Variable num2: ' || num2);
  8   DECLARE 
  9   -- Local variables
 10   num1 number := 195;
 11   num2 number := 185;
 12   BEGIN 
 13  
 14   dbms_output.put_line('Inner Variable num1: ' || num1);
 15   dbms_output.put_line('Inner Variable num2: ' || num2);
 16   END;
 17  END;
 18  /
Outer Variable num1: 95
Outer Variable num2: 85
Inner Variable num1: 195
Inner Variable num2: 185

PL/SQL procedure successfully completed.

3) pi values
SQL> set serveroutput on
SQL>  DECLARE 
  2   -- constant declaration
  3   pi constant number := 3.141592654;
  4   -- other declarations
  5   radius number(5,2);
  6   dia number(5,2);
  7   circumference number(7, 2);
  8   area number (10, 2);
  9  BEGIN 
 10   -- processing
 11   radius := 9.5;
 12   dia := radius * 2;
 13  circumference := 2.0 * pi * radius;
 14   area := pi * radius * radius;
 15   -- output
 16   dbms_output.put_line('Radius: ' || radius);
 17   dbms_output.put_line('Diameter: ' || dia);
 18   dbms_output.put_line('Circumference: ' || circumference);
 19   dbms_output.put_line('Area: ' || area);
 20  END;
 21  /
Radius: 9.5
Diameter: 19
Circumference: 59.69
Area: 283.53

PL/SQL procedure successfully completed.

4)PL/SQL If
SQL> set serveroutput on
SQL>  DECLARE 
  2   a number(3) := 500;
  3   BEGIN 
  4   -- check the boolean condition using if statement
  5   IF( a < 20 ) THEN
  6   -- if condition is true then print the following
  7   dbms_output.put_line('a is less than 20 ' );
  8   ELSE 
  9   dbms_output.put_line('a is not less than 20 ' );
 10   END IF;
 11  dbms_output.put_line('value of a is : ' || a);
 12  END;
 13  /
a is not less than 20
value of a is : 500

PL/SQL procedure successfully completed.

5)PL/SQL Case Statement
SQL> set serveroutput on
SQL>  DECLARE 
  2   grade char(1) := 'A';
  3   BEGIN 
  4   CASE grade
  5   when 'A' then dbms_output.put_line('Excellent');
  6   when 'B' then dbms_output.put_line('Very good');
  7   when 'C' then dbms_output.put_line('Good');
  8   when 'D' then dbms_output.put_line('Average');
  9   when 'F' then dbms_output.put_line('Passed with Grace');
 10   else dbms_output.put_line('Failed');
 11   END CASE;
 12  END;
 13  /
Excellent

PL/SQL procedure successfully completed.

6)PL/SQL EXIT Loop
SQL> set serveroutput on
SQL>  DECLARE
  2   i NUMBER := 1;
  3   BEGIN 
  4   LOOP
  5   EXIT WHEN i>10;
  6   DBMS_OUTPUT.PUT_LINE(i);
  7   i := i+1;
  8   END LOOP;
  9   END;
 10  /
1
2
3
4
5
6
7
8
9
10

PL/SQL procedure successfully completed.

7)PL/SQL While Loop
SQL> set serveroutput on
SQL>  DECLARE
  2   i INTEGER := 1;
  3   BEGIN 
  4   WHILE i<=10 LOOP
  5   DBMS_OUTPUT.PUT_LINE(i);
  6   i := i+1;
  7   END LOOP;
  8   END;
  9  /
1
2
3
4
5
6
7
8
9
10

PL/SQL procedure successfully completed.

8)PL/SQL FOR Loop
SQL> set serveroutput on
SQL>  BEGIN 
  2   FOR k IN 1..10 LOOP
  3   DBMS_OUTPUT.PUT_LINE(k);
  4   END LOOP;
  5   END;
  6  /
1
2
3
4
5
6
7
8
9
10

PL/SQL procedure successfully completed.

9)PL/SQL For Loop REVERSE
SQL> 
SQL> set serveroutput on
SQL>  DECLARE
  2  VAR1 NUMBER;
  3  BEGIN
  4  VAR1:= 10;
  5  FOR VAR2 IN REVERSE 1..10
  6  LOOP
  7   DBMS_OUTPUT.PUT_LINE(VAR1*VAR2);
  8   END LOOP;
  9   END;
 10  /
100
90
80
70
60
50
40
30
20
10

PL/SQL procedure successfully completed.
