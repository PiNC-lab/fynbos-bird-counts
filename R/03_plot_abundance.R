library(ggplot2)
source("R/02_summarise.R")

p <- ggplot(site_means, aes(x = site, y = count, fill = treatment)) +
  geom_col() +
  scale_fill_manual(values = c(unrestored = "grey60", restored = "grey30")) +
  labs(x = "Site") +
  theme_minimal()

p
