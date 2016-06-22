#Starts to take multiple people into account
#Generates alpha value based on total talent in system, assuming talent combines in logarithmic fashion

alpha_vals <- list()
a_index <- 1

n <- 10^4

log_func <- function(talents){
  return(log(talents)/4)
}

#not used
exp_func <- function(talents){
  return(talents^2)
}

for(j in 1:9)# used to be c(1, 3, 5, 7), but changed to get more data points
{
  talents <- data.frame()
  for(k in 1:5)
  {
    norm <- rnorm(n, mean=j, sd=1)
    #builds frame of average talent values across 5 peoples
    talentRow <- sum(norm) / n
    talents <- rbind(talents, talentRow)
  }
  
  sum_talent <- sum(talents)
  alpha <- log_func(sum_talent)
  #Builds a list of the calculated alpha values
  alpha_vals[a_index] <- alpha
  a_index <- a_index + 1
  newRow <- c(sum_talent, alpha)
}

#renames columns of frames for clarity
names(talents) <- c("Talent level")
names(alpha_vals) <- c("alpha")

#tests different values of alpha and beta, keeping the ratio at 1
#graphs across different ratios of mu to x

#initialize empty data frame
payoffs <- data.frame()

c <- 250
x <- 500

#two for loops: one for mu, and one for alpha(/beta)
for(m in 1:5)
{
  mu <- m * x
  #print(sprintf("mu: %d", mu))
  #print(sprintf("mu/x: %d", mu/x))
  
  ##### TWO POSSIBLE AVENUES FOR THIS MODEL TO USE GENERATED ALPHA
  ##### METHOD 1 (IN USE): Alpha value generated from talent is used as mean for rnorm
  ##### METHOD 2: Generated alpha value is used as is
  
  for(a in alpha_vals)
  {
    alpha_mean <- a
    beta_mean <- alpha_mean/2
    alpha <- rnorm(n, mean=alpha_mean, sd=0.1)
    beta <- rnorm(n, mean=beta_mean, sd=0.1)
    Pn <- alpha * (1 - beta) * mu - beta * x - c
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
title("Payoff amount given alpha/beta ratio = 2 and considering talent levels")

#plots points and connects them with lines
for(i in 1:num_plots)
{
  plot <- subset(payoffs, mu_value==i)
  points(plot$alpha_value, plot$avg_value)
  lines(plot$alpha_value, plot$avg_value, col=colors[i])
}

#creates legend and grid
legend(0,750, 1:num_plots, lty=c(1, 1, 1, 1, 1), col=colors, title="mu:x", box.lwd=2)
grid(nx = 30, ny = 30, col = "lightgray", lty = "dotted",
     lwd = par("lwd"), equilogs = TRUE)


