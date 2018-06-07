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
* Ubuntu 14.04     (travis-ci), R 3.6.0 (2018-06-05 r74851)
* Ubuntu 18.04         (local), R 3.6.0 (2018-06-05 r74852)
* Windows           (appveyor), R 3.6.0 (2018-06-05 r74852)
* Windows        (win-builder), R 3.6.0 (2018-06-05 r74852)

## R CMD check results

There were no ERRORs or WARNINGs

There was 1 NOTE:

1. Maintainer's email address has changed (notified CRAN 2018-05-28).

    * checking CRAN incoming feasibility ... NOTE
    Maintainer: 'Alex M Chubaty <alex.chubaty@gmail.com>'
        
    New maintainer:
      Alex M Chubaty <alex.chubaty@gmail.com>
    Old maintainer(s):
      Alex M Chubaty <alexander.chubaty@canada.ca>

## Downstream dependencies

I have run R CMD check on downstream dependencies of `fpCompare`, and all have passed except those noted below.
Summary at https://github.com/PredictiveEcology/fpCompare/blob/master/revdep/README.md.

* `SpaDES.core` produces an error due to a non-CRAN package in Suggests, but passes once that dependency is installed.
* `SpaDES.tools` produces an error due to an unrelated error in that package. I am a developer of `SpaDES.tools` and am preparing a fixed version for CRAN which will be submitted soon.

