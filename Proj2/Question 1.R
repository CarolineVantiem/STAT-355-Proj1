# Caroline Vantiem
# STAT 355 - Proj 2
# Question 1

indicator<-numeric()
lower<-numeric()
upper<-numeric()

for (i in 1:1000) {
  sample<-rnorm(n=40, mean=3, sd=2)
  
  # 95% CI +-1.96
  lower[i] = mean(sample)-1.96*2/sqrt(40)
  upper[i] = mean(sample)+1.96*2/sqrt(40)
  
  indicator[i] = ifelse(lower[i]<3 & upper[i]>3, 1,0) 
}

mean(indicator)
