## See <https://github.com/r-lib/revdepcheck> for full documentation.

library(revdepcheck)

## Force CRAN as the only source so non-CRAN packages (e.g. r-universe
## builds of our own packages) don't get pulled into the revdep set.
options(repos = c(CRAN = "https://cloud.r-project.org"))

## Run the check; resumes automatically if interrupted.
revdep_check(num_workers = max(1L, parallel::detectCores() - 1L))

## Inspect the results:
##   revdep_summary()
##   revdep_details(revdep = "<package>")
##   revdep_todo()
##
## Drop a revdep that should not be checked (e.g. non-CRAN):
##   revdep_rm(packages = c("<pkg1>", "<pkg2>"))
##
## Start over from scratch:
##   revdep_reset()

## Regenerate revdep/ markdown reports + a paragraph for cran-comments.md:
revdep_report_cran()
