def calculate_pi(precision)
  pi = 0.0
  k = 1.0
  for i in 0..precision do
    if i.even?
      pi += 4 / k
    else
      pi -= 4 / k
    end
    k += 2
  end
  return pi
end

pi = calculate_pi(1_000_000_000)
puts format('Pi = %.8f', pi)
