library(ggplot2)
library(gridExtra)
table<-read.csv("dataset-2.csv", header = T, sep=",")
head(table)

graph1 <- ggplot(table, aes(x=date, y=distance, colour=Geographic.regions)) + 
  geom_smooth(method = "lm", se=FALSE, color="#6d6d6dff", formula = y ~ x) +
  geom_point(colour = "black", alpha = 1, size = 3.1, show.legend = TRUE) + 
  geom_point(shape = 20, alpha = 1, size = 3, show.legend = TRUE) + 
  theme_bw() +
  xlab("Time (years)") + ylab("Root-to-tip divergence")
graph1
