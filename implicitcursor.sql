SET SERVEROUTPUT ON;
BEGIN
	UPDATE STUD_MARKS SET NAME='ABC' WHERE ROLL_NO=100;
	IF SQL%FOUND THEN
		dbms_output.put_line('Updated - If Found');
	END IF;
	IF SQL%NOTFOUND THEN
		dbms_output.put_line('NOT Updated - If NOT Found');
	END IF;	
	IF SQL%ROWCOUNT>0 THEN
		dbms_output.put_line(SQL%ROWCOUNT||' Rows Updated SUCCESSFULLY');
	ELSE
		dbms_output.put_line('NO Rows Updated Found');
	END IF;
END;