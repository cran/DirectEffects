#' Data on historical plough use and the socioeconomic status of
#' women.
#'
#' A dataset to replicate the analysis in Alesina, Giuliano, and Nunn
#' (2013).
#'
#' \itemize{
#'   \item isocode. 3-letter code for the country.
#' \item flfp2000. Female labor force participation in 2000
#' \item female_ownership. Percent of firms with female ownership (in
#'   latest survey year)
#' \item women_politics. Women in Politics in 2000, WDI
#' \item plow. Animal plow cultivation variable (v39): Using
#'   Ethnologue - pop weighted
#' \item agricultural_suitability. overall (millets, sorghum, wheat,
#'   barley, rye): share defined as suitable
#' \item tropical_climate. Frac land: tropics and subtropics: using
#'   Ethnologue - pop weighted
#' \item large_animals. presence of large animals
#' \item political_hierarchies. Jurisdictional hierarchy beyond local
#'   community (v33): Using Ethnologue - pop weighted
#' \item economic_complexity. Settlement patterns (v30)
#' \item ln_income. ln (income)
#' \item ln_income_squared. ln (income) ^2
#' \item centered_ln_inc. de-meaned ln_inc
#' \item centered_ln_incsq. de-meaned ln_inc squared
#' \item country. country name
#' \item communist_dummy. Communism indicator variable
#' \item rugged. Ruggedness (Terrain Ruggedness Index, 100 m.)
#' \item years_interstate_conflict. Years of interstate conflict, 1800-2007 - from COW
#' \item serv_va_gdp2000. Value Added in Service/GDP in 2000
#' \item polity2_2000. Polity 2 measure taken from the Polity IV dataset
#' \item oil_pc. oil production/GDP
#' \item ... other variables as annotated in the source.
#' }
#'
#' @docType data
#' @name ploughs
#' @usage data(ploughs)
#' @format A data frame with 234 observations and 57 variables.
#' @source \doi{10.1093/qje/qjt005}
#' @references Alesina, A., Giuliano, P., & Nunn, N. (2013). On the
#' Origins of Gender Roles: Women and the Plough. The Quarterly
#' Journal of Economics, 128(2), 469-530. \doi{10.1093/qje/qjt005}
NULL


#' Data on civil wars and internal conflict from 1945-1999.
#'
#' A dataset to replicate the analysis in Fearon and Laitin
#' (2003).
#'
#' \itemize{
#' \item ccode. COW country id number
#' \item country. country name
#' \item cname. abbreviated country name
#' \item cmark. 1 for first in each country series
#' \item year. start year of war/conflict
#' \item wars. number wars in progress in country year
#' \item war. 1 if war ongoing in country year
#' \item warl. lagged war, w/ 0 for start of country series
#' \item onset. 1 for civil war onset
#' \item ethonset. 1 if onset = 1 & ethwar ~= 0
#' \item durest. estimated war duration
#' \item aim. 1 = rebels aim at center, 3 = aim at exit or autonomy, 2 = mixed or ambig.
#' \item casename. Id for case, usually name of rebel group(s)
#' \item ended. war ends = 1, 0 = ongoing
#' \item ethwar. 0 = not ethnic, 1 = ambig/mixed, 2 = ethnic
#' \item waryrs. war years for each onset
#' \item pop. population, in 1000s
#' \item lpop. log of pop
#' \item polity2. revised polity score
#' \item gdpen. gdp/pop based on pwt5.6, wdi2001,cow energy data
#' \item gdptype. source/type of gdp/pop estimate
#' \item gdpenl. lagged gdpenl, except for first in country series
#' \item lgdpenl1. log of lagged gdpen
#' \item lpopl1. log population, lagged except for first in country series
#' \item region. country's region, based on MAR project
#' \item western. Dummy for Western Democracies & Japan
#' \item eeurop. Dummy for Eastern Europe
#' \item lamerica. Dummy for Latin America
#' \item ssafrica. Dummy for Sub-Saharan Africa
#' \item asia. Dummy for Asia (not including Japan)
#' \item nafrme. Dummy for North Africa/Middle East
#' \item colbrit. Former British colony
#' \item colfra. former French colony
#' \item mtnest. Estimated percent mountainous terrain
#' \item lmtnest. log of mtnest
#' \item elevdiff. high - low elevation, in meters
#' \item Oil. more than 1/3 export revenues from fuels
#' \item ncontig. noncontiguous state
#' \item ethfrac. ethnic frac. based on Soviet Atlas, plus estimates for missing in 1964
#' \item ef. ethnic fractionalization based on Fearon 2002 APSA paper
#' \item plural. share of largest ethnic group (Fearon 2002 APSA)
#' \item second. share of 2nd largest ethnic group (Fearon 2002 APSA)
#' \item numlang. number languages in Ethnologue > min(1% pop, 1mill)
#' \item relfrac. religious fractionalization
#' \item plurrel. size of largest confession
#' \item minrelpc. size of second largest confession
#' \item muslim. percent muslim
#' \item nwstate. 1 in 1st 2 years of state's existence
#' \item polity2l. lagged polity2, except 1st in country series
#' \item instab. > 2 change in Polity measure in last 3 yrs
#' \item anocl. lagged anocracy (-6 < polity2l < 6)
#' \item deml. lagged democracy (polity2l > 5)
#' \item empethfrac. ethfrac coded for colonial empires
#' \item empwarl. warl coded for data with empires
#' \item emponset. onset coded for data with empires
#' \item empgdpenl. gdpenl coded for empires data
#' \item emplpopl. lpopl coded for empires data
#' \item emplmtnest. lmtnest coded for empires data
#' \item empncontig. ncontig coded for empires
#' \item empolity2l. polity2l adjusted for empires (see fn38 in paper)
#' \item sdwars. number Sambanis/Doyle civ wars in progress
#' \item sdonset. onset of Sambanis/Doyle war
#' \item colwars. number Collier/Hoeffler wars in progress
#' \item colonset. onset of Collier/Hoeffler war
#' \item cowwars. number COW civ wars in progress
#' \item cowonset. onset of COW civ war
#' \item cowwarl. 1 if COW war ongoing in last period
#' \item sdwarl. 1 if S/D war ongoing in last period
#' \item colwarl. 1 if C/H war ongoing in last period
#' }
#'
#' @docType data
#' @name civilwar
#' @usage data(civilwar)
#' @format A data frame with 6610 observations and 69 variables.
#' @source \doi{10.1017/S0003055403000534}
#' @references Fearon, James D., and David A. Laitin (2003). Ethnicity, Insurgency, and Civil War.
#' American Political Science Review, 97(1), 75-90. \doi{10.1017/S0003055403000534}
NULL

#' Data on health and employment outcomes measured as part of the
#' U.S. Job Corps employment training experiment.
#'
#' A dataset to replicate the analysis in Huber (2014).
#'
#' \itemize{
#' \item treat. 1 = in program group. 0 = in control group.
#' \item schobef. "in school 1yr before eligibility"
#' \item trainyrbef. "training in year before Job Corps"
#' \item jobeverbef. "ever had a job before Job Corps"
#' \item jobyrbef. "job in year before job corps"
#' \item health012.  "good or very good health at assignment"
#' \item health0mis.  "general health at assignment missing"
#' \item pe_prb0.  "physical/emotional problems at assignment"
#' \item pe_prb0mis. "missing - physical/emotional problems at assignment" 
#' \item everalc. "ever abused alcohol before assignment"
#' \item alc12. "alcohol abuse one yr after assignment"
#' \item everilldrugs. "ever took illegal drugs before assignment"
#' \item age_cat. "age at application in years 16-24"
#' \item edumis. "education missing"
#' \item eduhigh. "higher education"
#' \item rwhite. "white"
#' \item everarr. "ever arrested before Job Corps"
#' \item hhsize. "household size at assignment"
#' \item hhsizemis. "household size at assignment missing"
#' \item hhinc12. "low household income at assignment"
#' \item hhinc8. "high household income at assignment"
#' \item fdstamp. "received foodstamps in yr before assignment"
#' \item welf1. "once on welfare while growing up"
#' \item welf2.  "twice on welfare while growing up"
#' \item publicass. "public assistance in yr before assignment"
#' \item emplq. "worked some time 9-12 months after assignment"
#' \item emplq4full. "worked all the time in 9-12 months after assignment"
#' \item pemplq4. "proportion of weeks worked 9-12 months after assignment"
#' \item pemplq4mis. "missing - proportion of weeks worked 9-12 months after assignment"
#' \item vocq4.  "in vocational training 9-12 months after assignment"
#' \item vocq4mis. "missing - in vocational training 9-12 months after assignment"
#' \item health1212. "very good or good health 1 yr after assignment"
#' \item health123. "fair health 1 yr after assignment"
#' \item pe_prb12. "1=phys/emot probs at 12 mths 0=no prob"
#' \item pe_prb12mis. "missing - physical/emotional problems 1 yr after assignment"
#' \item narry1. "number of arrests in year 1"
#' \item numkidhhf1zero.  "no own kids living in household 1 yr after assignment"
#' \item numkidhhf1onetwo. "one or two own kids living in household 1 yr after assignment"
#' \item pubhse12.  "1=in public housing 1 yr after assignment, 0=not in"
#' \item h_ins12a. "afdc and other transfers one yr after assignment"
#' \item h_ins12amis.  "missing - afdc and other transfers one yr after assignment"
#' \item ... other variables as annotated in the source.
#' }
#'
#' @docType data
#' @name jobcorps
#' @usage data(jobcorps)
#' @format A data frame with 10025 observations and 62 variables.
#' @source \doi{10.1002/jae.2341}
#' @references  Huber, M. (2014). Identifying causal mechanisms 
#' (primarily) based on inverse probability weighting. Journal of 
#' Applied Econometrics, 29(6), 920-943. \doi{10.1002/jae.2341}
NULL


#' Data on historical plough use and the socioeconomic status of
#' women.
#'
#' A dataset to replicate the analysis in Alesina, Giuliano, and Nunn
#' (2013).
#'
#' \itemize{
#'   \item isocode. 3-letter code for the country.
#' \item flfp2000. Female labor force participation in 2000
#' \item female_ownership. Percent of firms with female ownership (in
#'   latest survey year)
#' \item women_politics. Women in Politics in 2000, WDI
#' \item plow. Animal plow cultivation variable (v39): Using
#'   Ethnologue - pop weighted
#' \item agricultural_suitability. overall (millets, sorghum, wheat,
#'   barley, rye): share defined as suitable
#' \item tropical_climate. Frac land: tropics and subtropics: using
#'   Ethnologue - pop weighted
#' \item large_animals. presence of large animals
#' \item political_hierarchies. Jurisdictional hierarchy beyond local
#'   community (v33): Using Ethnologue - pop weighted
#' \item economic_complexity. Settlement patterns (v30)
#' \item ln_income. ln (income)
#' \item ln_income_squared. ln (income) ^2
#' \item centered_ln_inc. de-meaned ln_inc
#' \item centered_ln_incsq. de-meaned ln_inc squared
#' \item country. country name
#' \item communist_dummy. Communism indicator variable
#' \item rugged. Ruggedness (Terrain Ruggedness Index, 100 m.)
#' \item years_interstate_conflict. Years of interstate conflict, 1800-2007 - from COW
#' \item serv_va_gdp2000. Value Added in Service/GDP in 2000
#' \item polity2_2000. Polity 2 measure taken from the Polity IV dataset
#' \item oil_pc. oil production/GDP
#' \item ... other variables as annotated in the source.
#' }
#'
#' @docType data
#' @name ploughs
#' @usage data(ploughs)
#' @format A data frame with 234 observations and 57 variables.
#' @source \doi{10.1093/qje/qjt005}
#' @references Alesina, A., Giuliano, P., & Nunn, N. (2013). On the
#' Origins of Gender Roles: Women and the Plough. The Quarterly
#' Journal of Economics, 128(2), 469-530. \doi{10.1093/qje/qjt005}
NULL



#' Data on civil wars and internal conflict from 1945-1999.
#'
#' A dataset to replicate the analysis in Fearon and Laitin
#' (2003).
#'
#' \itemize{
#' \item ccode. COW country id number
#' \item country. country name
#' \item cname. abbreviated country name
#' \item cmark. 1 for first in each country series
#' \item year. start year of war/conflict
#' \item wars. number wars in progress in country year
#' \item war. 1 if war ongoing in country year
#' \item warl. lagged war, w/ 0 for start of country series
#' \item onset. 1 for civil war onset
#' \item ethonset. 1 if onset = 1 & ethwar ~= 0
#' \item durest. estimated war duration
#' \item aim. 1 = rebels aim at center, 3 = aim at exit or autonomy, 2 = mixed or ambig.
#' \item casename. Id for case, usually name of rebel group(s)
#' \item ended. war ends = 1, 0 = ongoing
#' \item ethwar. 0 = not ethnic, 1 = ambig/mixed, 2 = ethnic
#' \item waryrs. war years for each onset
#' \item pop. population, in 1000s
#' \item lpop. log of pop
#' \item polity2. revised polity score
#' \item gdpen. gdp/pop based on pwt5.6, wdi2001,cow energy data
#' \item gdptype. source/type of gdp/pop estimate
#' \item gdpenl. lagged gdpenl, except for first in country series
#' \item lgdpenl1. log of lagged gdpen
#' \item lpopl1. log population, lagged except for first in country series
#' \item region. country's region, based on MAR project
#' \item western. Dummy for Western Democracies & Japan
#' \item eeurop. Dummy for Eastern Europe
#' \item lamerica. Dummy for Latin America
#' \item ssafrica. Dummy for Sub-Saharan Africa
#' \item asia. Dummy for Asia (not including Japan)
#' \item nafrme. Dummy for North Africa/Middle East
#' \item colbrit. Former British colony
#' \item colfra. former French colony
#' \item mtnest. Estimated percent mountainous terrain
#' \item lmtnest. log of mtnest
#' \item elevdiff. high - low elevation, in meters
#' \item Oil. more than 1/3 export revenues from fuels
#' \item ncontig. noncontiguous state
#' \item ethfrac. ethnic frac. based on Soviet Atlas, plus estimates for missing in 1964
#' \item ef. ethnic fractionalization based on Fearon 2002 APSA paper
#' \item plural. share of largest ethnic group (Fearon 2002 APSA)
#' \item second. share of 2nd largest ethnic group (Fearon 2002 APSA)
#' \item numlang. number languages in Ethnologue > min(1% pop, 1mill)
#' \item relfrac. religious fractionalization
#' \item plurrel. size of largest confession
#' \item minrelpc. size of second largest confession
#' \item muslim. percent muslim
#' \item nwstate. 1 in 1st 2 years of state's existence
#' \item polity2l. lagged polity2, except 1st in country series
#' \item instab. > 2 change in Polity measure in last 3 yrs
#' \item anocl. lagged anocracy (-6 < polity2l < 6)
#' \item deml. lagged democracy (polity2l > 5)
#' \item empethfrac. ethfrac coded for colonial empires
#' \item empwarl. warl coded for data with empires
#' \item emponset. onset coded for data with empires
#' \item empgdpenl. gdpenl coded for empires data
#' \item emplpopl. lpopl coded for empires data
#' \item emplmtnest. lmtnest coded for empires data
#' \item empncontig. ncontig coded for empires
#' \item empolity2l. polity2l adjusted for empires (see fn38 in paper)
#' \item sdwars. number Sambanis/Doyle civ wars in progress
#' \item sdonset. onset of Sambanis/Doyle war
#' \item colwars. number Collier/Hoeffler wars in progress
#' \item colonset. onset of Collier/Hoeffler war
#' \item cowwars. number COW civ wars in progress
#' \item cowonset. onset of COW civ war
#' \item cowwarl. 1 if COW war ongoing in last period
#' \item sdwarl. 1 if S/D war ongoing in last period
#' \item colwarl. 1 if C/H war ongoing in last period
#' }
#'
#' @docType data
#' @name civilwar
#' @usage data(civilwar)
#' @format A data frame with 6610 observations and 69 variables.
#' @source \doi{10.1017/S0003055403000534}
#' @references Fearon, James D., and David A. Laitin (2003). Ethnicity, Insurgency, and Civil War.
#' American Political Science Review, 97(1), 75-90. \doi{10.1017/S0003055403000534}
NULL

#' Data on health and employment outcomes measured as part of the
#' U.S. Job Corps employment training experiment.
#'
#' A dataset to replicate the analysis in Huber (2014).
#'
#' \itemize{
#' \item treat. 1 = in program group. 0 = in control group.
#' \item schobef. "in school 1yr before eligibility"
#' \item trainyrbef. "training in year before Job Corps"
#' \item jobeverbef. "ever had a job before Job Corps"
#' \item jobyrbef. "job in year before job corps"
#' \item health012.  "good or very good health at assignment"
#' \item health0mis.  "general health at assignment missing"
#' \item pe_prb0.  "physical/emotional problems at assignment"
#' \item pe_prb0mis. "missing - physical/emotional problems at assignment" 
#' \item everalc. "ever abused alcohol before assignment"
#' \item alc12. "alcohol abuse one yr after assignment"
#' \item everilldrugs. "ever took illegal drugs before assignment"
#' \item age_cat. "age at application in years 16-24"
#' \item edumis. "education missing"
#' \item eduhigh. "higher education"
#' \item rwhite. "white"
#' \item everarr. "ever arrested before Job Corps"
#' \item hhsize. "household size at assignment"
#' \item hhsizemis. "household size at assignment missing"
#' \item hhinc12. "low household income at assignment"
#' \item hhinc8. "high household income at assignment"
#' \item fdstamp. "received foodstamps in yr before assignment"
#' \item welf1. "once on welfare while growing up"
#' \item welf2.  "twice on welfare while growing up"
#' \item publicass. "public assistance in yr before assignment"
#' \item emplq. "worked some time 9-12 months after assignment"
#' \item emplq4full. "worked all the time in 9-12 months after assignment"
#' \item pemplq4. "proportion of weeks worked 9-12 months after assignment"
#' \item pemplq4mis. "missing - proportion of weeks worked 9-12 months after assignment"
#' \item vocq4.  "in vocational training 9-12 months after assignment"
#' \item vocq4mis. "missing - in vocational training 9-12 months after assignment"
#' \item health1212. "very good or good health 1 yr after assignment"
#' \item health123. "fair health 1 yr after assignment"
#' \item pe_prb12. "1=phys/emot probs at 12 mths 0=no prob"
#' \item pe_prb12mis. "missing - physical/emotional problems 1 yr after assignment"
#' \item narry1. "number of arrests in year 1"
#' \item numkidhhf1zero.  "no own kids living in household 1 yr after assignment"
#' \item numkidhhf1onetwo. "one or two own kids living in household 1 yr after assignment"
#' \item pubhse12.  "1=in public housing 1 yr after assignment, 0=not in"
#' \item h_ins12a. "afdc and other transfers one yr after assignment"
#' \item h_ins12amis.  "missing - afdc and other transfers one yr after assignment"
#' \item ... other variables as annotated in the source.
#' }
#'
#' @docType data
#' @name jobcorps
#' @usage data(jobcorps)
#' @format A data frame with 10025 observations and 62 variables.
#' @source \doi{10.1002/jae.2341}
#' @references  Huber, M. (2014). Identifying causal mechanisms 
#' (primarily) based on inverse probability weighting. Journal of 
#' Applied Econometrics, 29(6), 920-943. \doi{10.1002/jae.2341}
NULL


#' Data from a randomized experiment on transgender rights.
#'
#' A dataset from Broockman and Kalla (2016).
#'
#' \itemize{
#'   \item treated. Indicator of transgender rights script (1) vs
#'  recycling script (0).
#' \item nondiscrim_law_t3. Support for transgender
#'  nondiscrimination law six weeks after treatment. 
#' \item therm_trans_t2. Subjective feelings about
#'  transgender people three weeks after treatment (0 = cool,
#'  1 = neutral, 2 = warm).
#' \item therm_obama_t1. Feeling thermometer score (0-100) for
#'  feeling warmth or coolness toward Barack Obama 3 days after
#'  treatment. 
#' \item gender_norm_moral_t1. Index of moral attitudes
#'  about gender 3 days after treatment.
#' \item nondiscrim_law_t0. Baseline support for transgender
#'  nondiscrimination law.
#' \item therm_trans_t0. Baseline subjective feelings about
#'  transgender people (0 = cool, 1 = neutral, 2 = warm).
#' \item therm_obama_t0. Baseline feeling thermometer score (0-100) for
#'  feeling warmth or coolness toward Barack Obama. 
#' \item gender_norm_moral_t0. Baseline index of moral attitudes
#'  about gender. 
#' \item ideology_t0. Baseline measure of ideology (conservative is higher).
#' \item religious_t0. Baseline measure of religiousity.
#' \item exposure_trans_t0. Baseline indicator for personal exposure to
#'  transgender people (1) or not (0).
#' \item pid_t0. Baseline party identification (-3 = Strong Democrat,
#'   3 = Strong Republican). 
#' \item vf_democrat. Indicator for if the unit identifies as a Democrat
#'  in the voter file (1) or not (0).
#' \item vf_female. Indicator for if the unit identifies as a woman
#'  in the voter file (1) or not (0).
#' \item vf_hispanic. Indicator for if the unit identifies as Hispanic
#'  in the voter file (1) or not (0).
#' \item vf_black. Indicator for if the unit identifies as Black
#'  in the voter file (1) or not (0).
#' \item vf_age. Age of the citizen in the voter file.
#' \item nondiscrim_law_diff. Difference between nondiscrim_law_t3 and
#'  nondiscrim_law_t0
#' }
#'
#' @docType data
#' @name transphobia
#' @usage data(transphobia)
#' @format A data frame with 501 observations and 19 variables.
#' @source \doi{10.1126/science.aad9713}
#' @references Broockman, D. & Kalla, J. (2016). Durably reducing transphobia:
#'   A field experiment on door-to-door canvassing. Science, 352(6282),
#'   220-224. \doi{10.1126/science.aad9713}
NULL


