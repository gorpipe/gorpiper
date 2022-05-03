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


#'   gorpipe-r
#'
#' @description R library for interfacing with Genuity Science services.
#' @docType package
#' @name gorpiper
#' @section gorpipe-r functions:
#' The main function you'll be using is:
#' * \code{\link{get_gorpipe}} to establish a connection to your Genuity Science APIs, and
#' @examples
#' \dontrun{
#' library(gorpiper)
#' # Go to your CSA instance of choice that runs the Query API, e.g.
#' # https://your-wxnc-instance
#' # Note the internal names of the projects you have access to
#' # go to and copy your api_key from: https://your-wxnc-instance/api-key-service/token
#' # Paste it into the variable below:
#'
#' path <- "~/User/gorscripts<version>-dist/bin"
#'
#' # Make connection object
#' gorpipe <- get_gorpipe(api_key, "your_project")
#'
#' # Print the connection details
#' print(conn)
#'
#' # Run a simple query
#'
#' results <- gor_query("gor #dbsnp# | top 10000", conn)
#'
#' print(results)
#' }
NULL


