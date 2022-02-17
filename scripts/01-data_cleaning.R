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


# For the BRFSS dataset, the questionnaire data is:
# https://www.cdc.gov/brfss/questionnaires/pdf-ques/2012_BRFSS.pdf
# Use CTRL+F To search for information about mammography columns
# More information about BRFSS is available: https://www.cdc.gov/brfss/annual_data/annual_2012.html
# BRFSS columns are: https://www.cdc.gov/brfss/annual_data/2012/LLCP_VarLayout_12_OneColumn.HTML
brfss_2008 <- read_xpt(
  here::here("inputs/data/CDBRFS08.XPT"),
  skip = 0,
  n_max = Inf,
  .name_repair = "unique"
)

brfss_2008 <- clean_names(brfss_2008)
