test_that("Warning occurs when Y is not numeric",
          {expect_warning(quick_group_summarise(datateachr::steam_games, genre, languages))})

test_that("Error occurs when data is not included",
          {expect_error(quick_group_summarise(genre, original_price))})

test_that("Name of the y variable changes to mean",
          {expect_named(quick_group_summarise(datateachr::steam_games, genre, original_price), c("genre", "mean"))})
