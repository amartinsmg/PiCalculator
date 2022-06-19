using Printf

function calculatePi(precision)
  _pi = 0.0
  k = 1.0
  for i = 0:precision
    if iseven(i)
      _pi += 4/ k
    else
      _pi -= 4/ k
    end
    k += 2
  end
  return _pi
end

_pi = calculatePi(1_000_000_000)
@printf("Pi = %.8f\n", _pi)
