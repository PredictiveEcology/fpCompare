## Maintenance release

This version drops support for R 3.1 and 3.2, as dependency packages no longer suuport these versions of R.

## Test environments

### Previous R versions
* Ubuntu 16.04        (travis-ci), R 3.3.3
* Ubuntu 16.04        (travis-ci), R 3.4.4
* Ubuntu 16.04        (travis-ci), R 3.5.3
* Windows 7            (appveyor), R 3.3.3
* Windows 7            (appveyor), R 3.4.4
* Windows 7            (appveyor), R 3.5.3
* Windows 7               (local), R 3.5.3
* Windows           (win-builder), R 3.5.3

### Current R versions
* macOS Mojave        (travis-ci), R 3.6.1
* macOS Mojave            (local), R 3.6.1
* Ubuntu 16.04        (travis-ci), R 3.6.1
* Ubuntu 18.04            (local), R 3.6.1
* Windows              (appveyor), R 3.6.1
* Windows                 (local), R 3.6.1
* Windows           (win-builder), R 3.6.1

### Development R version
* Ubuntu 16.04       (travis-ci), R 3.7.0 (2019-09-05 r77152)
* Debian 18.04           (local), R 3.7.0 (2019-09-05 r77152)
* Windows             (appveyor), R 3.7.0 (2019-09-04 r77145)
* Windows          (win-builder), R 3.7.0 (2019-09-02 r77130)

## R CMD check results

There were no ERRORs or WARNINGs or NOTES.

## Downstream dependencies

I have run R CMD check on downstream dependencies of `fpCompare`, and all have passed.
Summary at https://github.com/PredictiveEcology/fpCompare/blob/master/revdep/README.md.
