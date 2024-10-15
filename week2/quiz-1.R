x <- unlist(read.csv('week1/femaleControlsPopulation.csv'))
RNGkind("Mersenne-Twister", "Inversion", "Rejection")
mean(x)

set.seed(1)
abs(mean(x)- mean(sample(x, 5)))

set.seed(5)
abs(mean(x)- mean(sample(x, 5)))
