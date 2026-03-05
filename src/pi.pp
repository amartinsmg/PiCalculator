PROGRAM Pi;
USES Math;
VAR ValPi: Real;

FUNCTION CalculatePi(Precision: LongInt): Real;
VAR s, k: Real;
  i, Max: LongInt;
BEGIN
  s := 0;
  k := 1;
  Max := Trunc(Power(10, Precision));
  FOR i := 0 TO Max DO
  BEGIN
    IF (i MOD 2 = 0) THEN s := s + 4 / k
    ELSE s := s - 4 / k;
    k := k + 2;
  END;
  CalculatePi := s;
END;

BEGIN
  ValPi := CalculatePi(9);
  Writeln('Pi = ', ValPi:1:8);
END.
