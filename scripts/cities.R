# Download: Eviction Lab: South Carolina City Eviction Data
# https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv

# Author: Ada Zhou
# Version: 2020-01-29

# Libraries
library(tidyverse)
library(vroom)

# Parameters

  # Data download link
url_data <-
  "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv"

vars_type <-
  cols_only(
      GEOID = col_integer(),
      year = col_integer(),
      name = col_character(),
      evictions = col_double()
  )

vars_rename <-
  c(geoid = "GEOID")

file_out <- here::here("data/cities.rds")
raw_file_out <- here::here("data-raw/cities.csv")

#===============================================================================

url_data %>%
  vroom(col_types = vars_type) %>%
  rename(!!! vars_rename) %>%
  filter(year == 2016) %>%
  write_rds(file_out, compress = "gz")

url_data %>%
  download.file(raw_file_out)
