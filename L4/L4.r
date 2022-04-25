# Name: Anish Sarkar
# Reg no: 19BCE1278
rm(list = ls())
combined_groups <- read.csv('/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L4/One_way_Anova_Football.csv')
summary(combined_groups)
boxplot(combined_groups, ylab='Value', xlab='Teams', col='green')
stacked_groups <- stack(combined_groups)
stacked_groups
names(stacked_groups) <- c('Values', 'Teams')
stacked_groups
anova_results <- aov(Values~Teams, data=stacked_groups)
summary(anova_results)
tk <- TukeyHSD(anova_results)
tk
plot(tk, col='blue')
