#### Preamble ####
# Purpose: TODO
# Author: TODO
# Data: TODO
# Contact: TODO
# License: MIT
# Pre-requisites: 
# - RStudio, or an equivalent environment to compile and execute .R and .Rmd files.
# - The following libraries are installed:
# -- knitr
# -- lubridate
# -- opendatatoronto
# -- tidyverse
# -- tidyr

brfss_2008_cleaned <- 
  clean_names(brfss_2008) |>
  select(rfmam2y, hadmam, mam502y, age)
