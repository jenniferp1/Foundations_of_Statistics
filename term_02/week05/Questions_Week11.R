# Question 1
# Do low-budget movies make a different percentage of their profits 
# domestically than movies with medium- or high-budgets?  

# budget less than $100 Million are considered "low-budget"
# budget of $100 million up to but not including 150 Million 
#   are considered "medium-budget"
# budget of $150 million or more are "high-budget."   

film$Bud_Bracket[film$Budget<100.00000] <- "low-budget"
film$Bud_Bracket[film$Budget>=100.00000 & film$Budget<150.00000] <- "medium-budget"
film$Bud_Bracket[film$Budget>=150.00000] <- "high-budget"

table(film$Bud_Bracket)

aggregate(Pct.Dom~Bud_Bracket,film,mean)

boxplot(film$Pct.Dom~film$Bud_Bracket)

modelbud <- aov(film$Pct.Dom~film$Bud_Bracket)
summary(modelbud)

TukeyHSD(modelbud)


# Question 2

# SSB/k-1 = MSB
# SST -SSB = SSW
# SSW/N-k = MSW
# F = MSB/MSW

SSB <- 2387.7
SST <- 5949.1
SSW <- SST-SSB
MSB <- SSB/(3-1)
MSW <- SSW/42
Fstat <- MSB/MSW 

qf(.95,df1=2,df2=42)

# Question 3

N <- 18
k <- 3


sec1 <- c(8,4,6,8,6,4)
sec2 <- c(3,7,0,2,7,5)
sec3 <- c(1,2,7,6,5,0)

X_bar <- sum(sec1)+sum(sec2)+sum(sec3)
X_bar <- X_bar/N

SST <- sum((sec1-X_bar)^2+(sec2-X_bar)^2+(sec3-X_bar)^2)

SSB <- 6*(mean(sec1)-X_bar)^2+6*(mean(sec2)-X_bar)^2+6*(mean(sec3)-X_bar)^2

SSW <- SST-SSB

MSB <- SSB/(k-1)
MSW <- SSW/(N-k)

Fstat <- MSB/MSW 
qf(.95,df1=2,df2=15)


# Question 4

k <- 3
2147-782

N <- 34 + k
N
SSW <- 1365
MSW <- SSW/(N-k)
MSW
MSB <- 782/(k-1)
MSB
Fstat <- MSB/MSW 
Fstat
qf(.95,df1=2,df2=34)
.05/3
