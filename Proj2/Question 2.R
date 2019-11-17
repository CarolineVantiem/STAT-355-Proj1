# Caroline Vantiem
# STAT 355 - Proj2
# Question 2

# random sample - size 100
# normal probability plot

# (a) t-distribution (df=1)
sample1<-rt(n=100, df=1)

percentile1<-numeric()
for (i in 1:100) {
  percentile1[i]<-qnorm(p=(i-.5)/100, mean=0, sd=1)
}

plot(percentile1, sort(sample1), xlab='z percentile',
     ylab='Ordered Observed Value', main='Normal Probability Plot')

# (b) t-distribution (df=10)
sample2<-rt(n=100, df=10)

percentile2<-numeric()
for (i in 1:100) {
  percentile2[i]<-qnorm(p=(i-.5)/100, mean=0, sd=1)
}

plot(percentile2, sort(sample2), xlab='z percentile',
     ylab='Ordered Observed Value', main='Normal Probability Plot')


# (c) t-distribution (df=100)
sample3<-rt(n=100, df=100)

percentile3<-numeric()
for (i in 1:100) {
  percentile3[i]<-qnorm(p=(i-.5)/100, mean=0, sd=1)
}

plot(percentile3, sort(sample3), xlab='z percentile',
     ylab='Ordered Observed Value', main='Normal Probability Plot')


# (d) standard normal distribution
sample4<-rnorm(n=100, mean=0, sd=1)

percentile4<-numeric()
for (i in 1:100) {
  percentile4[i]<-qnorm(p=(i-.5)/100, mean=0, sd=1)
}

plot(percentile4, sort(sample4), xlab='z percentile',
     ylab='Ordered Observed Value', main='Normal Probability Plot')
