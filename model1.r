n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.5)
beta = rnorm(n, mean=0.1, sd=0.1)
mu = 500/n
c = 250
x = 500/n
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n
