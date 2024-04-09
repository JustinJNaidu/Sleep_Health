# Rule to build final report
sleep_report.html: sleep_report.Rmd code/03_render_report.R output/data_clean.rds output/table_one.rds \
 output/scatterplot.png
	Rscript code/03_render_report.R

# Clean data rule
output/data_clean.rds: code/00_clean_data.R raw_data/ss.csv
	Rscript code/00_clean_data.R

# Rule to build table1	
output/table_one.rds: code/01_make_table.R output/data_clean.rds
	Rscript code/01_make_table.R

# Rule to build scatterplot
output/scatterplot.png: code/02_make_scatter.R output/data_clean.rds
	Rscript code/02_make_scatter.R

# Make install rule to restore package library
.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f sleep_report.html

PROJECTFILES = sleep_report.Rmd code/00_clean_data.R code/01_make_table.R code/02_make_scatter.R code/03_render_report.R raw_data/ss.csv Makefile README.md .gitignore  
RENVFILES = renv.lock renv/activate.R renv/settings.json .Rprofile

project_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
	docker build -t project_image .
	touch $@

# For Windows Users
docker-run:
	docker run -v "/$$(pwd)"/report:/project/report justinnaidu/sleep_project

# For Mac Users
docker-run-m:
	docker run -v "$$(pwd)"/report:/project/report justinnaidu/sleep_project