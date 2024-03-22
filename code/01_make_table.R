here::i_am("code/01_make_table.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

# Load necessary library
library(gtsummary)

# Creating table1 with average quality of sleep stratified by Occupation
table_one <- data %>%
  select(Gender, Age, Occupation, `Duration of Sleep`) %>%
  tbl_summary(
    by = Occupation,
    missing = "no"
  ) %>%
  bold_labels() %>%
  italicize_levels() %>%
  add_n() %>%
  modify_header(label = "**Sleep, Health, and Lifestyle Characteristics**")

table_one

saveRDS(
  table_one,
  file = here::here("output/table_one.rds")
)