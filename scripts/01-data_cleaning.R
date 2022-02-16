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

#### Workspace setup ####
# Use R Projects, not setwd().
library(tidyverse)
library(opendatatoronto)
library(knitr)
library(lubridate)
library(tidyr)
library(janitor)
library(dplyr)

brfss_2008 <- read_xpt(
  here::here("inputs/data/CDBRFS08.XPT"),
  skip = 0,
  n_max = Inf,
  .name_repair = "unique"
)

brfss_2008 <- clean_names(brfss_2008)
