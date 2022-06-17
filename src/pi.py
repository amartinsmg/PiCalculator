def calculate_pi(precision: int):
  pi = 0
  k = 1
  for i in range(precision):
    if i % 2 == 0:
      pi += 4 / k
    else:
      pi -= 4 / k

    k += 2
  return pi

pi = calculate_pi(1_000_000_000)
print(f'Pi = {pi:.8f}')
