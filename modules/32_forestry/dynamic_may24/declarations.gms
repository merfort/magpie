*** |  (C) 2008-2025 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de
scalars
 s32_shift                                          Number of 5-year age-classes corresponding to current time step length (1)
 s32_establishment_dynamic                          If plantations should be dynamic (including establishment and harvest decsions)
 s32_establishment_static                           Static plantations with no establishmnet no harvest no regrowth
;

parameters
 p32_aff_pol(t,j)                                   NDC forest stock (mio. ha)
 p32_aff_pol_timestep(t,j)                          NDC afforestation per time step (mio. ha)
 p32_aff_pot(t,j)                                   Potential afforestation area (mio. ha)
 p32_max_aff_area_glo(t)                            Remaining afforestation area wrt to the maximum exogenous target over time (mio. ha)
 p32_max_aff_area_reg(t,i)                          Remaining regional afforestation area wrt to the maximum exogenous target over time (mio. ha)
 p32_carbon_density_ac(t,j,type32,ac,ag_pools)      Carbon density for ac and ag_pools (tC per ha)
 p32_carbon_density_ac_forestry(t_all,j,ac)         Above ground carbon density for age classes and carbon pools (tC per ha)
 p32_carbon_density_ac_marg(t_all,j,ac)             Marginal above ground carbon density for age classes and carbon pools (tC per ha)
 p32_land(t,j,type32,ac)                            Forestry land pools before optimization (mio. ha)
 pc32_land(j,type32,ac)                             Forestry land pools in current time step (mio. ha)
 p32_yield_forestry_future(t,j)                     Cellular timber yield expected in the future (m3 per ha per year)
 p32_IGR(t_all,j,ac)                                Instantaneous growth rate or periodic annual increment of forest growth (1)
 p32_rot_flg(t_all,j,ac)                            Identifier flag when calculating rotation length (1)
 p32_rotation_regional(t_all,i)                     Regional average rotation length of plantations translated to age class equivalent for future (1)
 p32_rot_length_ac_eqivalent(t_all,j)               Cellular rotation length of plantations translated to age class equivalent for future (1)
 p32_rotation_cellular_estb(t_all,j)                Establishment rotation length translated to age classes on cellular level (1)
 p32_rotation_cellular_harvesting(t_all,j)          Harvesting rotation length of plantations translated to age class equivalent for future (1)
 p32_cdr_ac(t,j,ac)                                 Non-cumulative CDR from afforestation plantations for each age-class depending on planning horizon (tC per ha)
 p32_rotation_offset                                Offset calc in age class equivalents (1)
 p32_land_start_ac(j,type32,ac)                     Saving first value of starting land (mio. ha)
 p32_time(ac)                                       Time as a function of age-classes (yr)
 p32_discount_factor(t_all,j,ac)                    Discount factor for each age class (1)
 p32_net_present_value(t_all,j,ac)                  Net present value for a representative 1ha land of plantations (mio. USD)
 p32_stand_value(t_all,j,ac)                        Stand value based on given prices (mio. USD)
 p32_investment_returns_lost(t_all,j,ac)            Present value of investment returns lost by not harvesting now and beginning a new series of rotations on the land (mio. USD)
 p32_land_rent_weighted(t_all,j,ac)                 Land rent weighted by the value of the trees at harvest age-class (mio. USD)
 p32_rot_flg_faustmann(t_all,j,ac)                  Identifier flag when calculating faustmann rotation length (1)
 p32_rot_length_faustmann(t_all,j)                  Cellular Faustmann rotation length of plantations translated to age class equivalent (1)
 p32_ncells(i)                                      Number of cells in each region (1)
 p32_aff_bgp(j,ac)                                  Biophysical impact of afforestation (tCeq per ha)
 p32_tcre_glo(j)                                    Global mean Transient Climate Response to cumulative Emissions (degree C per tC per ha)
 p32_avg_increment(t_all,j,ac)                      Mean annual increment (tC per ha per year)
 p32_bii_coeff(type32,bii_class_secd,potnatveg)     bii coeff (1)
 p32_disturbance_loss_ftype32(t,j,type32,ac)        Loss due to disturbances in all plantation type forests (mio. ha)
 pcm_land_forestry(j,type32)                        Forestry land pools (mio. ha)
 pc32_prod_forestry_ini(i)                          Initial procution from timber plantations (mio. tDM per yr)
 pc32_plant_contr_ini(i)                            Inital share of roundwood production coming from timber plantations (percent)
 i32_plant_contr_growth_fader(t_all)                Fader for growth rate of timber plantation share (percent)
 p32_plant_contr(t,i)                               Share of roundwood production coming from timber plantations (percent)
 p32_forestry_product_dist(t,i,kforestry)           Distribution of wood products (1)
 p32_future_to_current_demand_ratio(t,i)            Ratio of future and current timber demand (1)
 p32_demand_forestry_future(t,i,kforestry)          Future forestry demand in current time step (tDM per yr)
 p32_est_cost(type32)                               Establishment cost (USD17MER per ha)
 i32_recurring_cost(type32)                         Recurring costs (USD17MER per ha)
 p32_plantedforest(i)                               Planted forest (mio. ha)
;

positive variables
 vm_cost_fore(i)                                    Forestry costs (Mio USD)
 v32_cost_hvarea(i)                                 Cost of harvesting timber from forests (mio. USD17MER per yr)
 v32_land(j,type32,ac)                              Forestry land pools (mio. ha)
 v32_land_missing(j)                                Technical area balance term for timber plantation establishment (mio. ha)
 vm_landdiff_forestry                               Aggregated difference in forestry land compared to previous timestep (mio. ha)
 v32_cost_recur(i)                                  Recurring forest management costs (USD17MER per ha)
 v32_land_expansion(j,type32)                       Forestry land expansion (mio. ha)
 v32_land_reduction(j,type32,ac)                    Forestry land reduction (mio. ha)
 v32_cost_establishment(i)                          Cost of establishment calculated at the current time step (mio. USD)
 v32_hvarea_forestry(j,ac)                          Harvested area from timber plantations (mio. ha)
 vm_prod_forestry(j,kforestry)                      Production of woody biomass from commercial plantations (mio. tDM per yr)
 vm_landexpansion_forestry(j,type32)                Forestry land expansion (mio. ha)
 vm_landreduction_forestry(j,type32)                Forestry land reduction (mio. ha)
 vm_land_forestry(j,type32)                         Forestry land pools (mio. ha)
 v32_prod_forestry_future(i)                        Future expected production of woody biomass from commercial plantations (mio. tDM per yr)
 v32_land_replant(j)                                Harvested and replanted area in timber plantations (mio. ha)
 v32_ndc_area_missing(j)                            Technical variable reflecting missing area towards the NPI NDC re-afforestation target (mio. ha)
;

variables
 vm_cdr_aff(j,ac,aff_effect)                        Expected bgc (CDR) and local bph effects of afforestation depending on planning horizon (mio. tC)
;

equations
 q32_cost_total(i)                                  Total forestry costs constraint (mio. USD)
 q32_land(j)                                        Land constraint (mio. ha)
 q32_land_type32(j,type32)                          Land constraint (mio. ha)
 q32_cdr_aff(j,ac)                                  Calculation of CDR from afforestation (mio. tC)
 q32_carbon(j,ag_pools,stockType)                   Forestry carbon stock calculation (mio. tC)
 q32_land_diff                                      Aggregated difference in forestry land compared to previous timestep (mio. ha)
 q32_max_aff                                        Maximum total global afforestation (mio. ha)
 q32_max_aff_reg(i)                                 Maximum total regional afforestation (mio. ha)
 q32_aff_pol(j)                                     Afforestation policy constraint (mio. ha)
 q32_ndc_aff_limit(j)                               Constraint for avoiding that NPI NDC re-afforestation happens at the cost of forests and other natural vegetation (mio. ha)
 q32_aff_est(j)                                     Afforestation constraint for establishment age classes (mio. ha)
 q32_hvarea_forestry(j,ac)                          Plantations area harvest (mio. ha)
 q32_cost_recur(i)                                  Recurruing costs (mio. USD)
 q32_prod_forestry_future(i)                       Future expected production of woody biomass from commercial plantations (mio. tDM per yr)
 q32_establishment_demand(i)                       Future expected production of woody biomass from commercial plantations (mio. tDM per yr)
 q32_establishment_hvarea(j)                       Establishment in current time step for future demand (mio. ha)
 q32_establishment_fixed(j)                         Establishment in current time step for future demand (mio. ha)
 q32_land_expansion(j,type32)                       Land expansion (mio. ha)
 q32_land_reduction(j,type32,ac)                    Land contraction (mio. ha)
 q32_cost_establishment(i)                          Present value of cost of establishment (mio. USD)
 q32_bgp_aff(j,ac)                                  Biophysical afforestation calculation (mio. tCeq)
 q32_forestry_est(j,type32,ac)                      Distribution of forestry establishment over ac_est (mio. ha)
 q32_cost_hvarea(i)                                Cost of harvesting timber from forests (mio. USD17MER per yr)
 q32_prod_forestry(j)                              Production of woody biomass from commercial plantations (mio. tDM per yr)
 q32_bv_aff(j,potnatveg)                           Biodiversity value for aff forestry land (Mha)
 q32_bv_ndc(j,potnatveg)                           Biodiversity value for ndc forestry land (Mha)
 q32_bv_plant(j,potnatveg)                         Biodiversity value for plantations (Mha)
 q32_land_expansion_forestry(j,type32)             Forestry land expansion (mio. ha)
 q32_land_reduction_forestry(j,type32)             Forestry land reduction (mio. ha)
 q32_land_replant(j)                               Harvested and replanted area in timber plantations (mio. ha)
 q32_co2p_aff_limit(j)                             Annual upper limit for re-afforestation (mio. ha per yr)
;


*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_fore(t,i,type)                        Forestry costs (Mio USD)
 ov32_cost_hvarea(t,i,type)                    Cost of harvesting timber from forests (mio. USD17MER per yr)
 ov32_land(t,j,type32,ac,type)                 Forestry land pools (mio. ha)
 ov32_land_missing(t,j,type)                   Technical area balance term for timber plantation establishment (mio. ha)
 ov_landdiff_forestry(t,type)                  Aggregated difference in forestry land compared to previous timestep (mio. ha)
 ov32_cost_recur(t,i,type)                     Recurring forest management costs (USD17MER per ha)
 ov32_land_expansion(t,j,type32,type)          Forestry land expansion (mio. ha)
 ov32_land_reduction(t,j,type32,ac,type)       Forestry land reduction (mio. ha)
 ov32_cost_establishment(t,i,type)             Cost of establishment calculated at the current time step (mio. USD)
 ov32_hvarea_forestry(t,j,ac,type)             Harvested area from timber plantations (mio. ha)
 ov_prod_forestry(t,j,kforestry,type)          Production of woody biomass from commercial plantations (mio. tDM per yr)
 ov_landexpansion_forestry(t,j,type32,type)    Forestry land expansion (mio. ha)
 ov_landreduction_forestry(t,j,type32,type)    Forestry land reduction (mio. ha)
 ov_land_forestry(t,j,type32,type)             Forestry land pools (mio. ha)
 ov32_prod_forestry_future(t,i,type)           Future expected production of woody biomass from commercial plantations (mio. tDM per yr)
 ov32_land_replant(t,j,type)                   Harvested and replanted area in timber plantations (mio. ha)
 ov32_ndc_area_missing(t,j,type)               Technical variable reflecting missing area towards the NPI NDC re-afforestation target (mio. ha)
 ov_cdr_aff(t,j,ac,aff_effect,type)            Expected bgc (CDR) and local bph effects of afforestation depending on planning horizon (mio. tC)
 oq32_cost_total(t,i,type)                     Total forestry costs constraint (mio. USD)
 oq32_land(t,j,type)                           Land constraint (mio. ha)
 oq32_land_type32(t,j,type32,type)             Land constraint (mio. ha)
 oq32_cdr_aff(t,j,ac,type)                     Calculation of CDR from afforestation (mio. tC)
 oq32_carbon(t,j,ag_pools,stockType,type)      Forestry carbon stock calculation (mio. tC)
 oq32_land_diff(t,type)                        Aggregated difference in forestry land compared to previous timestep (mio. ha)
 oq32_max_aff(t,type)                          Maximum total global afforestation (mio. ha)
 oq32_max_aff_reg(t,i,type)                    Maximum total regional afforestation (mio. ha)
 oq32_aff_pol(t,j,type)                        Afforestation policy constraint (mio. ha)
 oq32_ndc_aff_limit(t,j,type)                  Constraint for avoiding that NPI NDC re-afforestation happens at the cost of forests and other natural vegetation (mio. ha)
 oq32_aff_est(t,j,type)                        Afforestation constraint for establishment age classes (mio. ha)
 oq32_hvarea_forestry(t,j,ac,type)             Plantations area harvest (mio. ha)
 oq32_cost_recur(t,i,type)                     Recurruing costs (mio. USD)
 oq32_prod_forestry_future(t,i,type)           Future expected production of woody biomass from commercial plantations (mio. tDM per yr)
 oq32_establishment_demand(t,i,type)           Future expected production of woody biomass from commercial plantations (mio. tDM per yr)
 oq32_establishment_hvarea(t,j,type)           Establishment in current time step for future demand (mio. ha)
 oq32_establishment_fixed(t,j,type)            Establishment in current time step for future demand (mio. ha)
 oq32_land_expansion(t,j,type32,type)          Land expansion (mio. ha)
 oq32_land_reduction(t,j,type32,ac,type)       Land contraction (mio. ha)
 oq32_cost_establishment(t,i,type)             Present value of cost of establishment (mio. USD)
 oq32_bgp_aff(t,j,ac,type)                     Biophysical afforestation calculation (mio. tCeq)
 oq32_forestry_est(t,j,type32,ac,type)         Distribution of forestry establishment over ac_est (mio. ha)
 oq32_cost_hvarea(t,i,type)                    Cost of harvesting timber from forests (mio. USD17MER per yr)
 oq32_prod_forestry(t,j,type)                  Production of woody biomass from commercial plantations (mio. tDM per yr)
 oq32_bv_aff(t,j,potnatveg,type)               Biodiversity value for aff forestry land (Mha)
 oq32_bv_ndc(t,j,potnatveg,type)               Biodiversity value for ndc forestry land (Mha)
 oq32_bv_plant(t,j,potnatveg,type)             Biodiversity value for plantations (Mha)
 oq32_land_expansion_forestry(t,j,type32,type) Forestry land expansion (mio. ha)
 oq32_land_reduction_forestry(t,j,type32,type) Forestry land reduction (mio. ha)
 oq32_land_replant(t,j,type)                   Harvested and replanted area in timber plantations (mio. ha)
 oq32_co2p_aff_limit(t,j,type)                 Annual upper limit for re-afforestation (mio. ha per yr)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
