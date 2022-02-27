<h1 align="center"> Analyzing Mammography Recommendations </h1>
<h1 align="center">
  <img width="500" height="300" src="opening.png">
</h1>
<h2 align="center"> Authors </h2>
<center>

Sidharth Gupta
Sevnur Kulak
Dongqi Bi
</center>


<h2 align="center"> Abstract </h2>
<p align="justify">
The existing recommendation to receive a mammogram in the US is the age of 40, which might be influential as the raw data shows since the rate of mammography screening past that age is significantly increased. In their paper, Einav et al. found that breast cancer mortality does not increase significantly past the age of 40, suggesting that this recommendation should be reworked. In this paper, we replicate the study done by Einav et al. and extend it by visualizing mammography screening rates by age for different states in the US as well as visualizing the screening rates by age for patients with and without health insurance. Our extensions identify which states and insurance groups are most influenced by the original recommendation and would benefit most by a reworked version, suggesting priority can be assigned to the groups we find for reworking mammography recommendations.
</p>

To run the code which performs our analysis, make sure you execute the following two steps first:
### 1. Installing the packages

Install the following packages in your R environment:

bookdown
gridExtra
hash
hash
dplyr
forcats
knitr
janitor
tidyverse
tidyr
wrapr
haven
ggplot2
gridExtra
### 2. Downloading the data

To download the public BRFSS dataset, visit https://www.cdc.gov/brfss/index.html.

To download the processed NBER dataset from Einav et al's study, visit: https://www.nber.org/system/files/working_papers/w28648/w28648.pdf
### Running the Code

The algorithms and data analysis study is impemented in outputs/paper/mammography_repl.Rmd. You can run this file using RStudio.

### More Details 
View our paper at outputs/paper/mammography_repl.pdf for more information. 
