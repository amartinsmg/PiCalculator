# frozen_string_literal: true

pi = 0.0
k = 1.0

(0..999_999_999).each do |i|
  if i.even?
    pi += 4 / k
  else
    pi -= 4 / k
  end
  k += 2
end

puts format('Pi = %.8f', pi)
