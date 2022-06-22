#
# usethis::use_roxygen_md()
# usethis::use_pipe()
# usethis::use_git()
# usethis::use_git_ignore(c(".Rhistory", ".RData",".Rproj.user"))
# usethis::use_package("purrr")
# usethis::use_package("cli")
# usethis::use_package("crayon")
# usethis::use_package("assertthat")
# usethis::use_package("stringr")
# usethis::use_testthat()
# usethis::use_readme_md()
# usethis::use_news_md()
# usethis::use_pkgdown()
# usethis::use_tidy_versions()
# usethis::use_version("dev")
# usethis::use_vignette("basic-gorpipe")


#' gorpipe-r
#'
#' @description R library for executing GOR queries using local GORpipe and loading data into R.
#' @docType package
#' @name gorpiper
#' @section gorpipe-r functions:
#' The main function you'll be using is:
#' * \code{\link{get_gorpipe}} to set up a gorpipe object for executing GOR queries from R
#' @examples
#' \dontrun{
#' library(gorpiper)
#' 
#' full path to gorpipe, e.g. 
#' path <- "~/User/gor-scripts/bin/gorpipe"
#'
#' # Make gorpipe object
#' gorpipe <- get_gorpipe(path)
#'
#' # Run a simple query
#'
#' results <- gorpipe("gor #dbsnp# | top 10000")
#'
#' results
#' }
NULL


