set serveroutput on;
declare
emp_id number :=&emp_id;
a number;
begin
select EID into emp_id from EMP where EID=emp_id; 
if SQL%FOUND then
 dbms_output.put_line (emp_id);
else
 dbms_output.put_line ('No such record');
end if;

end;