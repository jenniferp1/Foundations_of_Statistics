
wr <- WorldRecords

table(wr$Event)

wr[wr$Event=='Mens 100m' & wr$Athlete=='Usain Bolt',]["Year"]

wr[wr$Event=='Womens Mile' & wr$Record <= 260,][c('Athlete', 'Year')]



#Primary Research Question
#How has the men’s shotput world record changed over time?  
#What about the women’s world record?

#Subset the data
menshot <- wr[wr$Event=='Mens Shotput',]
womenshot <- wr[wr$Event=='Womens Shotput',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)


  