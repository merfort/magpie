*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de


parameter fm_tau1995(i) Agricultural land use intensity tau in 1995 (1)
/
$ondelim
$include "./modules/13_tc/input/fm_tau1995.cs4"
$offdelim
/;

parameter f13_tcguess(i) Guess for initial annual TC rates (1)
/
$ondelim
$include "./modules/13_tc/input/f13_tcguess.cs4"
$offdelim
/;

$setglobal c13_tccost  medium

table f13_tc_factor(t_all,scen13) Regression factor (USD05PPP per ha)
$ondelim
$include "./modules/13_tc/input/f13_tc_factor.cs3"
$offdelim
;

table f13_tc_exponent(t_all,scen13) Regression exponent (1)
$ondelim
$include "./modules/13_tc/input/f13_tc_exponent.cs3"
$offdelim
;

table f13_tau_historical(t_all,i) historical tau scenario (1)
$ondelim
$include "./modules/13_tc/input/f13_tau_historical.csv"
$offdelim
;

scalars
 s13_max_TC_per_gdp fraction of gdp that can be spent at maximum for technological change (1) / 0 /
 s13_max_TCA_per_gdp fraction of gdp that can be spent at maximum for annuity technological change costs (1) / 0 /
;