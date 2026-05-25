## Maintenance release

This version raises the minimum R version to 4.1 to match current dependency requirements,
and modernizes package infrastructure (testthat 3, pkgdown 2, GitHub Actions).

## Test environments

* local macOS                     R-release
* GitHub Actions (macOS-latest)   R-release
* GitHub Actions (windows-latest) R-release
* GitHub Actions (ubuntu-latest)  R-devel, R-release, R-oldrel-1
* win-builder                     R-devel, R-release

## R CMD check results

0 errors | 0 warnings | 0 notes

## Downstream dependencies

I have run R CMD check on downstream dependencies of `fpCompare` and all have passed.
Summary at <https://github.com/PredictiveEcology/fpCompare/blob/master/revdep/README.md>.
