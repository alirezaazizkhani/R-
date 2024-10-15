dat <- read.csv('week2/femaleMiceWeights.csv')
dat

# set.seed(1)
# n <- 5
# sides <- 6
# p <- 1/sides
# zs <- replicate(10000,{
#   x <- sample(1:sides,n,replace=TRUE)
#   (mean(x==6) - p) / sqrt(p*(1-p)/n)
# }) 
# qqnorm(zs)
# abline(0,1)#confirm it's well approximated with normal distribution
# mean(abs(zs) > 2)


# ps <- c(0.5,0.5,0.01,0.01)
# ns <- c(5,30,30,100)
# library(rafalib)
# mypar(4,2)
# for(i in 1:4){
#   p <- ps[i]
#   sides <- 1/p
#   n <- ns[i]
#   zs <- replicate(10000,{
#     x <- sample(1:sides,n,replace=TRUE)
#     (mean(x==1) - p) / sqrt(p*(1-p)/n)
#   }) 
#   hist(zs,nclass=7)
#   qqnorm(zs)
#   abline(0,1)
# }

X <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
Y <- filter(dat, Diet=="hf") %>% select(Bodyweight) %>% unlist
mean(X)
library(rafalib)
sd(X)

2 * ( 1-pnorm(2/sd(X) * sqrt(12) ) )

sqrt(sd(Y)^2/12 + sd(X)^2/12)
t.test(Y, X)

t_test = ( mean(Y) - mean(X) ) / sqrt(var(X)/12 + var(Y)/12)
                                       
2 * (1-pnorm(t_test))
                                       
