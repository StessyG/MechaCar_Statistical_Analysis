setwd("~/ut/modules/MechaCar_Statistical_Analysis")
mechacar_mpg <- read_csv('MechaCar_mpg.csv') #import dataset
library(jsonlite)
library(tidyverse)
?lm
lm_mechacar_mpg <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) #create linear model
lm_mechacar_mpg
summary_lm_mechacar_mpg <- summary(lm_mechacar_mpg)
summary_lm_mechacar_mpg
