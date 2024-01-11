# Common packages
suppressPackageStartupMessages({
  library("here")
  library("tidyverse")
  library("knitr")
  library("markdown")
  library("scales")
  library("psych")
  library("lavaan")
  library("semPlot")
  library("semTools")
  library("patchwork")
  library("gridExtra")
  library("bayesplot")
  library("ggExtra")
  library("ggpubr")
  library("viridis")
  library("ggokabeito")
})

theme_set(bayesplot::theme_default(base_size = 14, base_family = "sans"))

# knitr chunk options ----------------------------------------------------------

# Set default figure dimensions
my_fig_height <- 7 # in inches
aspect_ratio <- 0.618
my_fig_width <- my_fig_height / aspect_ratio

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  error = FALSE,
  # fig.align = "center",
  fig.width = my_fig_height,
  fig.height = my_fig_height,
  tidy = "styler"
)

# dplyr options ----------------------------------------------------------------

options(repr.plot.width = my_fig_width, repr.plot.height = my_fig_height)
# set.seed(42)

set.seed(42)
SEED <- 42 # set random seed for reproducibility
