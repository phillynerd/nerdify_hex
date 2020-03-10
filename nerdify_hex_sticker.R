library(hexSticker)
library(nerdify)
library(tidyverse)
library(magick)
library(showtext)

font_add_google("Lato", family = "Lato")

col_border <- SH_colors("paradiso")
col_text <- "#FFFFFF" #white

#creating image for the sticker

img_raw <- image_read("SH_logo_dark.png") %>% 
  image_scale("550")

plot <- image_read("nerds1.jpeg")

image_composite(plot, img_raw, operator = "atop",
                offset = "+220+160") %>% 
  image_write("composite_background.png")

sticker(subplot = "composite_background.png", 
        h_color = col_border,
        package = "nerdify",
        p_size = 13,
        p_family = "Lato",
        p_color = col_text,
        p_y = 1,
        s_x=1, 
        s_y=1, 
        s_width=1.1, 
        s_height=1.1, 
        white_around_sticker = T)
