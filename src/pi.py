def calculate_pi(precision: int):
  s = 0
  k = 1
  max = 10 ** precision
  for i in range(max):
    if i % 2 == 0:
      s += 4 / k
    else:
      s -= 4 / k
    k += 2
  return s

pi = calculate_pi(9)
print(f'Pi = {pi:.8f}')
