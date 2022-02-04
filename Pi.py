pi = 0
k = 1

for i in range(1000000000):
  if (i % 2 == 0):
    pi += 4/k
  else:
    pi -= 4/k

  k += 2

print("Pi = " + format(pi, ".9f"))