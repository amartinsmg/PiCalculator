local function calculatePi(precision)
  local s = 0
  local k = 1
  local max = 10 ^ precision
  for i = 0, (max - 1) do
    if i % 2 == 0 then
      s = s + 4 / k
    else
      s = s - 4 / k
    end
    k = k + 2
  end
  return s
end

local pi = calculatePi(9)
print(string.format("Pi = %.8f", pi))
