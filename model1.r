#Model to get used to simulating with R
#uses values from a normal distribution to get 10,000 values and then averages them

####
#6/3/2016: used constant values for mu/x, ratio 1:1
#alpha, beta changed values (now 0.9 and 0.5 respectively)

n = 10^4
c = 250
print("mu/x: 1/1")
mu = 500
x = 500

print("0.9, 0.5")
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.5")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("mu/x: 2/1")
mu = 1000
x = 500

print("0.9, 0.5")
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.5")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("mu/x: 4/1")
mu = 2000
x = 500

print("0.9, 0.5")
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.5")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("mu/x: 8/1")
mu = 4000
x = 500

print("0.9, 0.5")
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.9, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.5")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.5, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.5, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.25")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.25, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n

print("0.25, 0.1")
n = 10^4
alpha = rnorm(n, mean=0.25, sd=0.1)
beta = rnorm(n, mean=0.1, sd=0.1)
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n
