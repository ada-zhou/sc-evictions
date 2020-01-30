# Join cities and boundaries SC data
# Creates rds with all data

# Source: Eviction Lab

# Author: Ada Zhou
# Version: 2020-01-29

# Libraries
library(tidyverse)

# Parameters
file_cities <- here::here("data/cities.rds")
file_boundaries <- here::here("data/boundaries.rds")

file_out <- here::here("data/cities_boundaries.rds")

#===============================================================================

boundaries  <-
  file_boundaries %>%
  read_rds()

file_cities %>%
  read_rds() %>%
  left_join(boundaries, by = c("geoid", "name")) %>%
  write_rds(file_out)

