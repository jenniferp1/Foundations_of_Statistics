
library(SDSFoundations)

#cor() describes the extent of the relationship between indpendent
#variable (x) and the dependent variable (y)

#linFit() model that expands on correlation coeff
#gives what the relationship looks like in terms of the 
#actual variables involved - the specifice input and output

#model is defined as a function

statepop = c(35,8,13,64,13,87,193,124,11,6)
millionaires = c(86,18,22,141,26,207,368,228,20,11)

plot(statepop,millionaires)
cor(statepop,millionaires)
linFit(statepop,millionaires)

WR <- WorldRecords
View(WR)

mens800 <- WR[WR$Event=='Mens 800m',]

linFit(mens800$Year,mens800$Record)
