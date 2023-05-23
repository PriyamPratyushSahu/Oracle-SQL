DECLARE
eid Employee.Employeeid%TYPE;
sal Employee.salary%TYPE;
BEGIN
eid:=&eid;
SELECT salary INTO sal FROM employee WHERE employeeid=eid;
IF sal<25000 THEN
   sal:=sal+500;
   UPDATE Employee SET salary=sal where employeeid=eid;
  DBMS_OUTPUT.PUT_LINE('Salary updated');
END IF;
END;
