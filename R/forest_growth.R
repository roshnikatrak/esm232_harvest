#' Forest growth model
#' @param time time since start
#' @param C size of the forest
#' @param parms - as list with three values; r, K, g, thresh
#' @param r early exponential growth rate
#' @param K carrying capacity (kgC)
#' @param g linear growth rate once canopy closure has been reached
#' @param thresh threshold canopy closure (kgC)
#' @return derivative of forest growth over time (dC)


# forest growth model
forest_growth = function(time, C, parms) {
  
  # compute forest growth
  dC = ifelse(C < parms$thresh, parms$r*C, parms$g*(1-(C/parms$K)))
  
  return(list(dC))
}
