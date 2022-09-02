
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ausleg <img src="man/figures/ausleg_hex.png" align="right" height="139"/>

<!-- badges: start -->
<!-- badges: end -->

The goal of ausleg is to provide information on laws passed by the
Australian Parliament since 1901. This package provides data up to
November 2021. The data was scraped from the [Federal Register of
Legislation](https://www.legislation.gov.au).[^1]

## Installation

You can install the development version of ausleg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("palesl/ausleg")
```

## Examples

These examples show some simple functionality of the package:

``` r
library(ausleg)


#   Get principal acts and metadata
getPrincipalActs()
#> # A tibble: 5,185 × 15
#>    id_princ…¹ name  date_ena…² year_…³ date_rep…⁴ repea…⁵ word_…⁶ depar…⁷ dept_1
#>    <chr>      <chr> <date>       <int> <date>     <chr>     <int> <chr>   <chr> 
#>  1 C1901A000… Acts… 1901-07-12    1901 NA         <NA>       3527 attorn… attor…
#>  2 C1901A000… Audi… 1901-08-07    1901 1998-01-01 C2004A…   10309 financ… finan…
#>  3 C1901A000… Stat… 1901-09-05    1901 1995-04-18 C2004A…    2071 attorn… attor…
#>  4 C1901A000… Cust… 1901-10-03    1901 NA         <NA>      18323 home a… home …
#>  5 C1901A000… Beer… 1901-10-05    1901 1969-10-01 C1968A…    5085 indust… indus…
#>  6 C1901A000… Dist… 1901-10-05    1901 2006-07-01 C2006A…   15011 treasu… treas…
#>  7 C1901A000… Exci… 1901-10-05    1901 NA         <NA>      11311 treasu… treas…
#>  8 C1901A000… Serv… 1901-10-16    1901 1993-04-10 C2004A…    5011 attorn… attor…
#>  9 C1901A000… Post… 1901-11-16    1901 1975-07-01 C2004A…   22353 postma… postm…
#> 10 C1901A000… Prop… 1901-12-12    1901 1907-07-01 C1906A…   10589 home a… home …
#> # … with 5,175 more rows, 6 more variables: dept_2 <chr>, dept_3 <chr>,
#> #   dept_4 <chr>, dept_5 <chr>, dept_6 <chr>, dept_7 <chr>, and abbreviated
#> #   variable names ¹​id_principal, ²​date_enacted, ³​year_enacted, ⁴​date_repealed,
#> #   ⁵​repealing_act_id, ⁶​word_count, ⁷​departments
```

## Use at own risk

I provide no warranty for errors either in the source material, or in my
data collection. This is my best attempt at faithful redistribution of
the material available on the Federal Register of Legislation. I would
be grateful for any errors you find. Either get in touch or make a pull
request!

## Image Attribution

Hex image icon: Canberra Parliament House by Anna Hatzisavas from [Noun
Project](https://thenounproject.com/browse/icons/term/canberra-parliament-house/ "Canberra Parliament House Icons")

[^1]: Redistributing under the FLR’s Creative Commons 4.0 [copyright
    licence](https://www.legislation.gov.au/Content/Disclaimer#copyright).
