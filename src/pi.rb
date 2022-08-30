def calculate_pi(precision)
  pi = 0.0
  k = 1.0
  max = 10 ** precision
  for i in 0..max do
    if i % 2 == 0
      pi += 4 / k
    else
      pi -= 4 / k
    end
    k += 2
  end
  return pi
end

pi = calculate_pi(9)
puts format('Pi = %.8f', pi)
