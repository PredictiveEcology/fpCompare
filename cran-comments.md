## Maintenance release

In this version I have:

* updated the maintainer's email address
* switched to using `rmarkdown::render` for vignettes

## Test environments

### Previous R versions
* Windows 7               (local), R 3.1.2
* Windows 7               (local), R 3.1.3
* Windows 7               (local), R 3.2.0

### Current R versions
* OS X Yosemite           (local), R 3.2.2
* Ubuntu 12.04        (travis-ci), R 3.2.2
* Windows 7               (local), R 3.2.2
* Windows           (win-builder), R 3.2.2

### Development R version
* Debian:testing (rocker/r-devel), R 3.3.0 (2015-08-24 r69167)
* Windows           (win-builder), R 3.3.0 (2015-08-28 r69202)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. This is an update to an existing package.

    * checking CRAN incoming feasibility ... Note_to_CRAN_maintainers
    Maintainer: 'Alex M Chubaty <alexander.chubaty@canada.ca>'

## Downstream dependencies

I have run R CMD check on downstream dependencies of `fpCompare`, and all have passed.
Summary at https://github.com/PredictiveEcology/fpCompare/blob/master/revdep/summary.md.

* NOTE: `SpaDES` produces an error due to a non-CRAN package in Suggests, but passes once that dependency is installed.
