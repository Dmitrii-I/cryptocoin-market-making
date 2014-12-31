# Simple order book model to investigate the profitability of market making.
# Assumptions:
# A1: The spread is always 1
# A2: you always have BBO
# A3: at each time step one of the four things occur: 
# 1) your bid is hit
# 2) your offer is lifted
# 3) midpoint moves down by one
# 4) midpoint moves up by one

rm(list=ls())
n <- 1000
s0 <- 100
events <- factor(sample(1:4, n, replace=TRUE), 
                 labels=c("bid_hit", "ask_lifted", "midpoint_down", "midpoint_up"))
events

S <- c(s0, rep(NA, n-1))

for (i in 2:n) {
  switch(events, 
         bid_hit = print("hit"),
         ask_lifted =
  )
}
         
         (events < 3) {
    s[i] <- s[i-1]
  } else (events == 3) {
    s[i] <- s[i-1] - 1
  } else {
    s[i] <- s[i-1] + 1
  }
}


events



x <- 1
switch(x, print("lol"), print("test"))

