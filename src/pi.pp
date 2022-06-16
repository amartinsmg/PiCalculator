PROGRAM CalculatePi;
VAR pi, k: Real; i: LongInt;
BEGIN
  pi := 0;
  k := 1;
  FOR i := 0 TO 999999999 DO
  BEGIN
    IF (i mod 2 = 0) THEN pi := pi + 4 / k
    ELSE pi := pi - 4 / k;
    k := k + 2;
  END;
  WRITELN('Pi = ', pi:1:8);
END.