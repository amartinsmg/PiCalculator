PROGRAM Pi;
VAR _Pi: Real;

FUNCTION CalculatePi(Precision: LongInt): Real;
VAR _Pi, k: Real;
  i: LongInt;
BEGIN
  _Pi := 0;
  k := 1;
  FOR i := 0 TO Precision DO
  BEGIN
    IF (i MOD 2 = 0) THEN _Pi := _Pi + 4 / k
    ELSE _Pi := _Pi - 4 / k;
    k := k + 2;
  END;
  CalculatePi := _Pi;
END;

BEGIN
  _Pi := CalculatePi(1000000000);
  Writeln('Pi = ', _Pi:1:8);
END.
