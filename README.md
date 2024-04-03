## Report Description

In my report, "Exploring Variations in Sleep Duration Across Occupations," I present:
- An introductory section describing the dataset and outlining the analysis objectives.
- A descriptive table providing a summary of key characteristics.
- A scatter plot illustrating the relationships.
- Text discussing the table and the figure, providing insights and interpretations.

## Code Description
`code/00_clean_data.R`
- Cleaned version of raw data file.
- Reads the raw data.
- Renames variables.
- Saves a `data_clean.rds` object in the `output/` folder.

`code/01_make_table.R`
- Reads the `data_clean.rds` object.
- Performs tabular analysis and generates a descriptive table.
- Saves a `table_one.rds` object in the `output/` folder.

`code/02_make_scatter.R`
- Reads the `data_clean.rds` object.
- Conducts graphical analysis and produces a scatter plot.
- Saves a `scatterplot.png` object in the `output/` folder.

`code/03_render_report.R`
- Renders the `sleep_report.Rmd` file.

`sleep_report.Rmd`
- Generates the `sleep_report.html` output file.


## Contents in the GitHub repository:
1. `raw_data` directory
- `ss.csv`
2. `code` directory
- `00_clean_data.R`
- `01_make_table.R`
- `02_make_scatter.R`
- `03_render_report.R`
- `sleep_report.Rmd`
- `README.md`
- `Makefile`
3. `output` directory
- `data_clean.rds`
- `table_one.rds`
- `scatterplot_png`
4. `report` directory
- contains a `Test.R` file as a placeholder
5. `renv` directory
- `.gitignore`
- `renv.lock`
- `activate.R`