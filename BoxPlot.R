library(dplyr)
library(ggplot2)

boxplot(mpg ~ cyl, data = mtcars, outpch = NA) 
stripchart(mpg ~ cyl, data = mtcars, 
           vertical = TRUE, method = "jitter", 
           pch = 16, col = topo.colors(3, alpha = 0.7), bg = "bisque", 
           add = TRUE) 
