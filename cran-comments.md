## Maintenance release

In this version I have:

* updated the maintainer's email address, about which I emailed CRAN on March 28, 2018.

## Test environments

### Previous R versions
* Ubuntu 14.04        (travis-ci), R 3.1.0
* Ubuntu 14.04        (travis-ci), R 3.2.0
* Ubuntu 14.04        (travis-ci), R 3.3.0
* Ubuntu 14.04        (travis-ci), R 3.4.0
* Windows              (appveyor), R 3.1.0
* Windows              (appveyor), R 3.2.0
* Windows              (appveyor), R 3.3.0
* Windows              (appveyor), R 3.4.0

### Current R versions
* macOS High Sierra    (local), R 3.5.0
* OS X El Capitan  (travis-ci), R 3.5.0
* Ubuntu 14.04     (travis-ci), R 3.5.0
* Ubuntu 18.04         (local), R 3.5.0
* Windows           (appveyor), R 3.5.0
* Windows        (win-builder), R 3.5.0
* Windows 7            (local), R 3.5.0

### Development R version
* Ubuntu 14.04     (travis-ci), R 3.6.0 (2018-05-17 r74734)
* Ubuntu 18.04         (local), R 3.6.0 (2018-05-17 r74734)
* Windows           (appveyor), R 3.6.0 (2018-05-15 r74727)
* Windows        (win-builder), R 3.6.0 (2018-05-15 r74727)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. Maintainer's email address has changed.

    * checking CRAN incoming feasibility ... NOTE
    Maintainer: 'Alex M Chubaty <alex.chubaty@gmail.com>'
        
    New maintainer:
      Alex M Chubaty <alex.chubaty@gmail.com>
    Old maintainer(s):
      Alex M Chubaty <alexander.chubaty@canada.ca>

## Downstream dependencies

I have run R CMD check on downstream dependencies of `fpCompare`, and all have passed.
Summary at https://github.com/PredictiveEcology/fpCompare/blob/master/revdep/summary.md.

* NOTE: `SpaDES` produces an error due to a non-CRAN package in Suggests, but passes once that dependency is installed.
