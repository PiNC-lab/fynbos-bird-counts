library(ggplot2)
source("R/02_summarise.R")

p <- ggplot(site_means, aes(x = site, y = count, fill = treatment)) +
  geom_col()

p
