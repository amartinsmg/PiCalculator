PROGRAM Pi;
USES Math;
VAR _Pi: Real;

FUNCTION CalculatePi(Precision: LongInt): Real;
VAR _Pi, k: Real;
  i, Max: LongInt;
BEGIN
  _Pi := 0;
  k := 1;
  Max := Trunc(Power(10, Precision));
  FOR i := 0 TO Max DO
  BEGIN
    IF (i MOD 2 = 0) THEN _Pi := _Pi + 4 / k
    ELSE _Pi := _Pi - 4 / k;
    k := k + 2;
  END;
  CalculatePi := _Pi;
END;

BEGIN
  _Pi := CalculatePi(9);
  Writeln('Pi = ', _Pi:1:8);
END.
