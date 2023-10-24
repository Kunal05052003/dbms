Set serveroutput on;
DECLARE  
   e_id EMP.EID%type;  
   e_name EMP.ENAME%type;  
   e_addr EMP.ADDRESS%type;  
   CURSOR e_emp is  
      SELECT EID, ENAME, ADDRESS FROM EMP;  
BEGIN  
   OPEN e_emp;  
   LOOP  
      FETCH e_emp into e_id, e_name, e_addr;  
      EXIT WHEN e_emp%notfound;  
      dbms_output.put_line(e_id || ' ' || e_name || ' ' || e_addr);  
   END LOOP;  
   CLOSE e_emp;  
END;  