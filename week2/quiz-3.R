# install.packages("gapminder")
library(gapminder)
data(gapminder)
head(gapminder)
library(dplyr)

x<- gapminder %>%
  filter(year == 1952) %>%
  select(lifeExp)

hist(unlist(x), 
     main = "Histogram of Life Expectancies in 1952",
     xlab = "Life Expectancy",
     ylab = "Frequency",
     col = "lightblue", 
     border = "black")

mean(x<=40)
par(mfrow=c(2,2))
plot(ecdf(gapminder$lifeExp))

qs = seq(from=min(x), to=max(x), length=20)
prop = function(q) {
  mean(x <= q)
}
prop(40)

props = sapply(qs, prop)
plot(qs, props)

props = sapply(qs, function(q) mean(x <= q))
plot(qs, props)

