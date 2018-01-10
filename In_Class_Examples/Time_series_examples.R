# Time Seris Example 1

install.packages("astsa")
library(astsa)
# EXAMPLE 1 - JOHNSON & JOHNSON QUATERLY EARNINGS PER SHARE (1960-1980)
data<-jj
?jj # Looking up what jj is

class(data) # determining what class data is
print(data)

sum(is.na(data)) # checking how many missing observations there are
length(data) # checking how many observations there are
summary(data) # Summary of data

# TIME SERIES PLOT
# How to arrange data in time series format
output<-ts(data, start=c(1960,1), frequency=4)
plot(output,
     xlab="Time",
     ylab="Earnings Per Share ($)",
     main="J&J Quarterly Earnings Per Share (1960-1980)")


# HISTOGRAM AND EMPIRICAL DISTRIBUTION
hist(data,
     main="Density Plot",
     xlab="J&J Earnings Per Share",
     ylab="density",
     col=NULL,
     prob=TRUE, # creating a histogram in terms of probabilities
     ylim=c(0,0.30)) # restricing the y axis
lines(density(data, kernel="epanechnikov", bw="ucv"), # gives a smooth histogram, Lines plots over the most recent one in the console
      col=2)
