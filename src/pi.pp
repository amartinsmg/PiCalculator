program Pi;
uses Math;
var valPi: Real;

function CalculatePi(precision: LongInt): Real;
var s, k: Real;
  i, max: LongInt;
begin
  s := 0;
  k := 1;
  max := Trunc(Power(10, precision));
  for i := 0 to max - 1 do
  begin
    if (i mod 2 = 0) then
      s := s + 4 / k
    else
      s := s - 4 / k;
    k := k + 2;
  end;
  CalculatePi := s;
end;

begin
  valPi := CalculatePi(9);
  WriteLn('Pi = ', valPi:1:8);
end.
