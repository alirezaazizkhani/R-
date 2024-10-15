x <- unlist(read.csv('week1/femaleControlsPopulation.csv'))

set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,5)
  averages5[i] <- mean(X)
}

set.seed(1)
n <- 1000
averages50 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,50)
  averages50[i] <- mean(X)
}
par(mfrow=c(1,2))

hist(averages5, xlim=c(18,30))
hist(averages50, xlim=c(18,30))


mean( averages50 < 25 & averages50 > 23)


mu <- 23.9      
sigma <- 0.43 
pnorm(25, mu, sigma)- pnorm(23, mu, sigma)

