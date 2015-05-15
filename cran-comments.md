## Resubmission

This is a resubmission. In this version I have:

* added `%<<%` and `%>>%` operators ('less than'; 'greater than')
* move `cph` to end of the author field so `aut` displays as first name on CRAN
* fix bug report url in documentation
* improved documentation and formatting

## Test environments

### Previous R versions
* Debian Wheezy           (local), R 3.1.2
* Windows 7               (local), R 3.1.2
* Windows 7               (local), R 3.1.3

### Current R versions
* OS X Yosemite           (local), R 3.2.0
* Ubuntu 12.04        (travis-ci), R 3.2.0
* Windows 7               (local), R 3.2.0
* Windows           (win-builder), R 3.2.0

### Development R version
* Debian:testing (rocker/r-devel), R 3.3.0 (2015-03-31 r68131)
* Windows           (win-builder), R 3.3.0 (2015-05-14 r68368)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. This is an update to an existing package.

    * checking CRAN incoming feasibility ... Note_to_CRAN_maintainers
    Maintainer: 'Alex M Chubaty <achubaty@NRCan.gc.ca>'

## Downstream dependencies

There are currently no downstream dependencies of this package.
