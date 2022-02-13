setwd("~/ut/modules/MechaCar_Statistical_Analysis")
mechacar_mpg <- read_csv('MechaCar_mpg.csv') #import dataset
library(jsonlite)
library(tidyverse)
?lm
lm_mechacar_mpg <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) #create linear model
lm_mechacar_mpg
summary_lm_mechacar_mpg <- summary(lm_mechacar_mpg)
summary_lm_mechacar_mpg
suspension_coil_df <- read_csv('Suspension_Coil.csv') #import dataset
total_summary <- suspension_coil_df %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table
total_summary
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table
lot_summary