# SIMULATED DATA (WHITE NOISE PROCESS)
set.seed(11) # Makes sure that the same random numbers are generated, insures same result
yt<-rnorm(20) # distribution that is being pulled from


# PLOT ACF AND PACF
par(mfrow=c(2,1)) # puts two windows in one column in the plot window
acf(ts(yt), type="correlation", lag.max=6)
acf(ts(yt), type="correlation", lag.max=6, plot=FALSE)
pacf(ts(yt), lag.max=6)
pacf(ts(yt), lag.max=6, plot=FALSE)
library(astsa)
acf2.data<-acf2(ts(yt), max.lag=6)
print(acf2.data)

# ANALYSIS OF THE LAGS
install.packages("quantmod")
library(quantmod)
yt_1<-Lag(yt, k=1)
yt_2<-Lag(yt, k=2)
yt_3<-Lag(yt, k=3)
yt_4<-Lag(yt, k=4)
yt_5<-Lag(yt, k=5)
yt_6<-Lag(yt, k=6)
data<-data.frame(cbind(Time=1:20, yt, yt_1, yt_2, yt_3, yt_4, yt_5, yt_6))
dim(data)
print(data)