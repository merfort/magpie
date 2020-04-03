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

#no tax no bioenergy
cfg$title <- "R2M41_SSP2_biodem-zero_polprice-zero_allTaxOff"
cfg <- setScenario(cfg,c("SSP2","NDC"))
cfg$gms$c56_turn_off_pollutant_prices <- "all"
cfg$gms$c60_2ndgen_biodem             <- "zero"
start_run(cfg,codeCheck=FALSE)

#no tax, Budg600 bioenergy
cfg$title <- "R2M41_SSP2_biodem-Budg600_polprice-zero_allTaxOff"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_turn_off_pollutant_prices <- "all"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-Budg600"
start_run(cfg,codeCheck=FALSE)

#no tax, Budg950 bioenergy
cfg$title <- "R2M41_SSP2_biodem-Budg950_polprice-zero_allTaxOff"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_turn_off_pollutant_prices <- "all"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-Budg950"
start_run(cfg,codeCheck=FALSE)

#no tax, Budg1300 bioenergy
cfg$title <- "R2M41_SSP2_biodem-Budg1300_polprice-zero_allTaxOff"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_turn_off_pollutant_prices <- "all"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-Budg1300"
start_run(cfg,codeCheck=FALSE)

# #no tax, NDC bioenergy
cfg$title <- "R2M41_SSP2_biodem-NDC_polprice-zero_allTaxOff"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_turn_off_pollutant_prices <- "all"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-NDC"
start_run(cfg,codeCheck=FALSE)

#no tax, NPi bioenergy
cfg$title <- "R2M41_SSP2_biodem-NPi_polprice-zero_allTaxOff"
cfg <- setScenario(cfg,c("SSP2","NPI"))
cfg$gms$c56_turn_off_pollutant_prices <- "all"
cfg$gms$c60_2ndgen_biodem             <- "R2M41-SSP2-NPi"
start_run(cfg,codeCheck=FALSE)


