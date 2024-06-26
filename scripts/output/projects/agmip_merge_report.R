# |  (C) 2008-2024 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# --------------------------------------------------------------
# description: merge agmip-reports of single runs into one project-report
# comparison script: TRUE
# ---------------------------------------------------------------

library(lucode2)
library(magclass)
library(quitte)
library(madrat)
library(iamc)
library(gms)

options(error=function()traceback(2))

############################# BASIC CONFIGURATION #############################
if(!exists("source_include")) {
  outputdir <- file.path("output/",list.dirs("output/", full.names = FALSE, recursive = FALSE))
  #Define arguments that can be read from command line
  readArgs("outputdir")
}
###############################################################################
cat("\nStarting output generation\n")

missing <- NULL

if (file.exists("output/agmip_report_full.csv")) {
  file.rename("output/agmip_report_full.csv", "output/agmip_report_full.bak")
}

for (i in 1:length(outputdir)) {
  print(paste("Processing", outputdir[i]))
  #gdx file
  rep <- file.path(outputdir[i],"agmip_report.mif")
  if (file.exists(rep)) {
    #get scenario name
    cfg <- gms::loadConfig(file.path(outputdir[i], "config.yml"))
    scen <- cfg$title
    #Remove prefix starting with "V", like "V2"
    scen_parts <- unlist(strsplit(scen, "_"))
    remove     <- grep("V[0-9]", scen_parts)
    if (length(remove) > 0) {
      scen <- paste(scen_parts[-remove], collapse = "_")
    }
    #read-in reporting file
    a <- read.report(rep,as.list = FALSE)
    getNames(a, dim = 1) <- scen
    #add to reporting csv file
    write.report(a, file = "output/agmip_report_full.csv", append = TRUE,
                 ndigit = 4, skipempty = FALSE)
  } else {
    missing <- c(missing, outputdir[i])
  }
}
if (!is.null(missing)) {
  cat("\nList of folders with missing agmip_report.mif\n")
  print(missing)
}

if (file.exists("output/agmip_report_full.csv")) {
  #saveRDS(read.quitte("output/agmip_report_full.csv"),file = "output/agmip_report_full.rds")
  #agmip_report_full <- read.report(file="agmip_report_full.csv")
  write.reportProject(mif = "output/agmip_report_full.csv",
                      mapping = system.file("extdata", mapping = "variablemappingAgMIP.csv", package = "magpie4"),
                      file = "output/agmip_report_subset.csv", format = "AgMIP")
  #write.reportProject(mif="output/agmip_report_full.csv",mapping = "mapping_magpie_agmip.csv", file = "agmip_report_subset.csv",format="AgMIP")
}
