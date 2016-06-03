#Model to get used to simulating with R
#uses values from a normal distribution to get 10,000 values and then averages them

####
#6/3/2016: used constant values for mu/x, ratio 1:1
#alpha, beta changed values (now 0.9 and 0.5 respectively)

n = 10^4
alpha = rnorm(n, mean=0.9, sd=0.1)
beta = rnorm(n, mean=0.5, sd=0.1)
mu = 500
c = 250
x = 500
Pn = alpha * (1 - beta) * mu - beta * x - c
sum(Pn) / n
