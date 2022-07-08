def calculate_pi(precision: int):
  pi = 0
  k = 1
  max = 10 ** precision
  for i in range(max):
    if i % 2 == 0:
      pi += 4 / k
    else:
      pi -= 4 / k
    k += 2
  return pi

pi = calculate_pi(9)
print(f'Pi = {pi:.8f}')
