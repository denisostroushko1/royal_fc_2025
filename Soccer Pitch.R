
library(tidyverse)
library(ggsoccer)
library(plotly)
library(gridExtra)

  position_coords =
      expand.grid(
        x = seq(from = 0, to = 100, by = 1), 
    #    coord2 = c(50,50,35,40,65,50,55,85,80,90,60,15, 20, 15,90)
        y = seq(from = 0, to = 100, by = 1)
      ) 
    
  ggplot(data = position_coords,
       aes(x = x, y = y)) +
      theme_pitch(aspect_ratio = NULL) +
      geom_segment(aes(x = 83, xend = 100, 
                       y = 21, yend = 21)) + 
      geom_segment(aes(x = 83, xend = 100, 
                       y = 100-21, yend = 100-21)) + 
      geom_segment(aes(x = 83, xend = 83, 
                       y = 21, yend = 100-21)) + 
    
      geom_segment(aes(x = 94, xend = 100, 
                       y = 36, yend = 36)) + 
      geom_segment(aes(x = 94, xend = 100, 
                       y = 100-36, yend = 100-36)) + 
      geom_segment(aes(x = 94, xend = 94, 
                       y = 36, yend = 100-36)) +  
      geom_segment(aes(x = 50, xend = 50, 
                       y = 0, yend = 100)) + 
    
      geom_point(color = "#5da15c" , size = 0.01 ) + 
      coord_flip()  -> p2
  
  ggplotly(p2)
  
  
    
  
  