# STAT 355 - Project 1
# Question 1 

sample_mean<-numeric()
first_mean<-numeric()
first_sd<-numeric()
sample_sd<-numeric()

for(i in 1:1000) {                          # generates 1000 random samples
  random_sample = rnorm(n=40, mean=3, sd=2) # random sample of size 40
  if (i == 1) {
    first_mean[i] = mean(random_sample)     # mean of first sample size
    first_sd[i] = sd(random_sample)         # sd of the first sample size
  }
  sample_mean[i] = mean(random_sample)      # mean of 1000 samples
  sample_sd[i] = sd(random_sample)          # sd of 1000 samples
}

# a.)
first_mean                                  # reported mean of first sample size
first_sd                                    # reported sd of first sample size

# b.)
sample_mean                                 # reported mean of 1000 sample size
sample_sd                                   # reported sd of 1000 sample size
hist(sample_mean)                           # histogram of 1000 sample means
