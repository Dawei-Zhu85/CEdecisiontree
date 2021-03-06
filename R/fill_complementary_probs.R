
#' Fill Complementary Probabilities
#'
#' Only one of each pair of branches is assigned a probability
#' and then the other event probability is filled-in afterwards.
#' This is good because specify fewer input values and
#' if sampling probabilities we don't know the complementary
#' probability.
#'
#' Only works for binary trees or when one of n is missing.
#'
#' @param dat_tree Long format tree object
#'
#' @return Long format tree object
#' @export
#'
#' @examples
#'
fill_complementary_probs <- function(dat_tree) {

  dat_tree %>%
    group_by(from) %>%
    mutate(prob = ifelse(is.na(prob),
                         1 - sum(prob, na.rm = TRUE),
                         prob)) %>%
    ungroup()
}
