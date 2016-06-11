#tests different values of alpha and beta, keeping the ratio at 1
#graphs across different ratios of mu to x

n <- 10^4
c <- 250
x <- 500

#two for loops: one for mu, and one for alpha(/beta)
for(m in 1:5)
{
  mu <- m * x
  print(sprintf("mu: %d", mu))
  print(sprintf("mu/x: %d", mu/x))
  for(a in 1:100)
  {
    alpha_mean <- a / 100
    beta_mean <- a / 100
    print(sprintf("alpha_mean: %f beta_mean: %f", alpha_mean, beta_mean))
    alpha <- rnorm(n, mean=alpha_mean, sd=0.1)
    beta <- rnorm(n, mean=beta_mean, sd=0.1)
    Pn <- alpha * (1 - beta) * mu - beta * x - c
    print(sum(Pn) / n)
  }
}

