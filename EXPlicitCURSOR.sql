SET SERVEROUTPUT ON;
DECLARE
CURSOR EXPLICIT_CUR is select ROLL_NO,NAME,MARKS from STUD_MARKS;
tmp STUD_MARKS%rowtype;
BEGIN 
OPEN EXPLICIT_CUR;
	Loop exit when EXPLICIT_CUR%NOTFOUND;
		FETCH EXPLICIT_CUR into tmp;
dbms_output.put_line('ROLL NO :' || tmp.ROLL_NO || 'NAME : ' || tmp.NAME || 'MaRKS :' || tmp.MARKS);
	END Loop;
IF EXPLICIT_CUR%ROWCOUNT>0 THEN
	dbms_output.put_line(EXPLICIT_CUR%ROWCOUNT||' ROWS FOUND');
ELSE
	dbms_output.put_line('NO ROWS FOUND');
END IF;
CLOSE EXPLICIT_CUR;
END;	
