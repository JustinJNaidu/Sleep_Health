here::i_am("code/02_make_scatter.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

# Load necessary library
library(ggplot2)
library(dplyr)

# Calculate mean sleep duration by occupation
mean_sleep_by_occupation <- data %>% 
  group_by(Occupation) %>% 
  summarise(mean_sleep = mean(`Duration of Sleep`, na.rm = TRUE))

# Create scatter plot
scatterplot <- ggplot(mean_sleep_by_occupation, aes(x = Occupation, y = mean_sleep)) +
  geom_point(color = "skyblue1", size = 3) + 
  labs(title = "Occupation vs Sleep Duration",
       x = "Occupation",
       y = "Average Sleep Duration") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90)) # occupations listed vertically

# Print the scatter plot
print(scatterplot)

ggsave(
  here::here("output/scatterplot.png"),
  plot = scatterplot,
  device = "png"
)