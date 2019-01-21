# Docker image for DESeq2 software package
## ime_deseq2
This repository contains the Dockerfile to create a docker image for the `DESeq2` software package.

## Usage of this docker image
The image contain a GNU R installation and `DESeq2` installed as central library. Therefore, the module can be loaded via
``` R
library(DESeq2)
```
The default working directory is the volumne /data. The default entry point is `/bin/bash`. GNU R can be run via `R` command. Additionally, script files can be run via `Rscript`command.

## Current version
The current version is `DESeq2` [![](https://images.microbadger.com/badges/version/greatfireball/ime_deseq2:v1.14.1.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:v1.14.1 "Get your own version badge on microbadger.com").

| Version tag/branch | Size | Commit |
|-|-|-|
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_deseq2:v1.14.1.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:v1.14.1 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_deseq2:v1.14.1.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:v1.14.1 "Get your own image badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_deseq2:v1.14.1.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:v1.14.1 "Get your own commit badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_deseq2:master.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:master "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_deseq2:master.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:master "Get your own image badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_deseq2:master.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:master "Get your own commit badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/greatfireball/ime_deseq2:develop.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:develop "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/greatfireball/ime_deseq2:develop.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:develop "Get your own image badge on microbadger.com") | [![](https://images.microbadger.com/badges/commit/greatfireball/ime_deseq2:develop.svg)](https://microbadger.com/images/greatfireball/ime_deseq2:develop "Get your own commit badge on microbadger.com") |

## Older releases
None

## Further information
Further documentation about `DESeq2` can be found on its [official site](https://bioconductor.org/packages/release/bioc/html/DESeq2.html)
