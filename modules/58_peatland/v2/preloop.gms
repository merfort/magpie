*** |  (C) 2008-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

vm_emissions_reg.fx(i,"peatland",pollutants) = 0;
vm_emissions_reg.lo(i,"peatland",poll58) = -Inf;
vm_emissions_reg.up(i,"peatland",poll58) = Inf;

p58_mapping_cell_climate(j,clcl58) = sum(clcl_mapping(clcl,clcl58),pm_climate_class(j,clcl));

* Peatland scaling factor: ratio of total peatland area and total land area
p58_scaling_factor(j)$(sum(land, pcm_land(j,land)) > 1e-20) = sum(land58, f58_peatland_area(j,land58)) / sum(land, pcm_land(j,land));

* Initialization of peatland area
pc58_peatland(j,land58) = 0;
