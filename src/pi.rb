def calculate_pi(precision)
  s = 0.0
  k = 1.0
  max = 10 ** precision
  for i in 0...max do
    if i % 2 == 0
      s += 4 / k
    else
      s -= 4 / k
    end
    k += 2
  end
  return s
end

pi = calculate_pi(9)
puts format('Pi = %.8f', pi)
