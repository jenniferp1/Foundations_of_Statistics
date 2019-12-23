library(SDSFoundations)

world <- WorldBankData


#Primary Research Question
#Denmark is a high-income country in Europe of about 
#5.5 million people. What is the best-fitting model for growth 
#of internet usage in Denmark since 1990?  

#PART 1 ANALYSIS

den <- world[world$Country=="Denmark",]

den1990 <- den[den$year >= 1990,]   
den1990$year

den1990$time <- den1990$year - 1990
den1990$time

length(den1990$time)
length(den1990$internet.users)

expFit(den1990$time, den1990$internet.users)
logisticFit(den1990$time, den1990$internet.users)

#from expFit, a = 30026.75 (population at time 0)
30026.75/den1990$population[1]

#from logisticFit C = 4961489
4961489/den1990$internet.users
4961489/den1990$population
den1990$internet.users/den1990$population

pop <- 5.5*10^6
p <- .7*pop
#expo equation
#y=Ab^t
#y=30026.75*1.347^t
#p/30026.75 = 1.347^t
#log(p/30026.75) = tlog(1.347)
t <- log(p/30026.75)/log(1.347)

e<-expFitPred(den1990$time,den1990$internet.users,16)
1990+16

#logit equation
#p=4961489/(1+281.3*1.73^-t)
#p(1+281.3*1.73^-t) = 4961489
#4961489/p = 1+281.3*1.73^-t
#(4961489/p - 1)/281.3 = 1.73^-t
t <- log((4961489/p - 1)/281.3)/log(1.73)/(-1)

l <- logisticFitPred(den1990$time,den1990$internet.users,13)
1990+13


#PART 3 - BRAZIL

bra <- world[world$Country=="Brazil",]
bra95 <- bra[bra$year >= 1995, ]
bra95$time <- bra95$year - 1995
bra95$time

bra95[bra95$year=="2000","mobile.users"]/1000000
bra95[bra95$mobile.users>100000000,"year"] 

tripleFit(bra95$time,bra95$mobile.users)

logisticFitPred(bra95$time,bra95$mobile.users,30)/1000000


#PART 4

day  <- c(0,1,2,3,4,5,6,7,8,9)
flu <- c(73,105,137,257,367,658,898,1085,1490,1893)

#Rate of change from day 3 to 4 - based on table
abs(1-367/257)

#Growth rate based on exp funct
abs(1-1.46)

#y=3273.31/(1+43.59*1.57^-t)

#y=76.64*1.46^t

expFit(day,flu)
logisticFit(day,flu)

e <-expFitPred(day,flu,14)
76.64*1.46^14
76.63569*1.46096^14

l <- logisticFitPred(day,flu,14)
3273.31/(1+43.59*1.57^(-14))

#residuals
4379-15325 
4379-3034


#PART 5
year <- c(1,3)
wolf <- c(25,45)

linFit(year,wolf)
(45-25)/2
linFitPred(year, wolf, 0)

expFit(year,wolf)
expFitPred(year,wolf,0)

linFitPred(year,wolf,7)
expFitPred(year,wolf,7)

#y=18.6339*1.34^t
log(326/18.6339)/log(1.34)


#PART 6
#y=2000/(1+152.10*2.14^-t)

#1000*(1+152.10*2.14^-t) = 2000
#((2000/1000)-1)/152.10 = 2.14^-t
t <- -1*log(((2000/1000)-1)/152.10)/log(2.14)


2000/(1+152.10*2.17^-9)
