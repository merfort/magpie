*** |  (C) 2008-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

pc13_tech_cost_past(i) = p13_tech_cost_past(t,i);

pc13_land(i) = sum(cell(i,j),pcm_land(j,"crop"));

if (sum(sameas(t_past,t),1) = 1,
	vm_tau.lo(i) =    f13_tau_historical(t,i);
else
	vm_tau.lo(i) =    pc13_tau(i);
);

	vm_tau.up(i) =  2*pc13_tau(i);

* educated guess for vm_tau.l:
	vm_tau.l(i) = pc13_tau(i)*(1+pc13_tcguess(i))**m_yeardiff(t);

	vm_tech_cost.up(i) = 10e9;

* limit tech costs to fraction of gdp starting in 2025
if(s13_max_TC_per_gdp > 0 AND (NOT sameas(t, "y1995")) AND (NOT sameas(t, "y2000")) AND (NOT sameas(t, "y2005")) AND (NOT sameas(t, "y2010")) AND (NOT sameas(t, "y2015")) AND (NOT sameas(t, "y2020")),
    vm_tech_cost.up(i) = i09_gdp_mer(t,i) * s13_max_TC_per_gdp;
);

* limit annuity tech costs to fraction of gdp
if(s13_max_TCA_per_gdp > 0,
    v13_tech_cost_annuity.up(i) = i09_gdp_mer(t,i) * s13_max_TCA_per_gdp;
);
