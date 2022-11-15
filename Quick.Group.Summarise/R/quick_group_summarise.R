#' @title Quick Group By and Summarise a Mean
#'
#' @description This function first groups by one variable in your data set (x). Then, it summarises the mean of a chosen numeric variable (y) for each value in the grouped by variable (x) and produces a new tibble.
#'
#' @param data The data set you would like to work with
#' @param x Any variable from your data set that you would like to examine
#' @param y Any numeric variable from your data set
#'
#' @return This function will return a tibble that shows the grouped by variable (x) and the corresponding mean of the numeric variable (y). There will only be two columns in this new tibble.
#' @export
#'
#' @examples
#' quick_group_summarise(datateachr::steam_games, genre, original_price)
#' #Should produce a tibble with the mean price for each genre
#'
#' quick_group_summarise(datateachr::steam_games, languages, original_price)
#' #Should produce a tibble with mean price for each language

quick_group_summarise <- function(data, x, y) {
  data %>%
    dplyr::group_by({{x}}) %>%
    dplyr::summarise(mean = mean({{y}}, na.rm = TRUE))
}
