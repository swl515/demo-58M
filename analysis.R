#make a dataset

df <- data.frame(x = rnorm(50, 16, 4), 
                 group = rep(c("group1", "group2"), each = 25))

library(tidyverse)

df %>% group_by(group) %>%
  summarise(mean = mean(x),
            n = length(n),
            sdev = sd(x))

library(magrittr)
library(dplyr)
library(ggplot2)
df %>% ggplot(aes(x = group, y = x)) +
  geom_boxplot()


