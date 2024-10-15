# library(downloader) 
# url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
# filename <- basename(url)
# download(url, destfile=filename)
# dat <- read.csv(filename) 
# 
# dat <- na.omit(dat) # remove miss values
# 
# library(dplyr)
# 
# x <- dat %>% filter(Diet=="chow", Sex=="M") %>% select(Bodyweight) %>% unlist
# mean(x)
# 
# library(rafalib)
# sd <- popsd(x)
# 
# set.seed(1)
# X <- sample(x, 25)
# mean(X)
# 
# 
# y <- dat %>% filter(Diet=="hf", Sex=="M") %>% select(Bodyweight) %>% unlist
# mean(y)
# popsd(y)
# set.seed(1)
# Y <- sample(y, 25)
# mean(Y)
# 
# abs(abs(mean(y)-mean(x)) - abs(mean(X)-mean(Y)))
# 
# 
# 

x <- dat %>% filter(Diet=="chow", Sex=="F") %>% select(Bodyweight) %>% unlist
mean(x)

sd <- popsd(x)

set.seed(2)
X <- sample(x, 25)
mean(X)


y <- dat %>% filter(Diet=="hf", Sex=="F") %>% select(Bodyweight) %>% unlist
mean(y)
popsd(y)
set.seed(2)
Y <- sample(y, 25)
mean(Y)

abs(abs(mean(y)-mean(x)) - abs(mean(X)-mean(Y)))







