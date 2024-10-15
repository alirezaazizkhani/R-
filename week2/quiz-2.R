x <-unlist(read.csv('week1/femaleControlsPopulation.csv'))

set.seed(1)
ave <- vector("numeric", 1000)

for (i in 1:1000){
  ave[i] <- mean(sample(population, 5))
}

hist(ave)
mean( abs( ave - mean(x) ) > 1)
