
#Primary Research Question
#How have the world record times for the men's and the women’s 
#mile event changed over the years?


wr <- WorldRecords

#Part 1

table(wr$Event)
mensmile <- wr[wr$Event=='Mens Mile',]
womensmile <- wr[wr$Event=='Womens Mile',]

plot(womensmile$Year,womensmile$Record)
plot(mensmile$Year,mensmile$Record)

linFit(mensmile$Year,mensmile$Record)
linFit(womensmile$Year,womensmile$Record)


#Question 1

menspole <- wr[wr$Event=='Mens Polevault',]
menspole <- menspole[menspole$Year>=1970,]
menspole$Year

menspole[,c('Year','Record')]

linFit(menspole$Year,menspole$Record)

#Question 2

C=c(140,280,420,560)
h=c(0,2,4,6)

linFit(h,C)

4*175

#cost = 140 + 70*hour
# if band earned $700

(700-140)/70

#Question 3

#Predicted GPA = 2.84 + .04*Dollars

2.84+0.04*9.70

3.71-2.84

2.84 + 0.04*14.5
2.91-3.42
