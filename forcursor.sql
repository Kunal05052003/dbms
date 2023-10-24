SET SERVEROUTPUT ON;
DECLARE
cursor FOR_CUR is select ROLL_NO,NAME,MARKS from STUD_MARKS where MARKS>800;
tmp FOR_CUR%rowtype;
BEGIN 
FOR tmp IN FOR_CUR 
LOOP
dbms_output.put_line('ROLL NO :' || tmp.ROLL_NO ||'  '|| 'NAME : ' || tmp.NAME ||'  '|| 'MARKS :' || tmp.MARKS);
END Loop;
END;	
