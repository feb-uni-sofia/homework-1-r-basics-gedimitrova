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
 xmin[xmin > mean(xmin)]
 # f)
 names(xmin) <- date
 names(xmax) <- date
 # g)
 temperatures <- data.frame(xmin,xmax)
 # h)
 temperatures <- within(temperatures, {xminFahrenheit <- (xmin*9/5+32) })
 # i)
 xminFahrenheit <- xmin*9/5+32
 xmaxFahrenheit <- xmax*9/5+32
 Fahrenheit <- data.frame(xminFahrenheit, xmaxFahrenheit)
 # j)
 j1Fahrenheit <- Fahrenheit[c(1:5),] # i)
 j2Fahrenheit <- Fahrenheit[-c(6:7),] # ii)
 
 
 
 