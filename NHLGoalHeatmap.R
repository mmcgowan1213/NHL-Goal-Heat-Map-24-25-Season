library(tidyverse)
shots <- read_csv("~/Downloads/nhl_shots_data.csv")

goals <- shots %>% 
  filter(season == "20242025", eventType == "goal") %>% 
  mutate(mirrorX = abs(xCoord)) 
  
  summary(goals)
  
  ggplot(goals, aes(x = mirrorX, y = yCoord) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon") +
    geom_vline(xintercept = 89)
