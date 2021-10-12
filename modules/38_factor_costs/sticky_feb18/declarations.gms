*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

equations
 q38_cost_prod_crop(i,kcr)         Regional factor input costs for plant production (mio USD05ppp)
 q38_cost_prod_inv(i)              Regional investment costs in capital (mio USD05ppp)
 q38_investment_immobile(j,kcr)    Cellular immobile investments into farm capital   (mio USD05ppp)
 q38_investment_mobile(j)          Cellular mobile investments into farm capital   (mio USD05ppp)
;

positive variables
 vm_cost_prod(i,kall)                  Factor costs  (mio USD05ppp  per yr)
 vm_cost_inv(i)                        Investment capital costs (mio USD05ppp  per yr)
 v38_investment_immobile(j,kcr)        Investment costs in immobile farm capital (mio USD05ppp per yr)
 v38_investment_mobile(j)              Investment costs in mobile farm capital (mio USD05ppp per yr)
;

parameters
 p38_variable_costs(t,i,kcr)           Variable input costs (mio USD05ppp per input unit)
 p38_capital_need(t,i,kcr,mobil38)     Capital requirements for farming with tau equal 1 (mio USD05ppp)
 p38_capital_immobile(t,j,kcr)         Preexisting immobile capital stocks before investment (mio USD05ppp)
 p38_capital_mobile(t,j)               Preexisting mobile capital stocks before investment (mio USD05ppp)

 p38_capital_cost_share(t,i)           Capital share for dynamic calculation (1)
 p38_share_calibration(i)              Summation factor used to calibrate calculated capital shares with historical values (1)

 p38_croparea_start(j,kcr)             Agricultural land initialization area (mio. ha)
;


*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_prod(t,i,kall,type)            Factor costs  (mio USD05ppp  per yr)
 ov_cost_inv(t,i,type)                  Investment capital costs (mio USD05ppp  per yr)
 ov38_investment_immobile(t,j,kcr,type) Investment costs in immobile farm capital (mio USD05ppp per yr)
 ov38_investment_mobile(t,j,type)       Investment costs in mobile farm capital (mio USD05ppp per yr)
 oq38_cost_prod_crop(t,i,kcr,type)      Regional factor input costs for plant production (mio USD05ppp)
 oq38_cost_prod_inv(t,i,type)           Regional investment costs in capital (mio USD05ppp)
 oq38_investment_immobile(t,j,kcr,type) Cellular immobile investments into farm capital   (mio USD05ppp)
 oq38_investment_mobile(t,j,type)       Cellular mobile investments into farm capital   (mio USD05ppp)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
