## Maintenance release

In this version I have:

* updated the maintainer's email address
* switched to using `rmarkdown::render` for vignettes

## Test environments

### Previous R versions
* Windows 7               (local), R 3.1.2
* Windows 7               (local), R 3.1.3
* Windows 7               (local), R 3.2.0
* Windows 7               (local), R 3.2.1

### Current R versions
* OS X Yosemite           (local), R 3.2.2
* Ubuntu 12.04        (travis-ci), R 3.2.2
* Windows 7               (local), R 3.2.2
* Windows           (win-builder), R 3.2.2

### Development R version
* Debian:testing (rocker/r-devel), R 3.3.0 (2015-08-26 r69190)
* Windows           (win-builder), R 3.3.0 (2015-09-01 r69241)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. Maintainer's email address has changed.

    * checking CRAN incoming feasibility ... NOTE
    Maintainer: 'Alex M Chubaty <alexander.chubaty@canada.ca>'
        
    New maintainer:
      Alex M Chubaty <alexander.chubaty@canada.ca>
    Old maintainer(s):
      Alex M Chubaty <achubaty@NRCan.gc.ca>

## Downstream dependencies

I have run R CMD check on downstream dependencies of `fpCompare`, and all have passed.
Summary at https://github.com/PredictiveEcology/fpCompare/blob/master/revdep/summary.md.

* NOTE: `SpaDES` produces an error due to a non-CRAN package in Suggests, but passes once that dependency is installed.
