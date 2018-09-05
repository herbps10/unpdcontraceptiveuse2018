#' @importFrom tibble tibble
NULL

#' United Nations Population Division World Contraceptive Use 2018.
#'
#' For convenience region and sub-region names were joined to the dataset.
#' Data field descriptions taken from or adapted from the data descriptions in the
#' official dataset.
#'
#' @format a data frame with 1202 rows and 43 columns.
#' \describe{
#'   \item{\code{country}}{Country or area name}
#'   \item{\code{iso}}{ISO country code}
#'   \item{\code{survey_start_year}}{Year when data collection began}
#'   \item{\code{survey_end_year}}{Year when data collection ended}
#'   \item{\code{age_group}}{Age group of the women the data pertain to. The ages span in most cases the typical reproductive age range of 15 to 49 years, but can also refer in some cases to non-standard age groups.}
#'   \item{\code{population}}{
#'      Categories of marital and union status and sex of the population the data pertain to, generally married or in-union women. A union involves a man and a woman regularly cohabiting in a marriage-like relationship. Also includes groups as reported in the data sources that differ from the reference group.
#'
#'      Group:
#'      \itemize{
#'        \item AL =  All women
#'        \item BS = Both sexes
#'        \item EM = Ever-married women
#'        \item HW = Husbands and wives
#'        \item MW = Married or in-union women
#'        \item SA = Sexually-active women}
#'      }
#'   \item{\code{region}, \code{sub_region}, \code{intermediate_region}}{
#'     Region, sub region, and intermediate region names from the United Nations Standard Country or Area Codes for Statistical Use
#'
#'     See: \url{https://unstats.un.org/unsd/methodology/m49/}
#'   }
#'   \item{\code{contraceptive_any_method}}{
#'     Descriptor and value of contraceptive prevalence (for any method) as a percentage of married or in-union women of reproductive age. NA indicate that data are not available or not separately reported.
#'   }
#'   \item{\code{contraceptive_*}}{
#'     \itemize{
#'       \item any_modern_method
#'       \item female_sterilization
#'       \item male_sterilization
#'       \item iud
#'       \item implant
#'       \item injectable
#'       \item pill
#'       \item male_condom
#'       \item female_condom
#'       \item vaginal_barrier_methods
#'       \item lactational_amenorrhea_method_lam
#'       \item emergency_contraception
#'       \item other_modern methods
#'     }
#'
#'     Descriptors and values of contraceptive prevalence (for any modern method and for specific modern methods) as a percentage of married or in-union women of reproductive age. NA indicate that data are not available or not separately reported.
#'   }
#'   \item{\code{contraceptive_*}}{
#'     \itemize{
#'       \item any_traditional_method
#'       \item rhythm
#'       \item withdrawal
#'       \item other_traditional_methods
#'     }
#'
#'     Descriptors and values of contraceptive prevalence (for any traditional method and for specific traditional methods) as a percentage of married or in-union women of reproductive age. Traditional methods include rhythm, withdrawal and other traditional methods not reported separately (see note on residuals for traditional methods). NA indicate that data are not available or not separately reported.
#'   }
#'   \item{\code{unmet_need_*}}{
#'     \itemize{
#'       \item limiting
#'       \item spacing
#'       \item total
#'     }
#'
#'     Descriptors and values of the unmet need for family planning (total, spacing and limiting) as a percentage of married or in-union women of reproductive age. Women who are fecund have an unmet need if they want to have no (more) births, or if they want to postpone or are undecided about the timing of their next birth, yet they are not using any method of contraception. NA indicate that data are not available or not separately reported.
#'   }
#'   \item{\code{demand_satisfied}}{
#'     Descriptor and value of the demand satisfied by modern methods among women of reproductive age who are married or in a union. The numerator is the prevalence of contraceptive use for any modern method. The denominator is the total demand for family planning, which equals the sum of contraceptive prevalence for any method and the unmet need for family planning. NA indicate that data are not available or not separately reported.
#'   }
#'   \item{\code{data_source_datacatalog_id}}{
#'     Unique identification number assigned to a data point in DataCatalog, a database of data sources maintained by the Population Division, Department of Economic and Social Affairs, United Nations.
#'   }
#'   \item{\code{data_source_datacatalog_longname}}{
#'     Long name for data source from DataCatalog that includes the type of data source and reference year.
#'   }
#'   \item{\code{data_source_source}}{
#'     Source of data:
#'
#'     \itemize{
#'       \item CCPS = Caribbean Contraceptive Prevalence Survey
#'       \item CPS = Contraceptive Prevalence Survey
#'       \item DHS = Demographic and Health Survey
#'       \item FFS = Fertility and Family Survey
#'       \item GCHS = Gulf Child Health Survey
#'       \item GFHS =  Gulf Family Health Survey
#'       \item GGS = Generations and Gender Survey
#'       \item LSMS = Living Standards Measurement Study survey
#'       \item MICS = Multiple Indicator Cluster Survey
#'       \item National survey = a national survey that is not part of a multi-country survey programme.
#'       \item PAPCHILD = Pan-Arab Project for Child Development Survey
#'       \item PAPFAM = Pan-Arab Project for Family Health Survey
#'       \item PMA = Performance Monitoring and Accountability 2020 (PMA2020) Survey
#'       \item RHS = Reproductive Health Survey
#'       \item WFS = World Fertility Survey"
#'     }
#'   }
#'   \item{\code{notes}}{}
#'   \item{\code{notes_contraceptive_use_methods}}{
#'     Note indicating preliminary data, where a different definition of contraceptive prevalence was used, where methods do not sum to the total or where estimates were adjusted.
#'   }
#'   \item{\code{notes_contraceptive_use_population}}{
#'     Note indicating where data pertain to populations that are not representative of all married or in-union women of reproductive age.
#'   }
#'   \item{\code{notes_contraceptive_use_residuals_modern_methods}}{
#'     Note indicating specific methods included in the category of other modern methods.
#'   }
#'   \item{\code{notes_contraceptive_use_residuals_traditional_methods}}{
#'     Note indicating specific methods included in the category of other traditional methods.
#'   }
#'   \item{\code{notes_note_on_country}}{
#'     Note indicating where data pertain to partial coverage of a geographic area.
#'   }
#'   \item{\code{notes_unmet_need_indicator}}{
#'     Note indicating preliminary data or where a different definition of unmet need for family planning was used.
#'   }
#'   \item{\code{notes_unmet_need_population_excluded}}{
#'     Note indicating the categories of married or in-union women of reproductive age that are excluded from the unmet need indicator.
#'   }
#'   \item{\code{notes_unmet_need_population_included}}{
#'     Note indicating preliminary data or where a different definition of unmet need for family planning was used.
#'   }
#' }
#'
#' @source \url{http://www.un.org/en/development/desa/population/publications/dataset/contraception/wcu2018.shtml}
"unpdcontraceptiveuse2018"
