*** |  (C) 2008-2024 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

pc13_land(i,"pastr") = sum(cell(i,j),pcm_land(j,"past"));
pc13_land(i,"crop") = sum(cell(i,j),pcm_land(j,"crop"));

if (smin((h,tautype), f13_tau_scenario(t,h,tautype)) <= 0,
  abort "tau value of 0 detected in at least one region!";
);

*** * Initialize tau to set the level (needed below) and lower bound
vm_tau.fx(h,tautype) = f13_tau_scenario(t,h,tautype);

*** * Gradually increase the relative deviation from the given tau path for the
*** * upper bound
*** if (sameas(t,"y1995"), vm_tau.up(h,tautype) = 1.002 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2000"), vm_tau.up(h,tautype) = 1.004 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2010"), vm_tau.up(h,tautype) = 1.008 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2005"), vm_tau.up(h,tautype) = 1.006 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2015"), vm_tau.up(h,tautype) = 1.010 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2020"), vm_tau.up(h,tautype) = 1.012 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2025"), vm_tau.up(h,tautype) = 1.014 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2030"), vm_tau.up(h,tautype) = 1.016 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2035"), vm_tau.up(h,tautype) = 1.018 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2040"), vm_tau.up(h,tautype) = 1.020 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2045"), vm_tau.up(h,tautype) = 1.022 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2055"), vm_tau.up(h,tautype) = 1.024 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2060"), vm_tau.up(h,tautype) = 1.026 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2070"), vm_tau.up(h,tautype) = 1.028 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2080"), vm_tau.up(h,tautype) = 1.030 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2090"), vm_tau.up(h,tautype) = 1.032 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2100"), vm_tau.up(h,tautype) = 1.034 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2110"), vm_tau.up(h,tautype) = 1.036 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2130"), vm_tau.up(h,tautype) = 1.038 * f13_tau_scenario(t,h,tautype); );
*** if (sameas(t,"y2150"), vm_tau.up(h,tautype) = 1.040 * f13_tau_scenario(t,h,tautype); );


* The costs are shifted over 15 years (exponent 15) to reflect the average
* time it takes investments in tc to pay off.

p13_cost_tc(i,tautype) = pc13_land(i,tautype) * i13_tc_factor(t)
                     * sum(supreg(h,i), vm_tau.l(h,tautype))**i13_tc_exponent(t)
                     * (1+pm_interest(t,i))**15;

p13_tech_cost(i,tautype) = (sum(supreg(h,i),vm_tau.l(h,tautype)/pcm_tau(h,tautype))-1) * p13_cost_tc(i,tautype)
                               * pm_interest(t,i)/(1+pm_interest(t,i));

vm_tech_cost.fx(i) = sum(tautype, p13_tech_cost(i,tautype));
