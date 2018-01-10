# Writing Functions

normal.pdf <- function(par,x){
  mu <- par[1] # Creating Parameters
  sigma<-par[2] # Creating Parameters
  pdf <- (1/(sqrt(2*pi)*sigma))*exp(-(x-mu)^2/(s*sigma^2))
  return(pdf)
}

data <- rnorm(1000,)