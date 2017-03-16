
distributionPlots = function()

{
  opar = par() 
  par(mfrow=c(3,2))

  xnorm = rnorm(10000) #Gaussian or Normal
  plot(density(xnorm),main="Normal") 
  polygon(density(xnorm),col="green")

  xnorm = runif(10000, min = 0, max = 1) #Uniform
  plot(density(xnorm),main="Uniform") 
  polygon(density(xnorm),col="Brown")

  xnorm = rbinom(10000, size = 10, prob = 0.4) #Binomial
  plot(density(xnorm),main="Binomial") 
  polygon(density(xnorm),col="Red")

  xnorm = rchisq(10000, df = 3) #Pearson or Chi-Square
  plot(density(xnorm),main="Chi-Square") 
  polygon(density(xnorm),col="Pink")

  xnorm = rlnorm(10000, meanlog=0, sdlog=1) #lognormal
  plot(density(xnorm),main="Log Normal") 
  polygon(density(xnorm),col="Blue")

  xnorm = rexp(10000, rate=1) #exponential
  plot(density(xnorm),main="Exponential") 
  polygon(density(xnorm),col="Yellow")

  return()
}

distributionPlots()
