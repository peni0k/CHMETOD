import time
import numpy as np
import matplotlib.pyplot as plt
from math import fabs
time.time()
x = np.arange(-10, 10, 0.1)
funn = np.sin(x)*x**2
def fun(x):
    return np.sin(x)*x**2
k = 0
def d_fun(x):
    h = 1e-5
    ddif = (fun(x+h)-fun(x-h))/(2*h)
    return ddif
d1 = {}
ind = 0
for i in np.arange(-10, 10, 0.1):
  i = float('{:.3f}'.format(i))
  d1.update({i:d_fun(i)})
  ind+=1

plt.plot(x,funn)
plt.title('Graf: $x$ from $y$')
plt.xlabel('$x$')
plt.ylabel('$y$')
plt.show()
plt.plot(x,d_fun(x))
plt.title('diff: $x$ from $y$')
plt.xlabel('$x$')
plt.ylabel('$y$')
plt.show()

a = time.time_ns()
d1
