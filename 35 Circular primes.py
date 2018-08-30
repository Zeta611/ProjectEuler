from collections import deque
import time


def prime_eratosthenes(n):
    sieve = [1] * n
    sieve[0] = 0
    primes = set()
    for p in xrange(2, n + 1):
        if sieve[p - 1]:
            primes.add(p)
            for i in xrange(p ** 2, n + 1, p):
                sieve[i - 1] = 0
    return primes


def circular(n):
    n_deq = deque(str(n))
    m = len(n_deq)
    res = [n] + [None] * (m - 1)
    for i in xrange(1, m):
        n_deq.appendleft(n_deq.pop())
        res[i] = int("".join(n_deq))
    return res


start = time.time()
res = set()
sieve = prime_eratosthenes(1000000)
for prime in sieve:
    circular_prime = True
    for num in circular(prime):
        if num not in sieve:
            circular_prime = False
            break
    if circular_prime:
        res.add(prime)
n = len(res)
end = time.time()
print n, "(took {} s)".format(end - start)
