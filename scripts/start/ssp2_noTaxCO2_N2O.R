# |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de


######################################
#### Script to start a MAgPIE run ####
######################################

library(lucode)
library(magclass)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

#start MAgPIE run
source("config/default.cfg")

cfg$force_download <- TRUE

cfg$results_folder <- "output/:title::date:"

cfg$title <- "R2M41_SSP2_biodem-Budg600_polprice-Budg600_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-Budg600"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-Budg600"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-zero_polprice-Budg600_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NDC"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-Budg600"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "zero"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-Budg950_polprice-Budg950_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-Budg950"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-Budg950"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-zero_polprice-Budg950_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NDC"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-Budg950"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "zero"
start_run(cfg,codeCheck=FALSE)

#no CO2 tax, 1300 bioenergy, rest tax 1300
cfg$title <- "R2M41_SSP2_biodem-Budg1300_polprice-Budg1300_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-Budg1300"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-Budg1300"
start_run(cfg,codeCheck=FALSE)

#no CO2 tax, no bioenergy, rest tax 1300
cfg$title <- "R2M41_SSP2_biodem-zero_polprice-Budg1300_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NDC"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-Budg1300"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "zero"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-NDC_polprice-NDC_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-NDC"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-NDC"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-zero_polprice-NDC_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NDC"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-NDC"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "zero"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-NPi_polprice-NPi_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-NPi"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-NPi"
start_run(cfg,codeCheck=FALSE)

cfg$title <- "R2M41_SSP2_biodem-zero_polprice-NPi_noTaxCO2_N2O"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_pollutant_prices          <- "R2M41-SSP2-NPi"
cfg$gms$c56_turn_off_pollutant_prices <- "CO2_N2O"
cfg$gms$c60_2ndgen_biodem             <- "zero"
start_run(cfg,codeCheck=FALSE)


