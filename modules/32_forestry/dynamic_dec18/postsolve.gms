p32_land(t,j,type32,ac) = v32_land.l(j,type32,ac);

*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov_cost_fore(t,i,"marginal")                          = vm_cost_fore.m(i);
 ov32_land(t,j,type32,ac,"marginal")                   = v32_land.m(j,type32,ac);
 ov_landdiff_forestry(t,"marginal")                    = vm_landdiff_forestry.m;
 ov_cdr_aff(t,j,co2_forestry,"marginal")               = vm_cdr_aff.m(j,co2_forestry);
 ov32_prod(t,j,kforestry,"marginal")                   = v32_prod.m(j,kforestry);
 ov32_cost_harvest(t,i,"marginal")                     = v32_cost_harvest.m(i);
 ov32_cost_recur(t,i,"marginal")                       = v32_cost_recur.m(i);
 ov32_hvarea_forestry(t,j,kforestry,ac_sub,"marginal") = v32_hvarea_forestry.m(j,kforestry,ac_sub);
 ov32_prod_external(t,i,kforestry,"marginal")          = v32_prod_external.m(i,kforestry);
 ov32_land_expansion(t,j,type32,ac,"marginal")         = v32_land_expansion.m(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"marginal")         = v32_land_reduction.m(j,type32,ac);
 ov32_avail_reuse(t,j,"marginal")                      = v32_avail_reuse.m(j);
 ov32_cost_establishment(t,i,"marginal")               = v32_cost_establishment.m(i);
 ov32_missing_area_future(t,j,"marginal")              = v32_missing_area_future.m(j);
 ov_prod_forestry(t,j,kforestry,"marginal")            = vm_prod_forestry.m(j,kforestry);
 oq32_cost_total(t,i,"marginal")                       = q32_cost_total.m(i);
 oq32_land(t,j,"marginal")                             = q32_land.m(j);
 oq32_cdr_aff(t,j,co2_forestry,"marginal")             = q32_cdr_aff.m(j,co2_forestry);
 oq32_carbon(t,j,c_pools,"marginal")                   = q32_carbon.m(j,c_pools);
 oq32_diff(t,"marginal")                               = q32_diff.m;
 oq32_max_aff(t,"marginal")                            = q32_max_aff.m;
 oq32_aff_pol(t,j,"marginal")                          = q32_aff_pol.m(j);
 oq32_prod_forestry_wood(t,j,"marginal")               = q32_prod_forestry_wood.m(j);
 oq32_prod_forestry_woodfuel(t,j,"marginal")           = q32_prod_forestry_woodfuel.m(j);
 oq32_hvarea_forestry(t,j,ac_sub,"marginal")           = q32_hvarea_forestry.m(j,ac_sub);
 oq32_cost_recur(t,i,"marginal")                       = q32_cost_recur.m(i);
 oq32_cost_harvest(t,i,"marginal")                     = q32_cost_harvest.m(i);
 oq32_production_timber(t,i,"marginal")                = q32_production_timber.m(i);
 oq32_prod_future(t,i,"marginal")                      = q32_prod_future.m(i);
 oq32_land_expansion(t,j,type32,ac,"marginal")         = q32_land_expansion.m(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"marginal")         = q32_land_reduction.m(j,type32,ac);
 oq32_avail_reuse(t,j,"marginal")                      = q32_avail_reuse.m(j);
 oq32_cost_establishment(t,i,"marginal")               = q32_cost_establishment.m(i);
 oq32_hvarea_forestry_min(t,i,"marginal")              = q32_hvarea_forestry_min.m(i);
 ov_cost_fore(t,i,"level")                             = vm_cost_fore.l(i);
 ov32_land(t,j,type32,ac,"level")                      = v32_land.l(j,type32,ac);
 ov_landdiff_forestry(t,"level")                       = vm_landdiff_forestry.l;
 ov_cdr_aff(t,j,co2_forestry,"level")                  = vm_cdr_aff.l(j,co2_forestry);
 ov32_prod(t,j,kforestry,"level")                      = v32_prod.l(j,kforestry);
 ov32_cost_harvest(t,i,"level")                        = v32_cost_harvest.l(i);
 ov32_cost_recur(t,i,"level")                          = v32_cost_recur.l(i);
 ov32_hvarea_forestry(t,j,kforestry,ac_sub,"level")    = v32_hvarea_forestry.l(j,kforestry,ac_sub);
 ov32_prod_external(t,i,kforestry,"level")             = v32_prod_external.l(i,kforestry);
 ov32_land_expansion(t,j,type32,ac,"level")            = v32_land_expansion.l(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"level")            = v32_land_reduction.l(j,type32,ac);
 ov32_avail_reuse(t,j,"level")                         = v32_avail_reuse.l(j);
 ov32_cost_establishment(t,i,"level")                  = v32_cost_establishment.l(i);
 ov32_missing_area_future(t,j,"level")                 = v32_missing_area_future.l(j);
 ov_prod_forestry(t,j,kforestry,"level")               = vm_prod_forestry.l(j,kforestry);
 oq32_cost_total(t,i,"level")                          = q32_cost_total.l(i);
 oq32_land(t,j,"level")                                = q32_land.l(j);
 oq32_cdr_aff(t,j,co2_forestry,"level")                = q32_cdr_aff.l(j,co2_forestry);
 oq32_carbon(t,j,c_pools,"level")                      = q32_carbon.l(j,c_pools);
 oq32_diff(t,"level")                                  = q32_diff.l;
 oq32_max_aff(t,"level")                               = q32_max_aff.l;
 oq32_aff_pol(t,j,"level")                             = q32_aff_pol.l(j);
 oq32_prod_forestry_wood(t,j,"level")                  = q32_prod_forestry_wood.l(j);
 oq32_prod_forestry_woodfuel(t,j,"level")              = q32_prod_forestry_woodfuel.l(j);
 oq32_hvarea_forestry(t,j,ac_sub,"level")              = q32_hvarea_forestry.l(j,ac_sub);
 oq32_cost_recur(t,i,"level")                          = q32_cost_recur.l(i);
 oq32_cost_harvest(t,i,"level")                        = q32_cost_harvest.l(i);
 oq32_production_timber(t,i,"level")                   = q32_production_timber.l(i);
 oq32_prod_future(t,i,"level")                         = q32_prod_future.l(i);
 oq32_land_expansion(t,j,type32,ac,"level")            = q32_land_expansion.l(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"level")            = q32_land_reduction.l(j,type32,ac);
 oq32_avail_reuse(t,j,"level")                         = q32_avail_reuse.l(j);
 oq32_cost_establishment(t,i,"level")                  = q32_cost_establishment.l(i);
 oq32_hvarea_forestry_min(t,i,"level")                 = q32_hvarea_forestry_min.l(i);
 ov_cost_fore(t,i,"upper")                             = vm_cost_fore.up(i);
 ov32_land(t,j,type32,ac,"upper")                      = v32_land.up(j,type32,ac);
 ov_landdiff_forestry(t,"upper")                       = vm_landdiff_forestry.up;
 ov_cdr_aff(t,j,co2_forestry,"upper")                  = vm_cdr_aff.up(j,co2_forestry);
 ov32_prod(t,j,kforestry,"upper")                      = v32_prod.up(j,kforestry);
 ov32_cost_harvest(t,i,"upper")                        = v32_cost_harvest.up(i);
 ov32_cost_recur(t,i,"upper")                          = v32_cost_recur.up(i);
 ov32_hvarea_forestry(t,j,kforestry,ac_sub,"upper")    = v32_hvarea_forestry.up(j,kforestry,ac_sub);
 ov32_prod_external(t,i,kforestry,"upper")             = v32_prod_external.up(i,kforestry);
 ov32_land_expansion(t,j,type32,ac,"upper")            = v32_land_expansion.up(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"upper")            = v32_land_reduction.up(j,type32,ac);
 ov32_avail_reuse(t,j,"upper")                         = v32_avail_reuse.up(j);
 ov32_cost_establishment(t,i,"upper")                  = v32_cost_establishment.up(i);
 ov32_missing_area_future(t,j,"upper")                 = v32_missing_area_future.up(j);
 ov_prod_forestry(t,j,kforestry,"upper")               = vm_prod_forestry.up(j,kforestry);
 oq32_cost_total(t,i,"upper")                          = q32_cost_total.up(i);
 oq32_land(t,j,"upper")                                = q32_land.up(j);
 oq32_cdr_aff(t,j,co2_forestry,"upper")                = q32_cdr_aff.up(j,co2_forestry);
 oq32_carbon(t,j,c_pools,"upper")                      = q32_carbon.up(j,c_pools);
 oq32_diff(t,"upper")                                  = q32_diff.up;
 oq32_max_aff(t,"upper")                               = q32_max_aff.up;
 oq32_aff_pol(t,j,"upper")                             = q32_aff_pol.up(j);
 oq32_prod_forestry_wood(t,j,"upper")                  = q32_prod_forestry_wood.up(j);
 oq32_prod_forestry_woodfuel(t,j,"upper")              = q32_prod_forestry_woodfuel.up(j);
 oq32_hvarea_forestry(t,j,ac_sub,"upper")              = q32_hvarea_forestry.up(j,ac_sub);
 oq32_cost_recur(t,i,"upper")                          = q32_cost_recur.up(i);
 oq32_cost_harvest(t,i,"upper")                        = q32_cost_harvest.up(i);
 oq32_production_timber(t,i,"upper")                   = q32_production_timber.up(i);
 oq32_prod_future(t,i,"upper")                         = q32_prod_future.up(i);
 oq32_land_expansion(t,j,type32,ac,"upper")            = q32_land_expansion.up(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"upper")            = q32_land_reduction.up(j,type32,ac);
 oq32_avail_reuse(t,j,"upper")                         = q32_avail_reuse.up(j);
 oq32_cost_establishment(t,i,"upper")                  = q32_cost_establishment.up(i);
 oq32_hvarea_forestry_min(t,i,"upper")                 = q32_hvarea_forestry_min.up(i);
 ov_cost_fore(t,i,"lower")                             = vm_cost_fore.lo(i);
 ov32_land(t,j,type32,ac,"lower")                      = v32_land.lo(j,type32,ac);
 ov_landdiff_forestry(t,"lower")                       = vm_landdiff_forestry.lo;
 ov_cdr_aff(t,j,co2_forestry,"lower")                  = vm_cdr_aff.lo(j,co2_forestry);
 ov32_prod(t,j,kforestry,"lower")                      = v32_prod.lo(j,kforestry);
 ov32_cost_harvest(t,i,"lower")                        = v32_cost_harvest.lo(i);
 ov32_cost_recur(t,i,"lower")                          = v32_cost_recur.lo(i);
 ov32_hvarea_forestry(t,j,kforestry,ac_sub,"lower")    = v32_hvarea_forestry.lo(j,kforestry,ac_sub);
 ov32_prod_external(t,i,kforestry,"lower")             = v32_prod_external.lo(i,kforestry);
 ov32_land_expansion(t,j,type32,ac,"lower")            = v32_land_expansion.lo(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"lower")            = v32_land_reduction.lo(j,type32,ac);
 ov32_avail_reuse(t,j,"lower")                         = v32_avail_reuse.lo(j);
 ov32_cost_establishment(t,i,"lower")                  = v32_cost_establishment.lo(i);
 ov32_missing_area_future(t,j,"lower")                 = v32_missing_area_future.lo(j);
 ov_prod_forestry(t,j,kforestry,"lower")               = vm_prod_forestry.lo(j,kforestry);
 oq32_cost_total(t,i,"lower")                          = q32_cost_total.lo(i);
 oq32_land(t,j,"lower")                                = q32_land.lo(j);
 oq32_cdr_aff(t,j,co2_forestry,"lower")                = q32_cdr_aff.lo(j,co2_forestry);
 oq32_carbon(t,j,c_pools,"lower")                      = q32_carbon.lo(j,c_pools);
 oq32_diff(t,"lower")                                  = q32_diff.lo;
 oq32_max_aff(t,"lower")                               = q32_max_aff.lo;
 oq32_aff_pol(t,j,"lower")                             = q32_aff_pol.lo(j);
 oq32_prod_forestry_wood(t,j,"lower")                  = q32_prod_forestry_wood.lo(j);
 oq32_prod_forestry_woodfuel(t,j,"lower")              = q32_prod_forestry_woodfuel.lo(j);
 oq32_hvarea_forestry(t,j,ac_sub,"lower")              = q32_hvarea_forestry.lo(j,ac_sub);
 oq32_cost_recur(t,i,"lower")                          = q32_cost_recur.lo(i);
 oq32_cost_harvest(t,i,"lower")                        = q32_cost_harvest.lo(i);
 oq32_production_timber(t,i,"lower")                   = q32_production_timber.lo(i);
 oq32_prod_future(t,i,"lower")                         = q32_prod_future.lo(i);
 oq32_land_expansion(t,j,type32,ac,"lower")            = q32_land_expansion.lo(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"lower")            = q32_land_reduction.lo(j,type32,ac);
 oq32_avail_reuse(t,j,"lower")                         = q32_avail_reuse.lo(j);
 oq32_cost_establishment(t,i,"lower")                  = q32_cost_establishment.lo(i);
 oq32_hvarea_forestry_min(t,i,"lower")                 = q32_hvarea_forestry_min.lo(i);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################
