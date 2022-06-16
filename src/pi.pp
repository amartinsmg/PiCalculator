PROGRAM Pi;
VAR p, k: Real; i: LongInt;
BEGIN
  p := 0;
  k := 1;
  FOR i := 0 TO 999999999 DO
  BEGIN
    IF (i MOD 2 = 0) THEN p := p + 4 / k
    ELSE p := p - 4 / k;
    k := k + 2;
  END;
  WRITELN('Pi = ', p:1:8);
END.