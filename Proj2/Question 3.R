# Caroline Vantiem
# STAT 355 - Proj2
# Question 3 - 7.33 

lower<-numeric()
upper<-numeric()
percentile<-numeric()

sample<-c(418,421,421,422,425,427,431,
          434,437,439,446,447,448,453,
          454,463,465)

for (i in 1:17) {
  percentile[i]<-qnorm(p=(i-.5)/17, mean=0, sd=1)
}

# a.) box-plot
boxplot(sample, ylab = "Polymer")

# b.) box-plot/normal probability plot
plot(percentile, sort(sample), xlab= 'z percentile',
     ylab='Observed Values', main='Normal Probability Plot')

# c.) two-sided 95% CI for true average degree of polymerization
lower = mean(sample)-2.120*sd(sample)/sqrt(17)
upper = mean(sample)+2.120*sd(sample)/sqrt(17)
