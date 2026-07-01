# Read and tidy the point count data
counts <- read.csv("data/bird_counts.csv")

counts$site <- factor(counts$site)
counts$treatment <- factor(counts$treatment, levels = c("unrestored", "restored"))
