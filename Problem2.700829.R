## NOTE: readability: leave some blank linkes between the code to make it more readable
## NOTE: do not start lines with a blank.

 # a)
 xmin <- c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
 xmax <- c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)
 date <- c("03Mon18","04Tue18","05Wed18","04Thu18","05Fri18","06Sat18","07Sun18")

 # b)
 TempDiff <- abs(xmax - xmin)
 # c)
 mean(xmin)
 mean(xmax)
 # d)
 xmin[xmin < mean(xmin)]
 # e)
## Your subsetting does not correspond to the question
 xmin[xmin > mean(xmin)]

## Correct:
xmin[xmax > mean(xmax)]

 # f)
## Nice
 names(xmin) <- date
 names(xmax) <- date
 # g)
 temperatures <- data.frame(xmin,xmax)
 # h)
## Improve readability

temperatures <- within(temperatures, {
	xminFahrenheit <- (xmin*9/5+32) 
})

 # i)
 xminFahrenheit <- xmin*9/5+32
 xmaxFahrenheit <- xmax*9/5+32

 Fahrenheit <- data.frame(xminFahrenheit, xmaxFahrenheit)

## Easier with less repetition

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

 # j)
## Nice
 j1Fahrenheit <- Fahrenheit[c(1:5),] # i)
 j2Fahrenheit <- Fahrenheit[-c(6:7),] # ii) 
 
 
 
