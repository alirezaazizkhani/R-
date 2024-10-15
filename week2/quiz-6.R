library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- na.omit( read.csv(filename) )

pnorm(3)-pnorm(-3)

library(dplyr)
library(rafalib)

head(dat)
y <- filter(dat, Diet=="chow" & Sex=="M") %>% select(Bodyweight) %>% unlist

sd = popsd(y)

mean( y>= mean(y)-3*sd & y<=mean(y)+3*sd)


qqnorm(y)
abline(0,1)


y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25)))
mypar(1,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)
mean(avgs)
popsd(avgs)
