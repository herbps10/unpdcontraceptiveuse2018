library(dplyr, warn.conflicts = FALSE)
library(stringr)
library(tidyr)
library(readr)
library(tidyxl)
library(unpivotr)

dat <- xlsx_cells("data-raw/UNPD_WCU2018_Country_Data_Survey-Based.xlsx", sheets = "DATA") %>%
    filter(row >= 4) %>%
    behead("NNW", header) %>%
    behead("N", method) %>%
    select(row, header, method, data_type, character, numeric) %>%
    mutate(header = str_replace_all(header, "(\r\n)+", " "),
           method = str_replace_all(method, "(\r\n)+", " "),
           header = case_when(
             header == "Country or area" ~ "country",
             header == "ISO code" ~ "iso",
             header == "Survey start year" ~ "survey_start_year",
             header == "Survey end year" ~ "survey_end_year",
             header == "Age group" ~ "age_group",
             header == "Population" ~ "population",
             header == "Contraceptive prevalence (per cent)" ~ "contraceptive",
             header == "Notes on data" ~ "notes",
             header == "Data source" ~ "data_source",
             header == "Unmet need for family planning (per cent)" ~ "",
             header == "Demand satisfied by modern methods (per cent) " ~ "demand_satisfied",
             TRUE ~ header
           ),
           method = case_when(
             TRUE ~ tolower(str_replace_all(method, c("\\s+" = "_", ":" = "")))
           )) %>%
    unite(header, c("header", "method")) %>%
    mutate(header = str_replace_all(header, "_NA", ""),
           header = str_replace_all(header, "^_", ""),
           header = str_replace_all(header, "[\\(\\)]", ""),
           character = ifelse(character == "..", NA, character))

numerics <- dat %>%
  filter(data_type == "numeric", !is.na(numeric)) %>%
  select(-data_type, -character) %>%
  spread(header, numeric)

characters <- dat %>%
  filter(data_type == "character", !is.na(character)) %>%
  select(-data_type, -numeric) %>%
  spread(header, character)

dat_wide <- full_join(numerics, characters, by = "row")

regions <- read_csv("data-raw/UNSD Methodology.csv") %>%
  select(`Region Name`, `Sub-region Name`, `Intermediate Region Name`, `M49 Code`) %>%
  rename(region = `Region Name`,
         sub_region = `Sub-region Name`,
         intermediate_region = `Intermediate Region Name`) %>%
  mutate(`M49 Code` = as.numeric(`M49 Code`))

unpdcontraceptiveuse2018 <- dat_wide %>%
  left_join(regions, by = c(iso = "M49 Code")) %>%
  select(-row) %>%
  select(country, iso, survey_start_year, survey_end_year, age_group, population, region, sub_region, intermediate_region,
         starts_with("contraceptive"),
         starts_with("unmet_need"),
         demand_satisfied,
         starts_with("data_source"),
         starts_with("notes")
         )

write_csv(unpdcontraceptiveuse2018, "data-raw/unpdcontraceptiveuse2018.csv")
devtools::use_data(unpdcontraceptiveuse2018, overwrite = TRUE)
