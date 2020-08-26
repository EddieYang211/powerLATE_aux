# code for powerLATE examples (https://htmlpreview.github.io/?https://github.com/EddieYang211/powerLATE_aux/blob/master/powerLATE_Examples.html)

# install.packages("powerLATE")
# or install the latest version from GitHub:
# install.packages("devtools")
# devtools::install_github("kbansak/powerLATE")

library(powerLATE)

# 1. Examples using powerLATE()
# 1.1 Recovering power
results <- powerLATE(pi = 0.5, N = 3000, kappa = 0.25)
results$input.parameter
results$output.parameter

powerLATE(pZ = 0.25, pi = c(0.3,0.4,0.5,0.6,0.7), N = 3000, kappa = 0.25)

powerLATE(pi = c(0.3,0.4,0.5,0.6,0.7), N = 3000, kappa = 0.25, assume.ord.means = TRUE)

powerLATE(pi = 0.5, N = 3000, effect.size = FALSE, tau = 300, omega = 1500)

# 1.2 Recovering required sample size
powerLATE(pi = c(0.5,0.6,0.7,0.8), power = 0.8, assume.ord.means = TRUE,
          effect.size = FALSE, tau = 25, omega = 125)

# 1.3 Recovering minimum detectable effect size
powerLATE(pi = 0.6, N = c(1000,1500,2000,2500,3000), power = 0.8)

# 1.4 Recovering minimum detectable effect (absolute)
powerLATE(pZ = 0.4, pi = 0.6, N = c(1000,1500,2000,2500,3000),
          power = 0.8, assume.ord.means = TRUE, 
          effect.size = FALSE, omega = 50)

# 2. Examples using powerLATE.cov()
powerLATE.cov(pZ = 0.4, pi = 0.6, N = c(1000,1500,2000,2500,3000),
              power = 0.8, assume.ord.means = TRUE, 
              effect.size = FALSE, omega = 50, r2dw = 0.15, r2yw = 0.10)