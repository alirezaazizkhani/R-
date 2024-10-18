# -------------------------------
# library(UsingR)
# x <- father.son$fheight
# 
# 
# smallest <- floor( min(x) )
# largest <- ceiling( max(x) )
# values <- seq(smallest, largest,len=300)
# heightecdf <- ecdf(x)
# plot(values, heightecdf(values), type="l",
#      xlab="a (Height in inches)",ylab="Pr(x <= a)")
# # hist(x)
# 
# n <- 100
# library(rafalib)
# nullplot(-5,5,1,30, xlab="Observed differences (grams)", ylab="Frequency")
# totals <- vector("numeric",11)
# for (i in 1:n) {
#   control <- sample(x,12)
#   treatment <- sample(x,12)
#   nulldiff <- mean(treatment) - mean(control)
#   j <- pmax(pmin(round(nulldiff)+6,11),1)
#   totals[j] <- totals[j]+1
#   text(j-6,totals[j],pch=15,round(nulldiff,1))
#   #if(i < 15) Sys.sleep(1) ##You can add this line to see values appear slowly
# }
# 
# -------------------------------
# dat <- read.csv('mice_pheno.csv')
# 
# library(dplyr)
# controlPopulation <- filter(dat,Sex == "F" & Diet == "chow") %>%
#   dplyr::select(Bodyweight) %>% unlist
# length(controlPopulation)
# 
# hfPopulation <- filter(dat,Sex == "F" & Diet == "hf") %>%
#   dplyr::select(Bodyweight) %>% unlist
# length(hfPopulation)


 
# -----------------------------
