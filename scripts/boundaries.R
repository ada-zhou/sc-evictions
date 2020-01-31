# Download: Eviction Lab: South Carolina City Boundaries Eviction Data
# https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson

# Author: Ada Zhou
# Version: 2020-01-29

# Libraries
library(tidyverse)
library(sf)

# Parameters
file_out <- here::here("data/boundaries.rds")
raw_file_out <- here::here("data-raw/boundaries.geojson")

# Data download link
url_data <-
  "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson"

#===============================================================================

url_data %>%
  read_sf() %>%
  select(GEOID, n, geometry) %>%
  transmute(
    geoid = as.integer(GEOID),
    name = as.character(n),
    geometry
  ) %>%
  write_rds(file_out, compress = "gz")

url_data %>%
  download.file(raw_file_out)
