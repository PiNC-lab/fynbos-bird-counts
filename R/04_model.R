source("R/01_load_data.R")

# Does abundance differ between restored and unrestored sites?
m_glm <- glm(count ~ treatment, family = poisson, data = counts)
summary(m_glm)
