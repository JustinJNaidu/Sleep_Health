library(dplyr)
library(gtsummary)
library(here)

here::i_am("code/00_clean_data.R")
absolute_path <- here::here('raw_data/ss.csv')
data <- read.csv(absolute_path, header = TRUE)

data <- data %>%
  rename(
    `Person ID` = Person.ID,
    `Duration of Sleep` = Sleep.Duration,
    `Quality of Sleep` = Quality.of.Sleep,
    `Physical Activity Level` = Physical.Activity.Level,
    `Stress Level` = Stress.Level,
    `BMI Category` = BMI.Category,
    `Heart Rate` = Heart.Rate,
    `Daily Steps` = Daily.Steps,
    `Sleep Disorder` = Sleep.Disorder
  )

saveRDS(
  data, 
  file = here::here("output/data_clean.rds")
)
