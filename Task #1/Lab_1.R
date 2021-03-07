
library(ggplot2)

setwd("C:/Users/Anna_/Documents/GitHub/VisualizationCourse/Task #1")

d <- read.table("IQGAP_expression.txt", header=TRUE, row.names = 1)

shapiro.test(d[, 1])
shapiro.test(d[, 2])
shapiro.test(d[, 3])

# Check spearman corr

cor.test(d[, "IQGAP1"], d[, "IQGAP2"], method='spearman')
cor.test(d[, "IQGAP1"], d[, "IQGAP3"], method='spearman')
cor.test(d[, "IQGAP2"], d[, "IQGAP3"], method='spearman')


ggplot(d, aes(x = d[, "IQGAP1"], y = d[, "IQGAP2"])) +
  geom_point(color = "blue")

ggplot(d, aes(x = d[, "IQGAP2"], y = d[, "IQGAP3"])) +
  geom_point(color = "red")

ggplot(d, aes(x = d[, "IQGAP1"], y = d[, "IQGAP3"])) +
  geom_point()



## means

wilcox.test(d[, "IQGAP1"], d[, "IQGAP2"])
wilcox.test(d[, "IQGAP2"], d[, "IQGAP3"])
wilcox.test(d[, "IQGAP1"], d[, "IQGAP3"])




