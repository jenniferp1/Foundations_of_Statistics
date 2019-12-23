# 
# The flavor we'll be examining today is the One-way ANOVA.
# The phrase One-way means that we have ONE factor - 
# a categorical variable -
# impacting the means of a quantitative variable.
# To formalize, if we have one categorical grouping
# variable (an independent variable) and one quantitative or 
# numerical variable
# (as our dependent measure), and we wish to compare the means of 
# said groups,
# and the number of those groups is greater than two,
# we turn to the one-way ANOVA.
# 

# summary(aov(IR_Change ~ Group, data=exer))

#Post-hoc t-test ---
# The other common post-hoc is the Tukey Honestly Significant Difference
# post-hoc or Tukey HSD.
# This is my preferred post-hoc as it less conservative than the Bonferroni
# when the number of groups is high.

# TukeyHSD(aov(IR_Change ~ Group, data=exer))