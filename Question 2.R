# STAT 355 - Project 1
# Question 2

first_mean<-numeric()
first_sd<-numeric()
sample_mean<-numeric()
sample_sd<-numeric()

for (i in 1:1000) {                              # generate 1000 random samples
  sample_bin<-numeric()
  for (j in 1:15) {                              # random samples of size 15
    ber_sample = rbinom(n=10, size=1, prob=0.15) # generate Bin(10, 0.15)
    sample_bin[j] = sum(ber_sample)              # sum of Bernoulli r.v
  }
  if (i == 1) {                                  # first sample size of 15
    first_mean[i] = mean(sample_bin)             # mean of first sample size
    first_sd[i] = sd(sample_bin)                 # sd of first sample size
    hist(sample_bin)                             # hist of first sample 
  } 
  sample_mean[i] = mean(sample_bin)              # mean of 1000 sample size
  sample_sd[i] = sd(sample_bin)                  # sd of 1000 sample size
}

# a.)
first_mean
first_sd

# b.)
sample_mean
sample_sd
hist(sample_mean)
