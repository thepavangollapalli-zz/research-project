#tests different values of alpha and beta, keeping the ratio at 1
#graphs across different ratios of mu to x

#initialize empty data frame
payoffs <- data.frame()

n <- 10^4
c <- 250
x <- 500

#two for loops: one for mu, and one for alpha(/beta)
for(m in 1:5)
{
  mu <- m * x
  #print(sprintf("mu: %d", mu))
  #print(sprintf("mu/x: %d", mu/x))
  for(a in 1:100)
  {
    alpha_mean <- a / 100
    beta_mean <- alpha_mean / 2
    #print(sprintf("alpha_mean: %f beta_mean: %f", alpha_mean, beta_mean))
    alpha <- rnorm(n, mean=alpha_mean, sd=0.1)
    beta <- rnorm(n, mean=beta_mean, sd=0.1)
    Pn <- alpha * (1 - beta) * mu - beta * x - c
    #print(sum(Pn) / n)
    #initialize new row, add it to data frame
    new_row <- c(alpha_mean, sum(Pn) / n, m)
    payoffs <- rbind(payoffs, new_row)
  }
}

#rename columns of frame for clarity
names(payoffs) <- c("alpha_value", "avg_value", "mu_value")

#sets up plot
num_plots <- max(payoffs$mu_value)
xrange <- range(payoffs$alpha_value)
yrange <- range(payoffs$avg_value)
colors <- rainbow(num_plots)
plot(xrange, yrange, xlab="Alpha value",
     ylab="sum(Pn) / n" ) 
title("Payoff amount given alpha/beta ratio = 2")

#plots points and connects them with lines
for(i in 1:num_plots)
{
  plot <- subset(payoffs, mu_value==i)
  lines(plot$alpha_value, plot$avg_value, col=colors[i])
}

#creates legend and grid
legend(0,750, 1:num_plots, lty=c(1, 1, 1, 1, 1), col=colors, title="mu:x", box.lwd=2)
grid(nx = 30, ny = 30, col = "lightgray", lty = "dotted",
     lwd = par("lwd"), equilogs = TRUE)
