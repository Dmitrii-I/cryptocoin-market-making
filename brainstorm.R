# generate a sequence of buys and sells. ignore the size.
rm(list=ls())
#set.seed(124)
n <- 10000
prob_buy <- 0.5
spread_pct <- 0.005
s0 <- 100
mew <- 0.0001
sigma <- 50*mew

# R is simple return
# s1 = s0 + R*s0
# s1 = s0(1+R)
# s1/s0 = 1 + R
# simple gross return: 1 + R
# log(s1/s0) = log(1+R)
# log(s1/s0) = r, where r is the log return.
# s1 = exp(r) * s0
# we assume r is normally distributed with mew 0.01 and sigma 0.5
# i actually do not think this is proper method to model high frequency data
r <- cumsum(rnorm(n-1, mean=mew, sd=sigma))
asks <- c(s0, exp(r) * s0)
#plot(asks, type="l")
spread <- spread_pct * asks
bids <- asks - spread


# simulate buys and sells
t <- rep("sell", n)
t[rbinom(n, 1, prob_buy) == 1] <- "buy" 
t <- as.factor(t)
my <- rep(NA, n)
my[t == "sell"] <- -bids[t == "sell"]
my[t == "buy"] <- asks[t == "buy"]
plot(cumsum(my), type="l")
