# Search path
VPATH = data data-raw eda reports scripts

# Processed data files
DATA = cities.rds boundaries.rds cities_boundaries.rds

# EDA studies
EDA = cities.md

# Reports
REPORTS = report.md

# All targets
all : $(DATA) $(EDA) $(REPORTS)

# Data dependencies
cities.rds : cities.csv
boundaries.rds : boundaries.geojson
cities_boundaries.rds : cities.rds boundaries.rds

# EDA study and report dependencies
cities.md : cities.rds
boundaries.md : boundaries.rds
cities_boundaries.md : cities_boundaries.rds
report.md : cities.rds

# Pattern rules
%.rds : %.R
	Rscript $<
%.md : %.Rmd
	Rscript -e 'rmarkdown::render(input = "$<", output_options = list(html_preview = FALSE))'
