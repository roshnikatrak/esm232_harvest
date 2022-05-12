#' Forest growth model
#' @param C size of the forest
#' @param parms - as list with three values, r, K, g
#' @param K carrying capacity (units: carbon)
#' @param r early exponential growth rate
#' @param g linear growth rate once canopy closure has been reached
#' @param thresh threshold canopy closure
#' @return forest growth rate
#'
forest_growth = function(C, K, r, g, thresh) {
  
  # compute forest growth
  
  dC = ifelse(C < thresh, parms$r*C, parms$g*(1-(C/parms$K)))
  
  return(list(dC))
}
