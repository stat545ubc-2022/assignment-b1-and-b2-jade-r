
# Quick.Group.Summarise

The goal of Quick.Group.Summarise is to take your specified data set and
group by a variable you specify (x) and then summarise the mean of
another variable you specify (y) across x. It will output a new tibble.

## Installation

You can install the development version of Quick.Group.Summarise from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2022/assignment-b1-and-b2-jade-r")
```

## Example

This is a basic example which shows you how to use the code:

``` r
library(Quick.Group.Summarise)

quick_group_summarise(datateachr::steam_games, genre, original_price)
#> # A tibble: 1,769 × 2
#>    genre                                                                    mean
#>    <chr>                                                                   <dbl>
#>  1 Accounting                                                              47.5 
#>  2 Accounting,Animation & Modeling,Audio Production,Design & Illustration… 20.0 
#>  3 Accounting,Animation & Modeling,Audio Production,Design & Illustration…  5.00
#>  4 Accounting,Education,Software Training,Utilities,Early Access            0   
#>  5 Action                                                                  11.0 
#>  6 Action,Adventure                                                        13.8 
#>  7 Action,Adventure,Casual                                                 41.5 
#>  8 Action,Adventure,Casual,Early Access                                    15.0 
#>  9 Action,Adventure,Casual,Free to Play                                     4.99
#> 10 Action,Adventure,Casual,Free to Play,Early Access                        0   
#> # … with 1,759 more rows
#This example should produce a tibble with the mean price for each genre
```
