BEGIN
MERGE INTO T1 
    USING T2
    ON (T1.ROLL_NO = T2.RNO)
   WHEN NOT MATCHED THEN
    INSERT (ROLL_NO) VALUES (T2.RNO);
IF SQL%FOUND THEN
	dbms_output.put_line('MERGED');
	END IF;
	IF SQL%NOTFOUND THEN
		dbms_output.put_line('NOT MERGED');
	END IF;	
	IF SQL%ROWCOUNT>0 THEN
		dbms_output.put_line(SQL%ROWCOUNT||' Rows Updated');
	ELSE
		dbms_output.put_line('NO Rows Updated Found');
	END IF;
END;
