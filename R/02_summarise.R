source("R/01_load_data.R")

# Mean count per species record at each site
site_means <- aggregate(count ~ site + treatment, data = counts, FUN = mean)

# Number of species recorded at each site
richness <- aggregate(species ~ site + treatment, data = counts,
                      FUN = function(x) length(unique(x)))
names(richness)[names(richness) == "species"] <- "richness"
