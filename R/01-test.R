## Related notes:
## https://docs.google.com/document/d/1oAW3z9eo0LRAPeEqqm4VyPfOz8NF0vhfd76jwcJkkog/edit?usp=sharing

## R package dependencies
if (!requireNamespace("here", quietly = TRUE)) {
    install.packages("here")
}
library("here")
if (!requireNamespace("sessioninfo", quietly = TRUE)) {
    install.packages("sessioninfo")
}
library("sessioninfo")
if (!requireNamespace("usethis", quietly = TRUE)) {
    install.packages("usethis")
}
library("usethis")
if (!requireNamespace("styler", quietly = TRUE)) {
    install.packages("styler")
}
library("styler")
# library('leo')

## File dependency
test_code <- readLines(here::here("R", "01-test.R"))

## Date the script was run
Sys.time()
# [1] "2020-04-17 13:37:58 EDT"

x <- "Leonardo"

here::here()

dir(here::here("R"))
## Not shareable!
# setwd('/Users/lcollado/Desktop/rstats_club_intro')

## Check usethis help
help(package = "usethis")

## Add a code of conduct
usethis::use_code_of_conduct()

## Information for asking questions
usethis::use_tidy_issue_template()

## Edit .Rprofile
## https://rstats.wtf/r-startup.html#rprofile
usethis::edit_r_profile()

## Style code
styler::style_file(here::here("R", "01-test.R"), transformers = styler::tidyverse_style())

## Advanced Bioc-style code that I want to make into a function
bioc_style <- styler::tidyverse_style(indent_by = 4)
bioc_style$indention$update_indention_ref_fun_dec <- function(pd_nested) {
    if (pd_nested$token[1] == "FUNCTION") {
        seq <- rlang::seq2(3, nrow(pd_nested) - 2)
        pd_nested$indention_ref_pos_id[seq] <- pd_nested$pos_id[nrow(pd_nested)]
        pd_nested$indent[seq] <- pd_nested$indent[seq] + 4
    }
    pd_nested
}

styler::style_dir(here::here("R"), transformers = bioc_style)


## Version control
usethis::use_git()

## Configure with GitHub
## Created https://github.com/lcolladotor/rstats_club_intro
usethis::use_github()

## Push to github (from the terminal)
# git push --set-upstream origin master

## Reproducibility information
print("Reproducibility information:")
Sys.time()
proc.time() ## How long has a process being running
options(width = 120)
sessioninfo::session_info()

# ─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────
#  setting  value
#  version  R version 3.6.3 (2020-02-29)
#  os       macOS Catalina 10.15.4
#  system   x86_64, darwin15.6.0
#  ui       RStudio
#  language (EN)
#  collate  en_US.UTF-8
#  ctype    en_US.UTF-8
#  tz       America/New_York
#  date     2020-04-17
#
# ─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────
#  package     * version date       lib source
#  assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.0)
#  backports     1.1.6   2020-04-05 [1] CRAN (R 3.6.3)
#  callr         3.4.3   2020-03-28 [1] CRAN (R 3.6.2)
#  cli           2.0.2   2020-02-28 [1] CRAN (R 3.6.0)
#  colorout    * 1.2-1   2019-05-07 [1] Github (jalvesaq/colorout@7ea9440)
#  crayon        1.3.4   2017-09-16 [1] CRAN (R 3.6.0)
#  desc          1.2.0   2018-05-01 [1] CRAN (R 3.6.0)
#  devtools    * 2.3.0   2020-04-10 [1] CRAN (R 3.6.3)
#  digest        0.6.25  2020-02-23 [1] CRAN (R 3.6.0)
#  ellipsis      0.3.0   2019-09-20 [1] CRAN (R 3.6.0)
#  fansi         0.4.1   2020-01-08 [1] CRAN (R 3.6.0)
#  fs            1.4.1   2020-04-04 [1] CRAN (R 3.6.3)
#  glue          1.4.0   2020-04-03 [1] CRAN (R 3.6.3)
#  here        * 0.1     2017-05-28 [1] CRAN (R 3.6.0)
#  lifecycle     0.2.0   2020-03-06 [1] CRAN (R 3.6.0)
#  magrittr      1.5     2014-11-22 [1] CRAN (R 3.6.0)
#  memoise       1.1.0   2017-04-21 [1] CRAN (R 3.6.0)
#  packrat       0.5.0   2018-11-14 [1] CRAN (R 3.6.0)
#  pillar        1.4.3   2019-12-20 [1] CRAN (R 3.6.0)
#  pkgbuild      1.0.6   2019-10-09 [1] CRAN (R 3.6.0)
#  pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 3.6.1)
#  pkgload       1.0.2   2018-10-29 [1] CRAN (R 3.6.0)
#  prettyunits   1.1.1   2020-01-24 [1] CRAN (R 3.6.2)
#  processx      3.4.2   2020-02-09 [1] CRAN (R 3.6.0)
#  ps            1.3.2   2020-02-13 [1] CRAN (R 3.6.0)
#  purrr         0.3.3   2019-10-18 [1] CRAN (R 3.6.0)
#  R6            2.4.1   2019-11-12 [1] CRAN (R 3.6.1)
#  remotes       2.1.1   2020-02-15 [1] CRAN (R 3.6.0)
#  rlang         0.4.5   2020-03-01 [1] CRAN (R 3.6.0)
#  rprojroot     1.3-2   2018-01-03 [1] CRAN (R 3.6.0)
#  rstudioapi    0.11    2020-02-07 [1] CRAN (R 3.6.0)
#  sessioninfo * 1.1.1   2018-11-05 [1] CRAN (R 3.6.0)
#  styler      * 1.3.2   2020-02-23 [1] CRAN (R 3.6.0)
#  testthat    * 2.3.2   2020-03-02 [1] CRAN (R 3.6.2)
#  tibble        3.0.0   2020-03-30 [1] CRAN (R 3.6.2)
#  usethis     * 1.6.0   2020-04-09 [1] CRAN (R 3.6.3)
#  vctrs         0.2.4   2020-03-10 [1] CRAN (R 3.6.0)
#  withr         2.1.2   2018-03-15 [1] CRAN (R 3.6.0)
#
# [1] /Library/Frameworks/R.framework/Versions/3.6/Resources/library
