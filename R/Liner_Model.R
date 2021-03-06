#' Makes a linear model comparing average diameters and leaf litter weights across the same sites over a number of years
#' 
#' @param Leaf_liter_and_diameter_combined_avg name of data set (tibble, no default)
#' @param diameter_2017_avg avg diameter of two species of trees per site (numeric, no default)
#' @param Y2017 avg leaf litter weight across two species and multiple sites (numeric, no default)
#' @importFrom ggplot2 geom_point 
#' @importFrom ggplot2 geom_smooth
#' @export
#' 
#'  

plot_lm <- function (leaf_litter_data){
ggplot(leaf_litter_and_diameter_combined_avg, aes(x = diameter_2017_avg, y = Y2017))+
geom_point(size = 0.5) +
geom_smooth(method = "lm",
              color = "green",
              size = 0.5,
              fill = "red") +
  labs(x = "Diameter Averages 2017",
       y = "Leaf Litter Averages 2017",
       title = "Linear Regression of Baldcypress and Water Tupleo Diameter and Leaf Litter Data")
}
