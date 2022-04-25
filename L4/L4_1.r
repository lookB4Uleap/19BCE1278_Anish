rm(list = ls())
combined_groups <- read.csv('/home/ubuntu/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L5/onewayanova_machine.csv')
summary(combined_groups)
boxplot(combined_groups, ylab='Diameter', xlab='Machine', col='green')
stacked_groups <- stack(combined_groups)
stacked_groups
names(stacked_groups) <- c('Diameter', 'Machines')
stacked_groups
anova_results <- aov(Diameter~Machines, data=stacked_groups)
summary(anova_results)
tk <- TukeyHSD(anova_results)
tk
plot(tk, col='blue')
