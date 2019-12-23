library(data.table)
library

event <- data.table(
  Tissue=2,
  Elbow=86,
  Hand=204,
  No_Cover=89
)

event

chisq.test(event)

#-----

chips <- data.table(
  A=38,
  B=28,
  C=24
)
chips
chisq.test(chips)
pchisq(3.4667,2,lower.tail = FALSE)  #calcuate p-value for computed chi
qchisq(0.1767,2,lower.tail = FALSE)  #calcualte critical chi value for given p-value

qchisq(0.05,2,lower.tail = FALSE) #chi-sq critical value for 0.05

#------

# If you have expected probabilities you can specify those
# Revisiting the event data above, assuming CDC guidelines are followed,
# you asssume tissue+elbow split 70% and hand, no cover split 30%

exp_prob <- c(.35,.35,.15,.15)
chisq.test(event,p=exp_prob)
qchisq(0.05,3,lower.tail = FALSE)

#-----

jurors <- data.table(
  "18-29" = 12,
  "30-49" = 36,
  "50+" = 32
)

jurors
j_tot <- (12+36+32)
j_tot*.20
j_tot*.45
j_tot*.35


exp_prob <- c(.2,.45,.35)
chisq.test(jurors,p=exp_prob)
qchisq(0.05,2,lower.tail = FALSE)

#-----

event2 <- data.table(
  Tissue=c(2,0),
  Elbow=c(61,25),
  Hand=c(155,49),
  No_Cover=c(46,43)
)

event2

sum(event2[1])
sum(event2[2])
sum(event2$Elbow)
sum(event2$Elbow)/(sum(event2[1])+sum(event2[2]))

chisq.test(event2)
qchisq(0.05,3,lower.tail = FALSE)

event3 <- data.table(
  Elbow=c(61,25),
  Hand=c(155,49),
  No_Cover=c(46,43)
)

event3

chisq.test(event3)
qchisq(0.05,3,lower.tail = FALSE)

#-----

fear <- data.table(
  men=c(68,94),
  women=c(109,89)
)

fear

prop.table(fear)
68/( sum(fear$men)+sum(fear$women))
94/( sum(fear$men)+sum(fear$women))
109/( sum(fear$men)+sum(fear$women))
89/( sum(fear$men)+sum(fear$women))


tot_men <- sum(fear$men)
tot_wom <- sum(fear$women)
tot <- tot_men+tot_wom

tot_fear <- sum(fear[1])
tot_nofear <- sum(fear[2])

tot_men*tot_fear/tot
tot_wom*tot_fear/tot
tot_men*tot_nofear/tot
tot_wom*tot_nofear/tot

tot_fear/tot
68/tot_men
109/tot_wom

claim <- c(tot_fear/tot,tot_nofear/tot)
chisq.test(fear,p=claim)$expected  #output should match ratios above
