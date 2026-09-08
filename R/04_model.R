source("R/01_load_data.R")

# Does abundance differ between restored and unrestored sites?
# Sites are visited repeatedly, so allow for differences between sites
m_glmer <- lme4::glmer(count ~ treatment + (1 | site), family = poisson, data = counts)
summary(m_glmer)
