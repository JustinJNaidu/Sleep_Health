sleep_report.html: sleep_report.Rmd code/03_render_report.R output/data_clean.rds output/table_one.rds \
 output/scatterplot.png
	Rscript code/03_render_report.R

output/data_clean.rds: code/00_clean_data.R raw_data/ss.csv
	Rscript code/00_clean_data.R
	
output/table_one.rds: code/01_make_table.R output/data_clean.rds
	Rscript code/01_make_table.R

output/scatterplot.png: code/02_make_scatter.R output/data_clean.rds
	Rscript code/02_make_scatter.R


.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f sleep_report.html
