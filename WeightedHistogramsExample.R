# Example of how to do histograms with weights. 
# This is from the docs for the "weights" R package

#install.packages("weights")
library(weights)
var1 <- c(1:100)   # a sequence from 1 to 100
wgt <- var1/mean(var1)   
par(mfrow=c(2, 2)) # 2x2 plots
wtd.hist(var1,main="Weights all 1")  # by defaults, the weights are set to 1
wtd.hist(var1, weight=wgt,main="Weights given by wgt")  # Now uses the weights given by wgt
wtd.hist(var1, weight=var1,main="Weights given by var1")  # And now weights are given by var1
par(mfrow=c(1, 1)) # go back to a single plot 
