#' Convert probabilities to odds
#'
#' Odds are an alternative means to quantify probabilities of events.
#' If the probability of an event has a value `p`, the odds corresponding
#' to `p` is `p/(1-p)`.
#'
#' @param p A numeric vector of probabilities, which are values between 0.0
#'  and 1.0.
#'
#' @return A numeric vector of odds, which are values between zero and infinity.
#' @export
#'
#' @examples
#' p <- c(0.25, 0.5, 0.75)
#' probs_to_odds(p)

probs_to_odds <- function(p) {
    p/(1-p)
}

#' Convert odds to probabilities
#'
#' This is the inverse of the function that calculates odds from probabilities.
#' For any given value of odds, the corresponding probability `p` where
#' `odds = p/(1-p)` is returned.
#'
#' @param odds A numeric vector of non-negative values, representing odds.
#'
#' @return A numeric vector of probabilities.
#' @export
#'
#' @examples
#' odds <- c(1, 3, 9)
#' odds_to_probs(odds)
odds_to_probs <- function(odds){
    odds/(1 + odds)
}
