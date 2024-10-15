# library(dplyr)
# dat <- read.csv('week2/femaleMiceWeights.csv')
# 
# control <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
# treatment <- filter(dat, Diet=="hf") %>% select(Bodyweight) %>% unlist
# 
# mean(treatment)
# mean(control)
# 
# population <- read.csv('week1/femaleControlsPopulation.csv')
# population <- unlist(population)
# mean(sample(population, 12))
# 
# obs <- mean(treatment) - mean(control)
# 
# n <- 10000
# nulls <- vector("numeric", n)
# for ( i in 1:n){
#   nulls[i] <- mean(sample(population, 12)) - mean(sample(population, 12))
# }
# max(nulls)
# hist(nulls)
# 
# sum(nulls > obs)/n
# mean(abs(nulls) > obs)


library(dplyr)
library(rafalib)
dat <- read.csv("week2/femaleMiceWeights.csv") #previously downloaded

control <- filter(dat,Diet=="chow") %>% select(Bodyweight) %>% unlist
treatment <- filter(dat,Diet=="hf") %>% select(Bodyweight) %>% unlist
# 
# diff <- mean(treatment) - mean(control)
# N <-length(treatment)
# 
# t_test <- diff/sqrt(var(treatment)/N + var(control)/N)
# t_test
# pnorm(t_test)

t.test(treatment, control)
