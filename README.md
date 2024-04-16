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


## Package Repository
1. Enter "make sleep_report.html" in the terminal to generate the report.
2. Enter "make clean" in the terminal to delete all outputs.
3. Enter "make install" in the terminal to synchronize the package repository.


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
- `renv.lock`
- `activate.R`
6. `.gitignore` file ignores the following :
	- all `.rds` files and `.png` files in the `output` directory
	- all `.html` files in the project directory

## Docker Container
1. Building image 
- In a terminal, `cd` to the directory that contains the `Dockerfile`
`docker build -t <your_image_name> .`
- Replace <your_image_name> with whatever you would like your image to be called.

2. Image link on DockerHub
- https://hub.docker.com/repository/docker/justinnaidu/sleep_project

3. Run the automated version of the image
- Use "make project_image" in the terminal to build the image automatically;

4. Build the report automatically
Git bash on Windows: 
- Use "make docker-run" in the terminal to build the report automatically.
Git bash on Mac: 
- Use "make docker-run-m" instead.