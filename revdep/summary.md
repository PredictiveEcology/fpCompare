# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.2 (2015-08-14) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.646)           |
|language |(EN)                         |
|collate  |en_CA.UTF-8                  |
|tz       |America/Vancouver            |
|date     |2015-09-01                   |

## Packages

|package |*  |version |date |source |
|:-------|:--|:-------|:----|:------|

# Check results
1 checked out of 1 dependencies 

## SpaDES (1.0.1)
Maintainer: Alex M Chubaty <achubaty@NRCan.gc.ca>  
Bug reports: https://github.com/PredictiveEcology/SpaDES/issues

```
checking package dependencies ... ERROR
Package suggested but not available: ‘fastshp’

The suggested packages are required for a complete check.
Checking can be attempted without them by setting the environment
variable _R_CHECK_FORCE_SUGGESTS_ to a false value.

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 ERROR
```

**Maintainer's note:** R CMD check for `SpaDES` passes after installing missing dependency.
