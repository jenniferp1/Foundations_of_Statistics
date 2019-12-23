library(SDSFoundations)
film <- FilmData


# Primary Research Questions
# 
# 1. Are some studios more successful in keeping their films in the theaters longer?
# 2. Do some studios earn a greater percentage of their earnings domestically than others?


table(film$Studio)

aggregate(Days~Studio,film,mean)

boxplot(film$Days~film$Studio)

modelbud <- aov(film$Days~film$Studio)
summary(modelbud)

TukeyHSD(modelbud)


# -----

aggregate(Pct.Dom~Studio,film,mean)

modelbud <- aov(film$Pct.Dom~film$Studio)
summary(modelbud)

TukeyHSD(modelbud)

boxplot(film$Pct.Dom~film$Studio)
aggregate(Pct.Dom~Studio,film,sd)
