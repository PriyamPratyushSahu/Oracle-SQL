DECLARE
var NUMBER(10);
BEGIN
var:=&var;
IF mod(var,2)=0 THEN
   DBMS_OUTPUT.PUT_LINE(var||'even');
ELSE
   DBMS_OUTPUT.PUT_LINE(var||'odd');
END IF;
END;