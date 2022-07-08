using Printf

function calculatePi(precision)
  _pi = 0.0
  k = 1.0
  max = 10 ^ precision
  for i = 0:max
    if iseven(i)
      _pi += 4/ k
    else
      _pi -= 4/ k
    end
    k += 2
  end
  return _pi
end

_pi = calculatePi(9)
@printf("Pi = %.8f\n", _pi)
