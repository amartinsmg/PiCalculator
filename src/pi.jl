using Printf

function calculatePi(precision)
  s = 0.0
  k = 1.0
  max = 10^precision
  for i = 0:(max-1)
    if i % 2 == 0
      s += 4 / k
    else
      s -= 4 / k
    end
    k += 2
  end
  return s
end

val_pi = calculatePi(9)
@printf("Pi = %.8f\n", val_pi)
