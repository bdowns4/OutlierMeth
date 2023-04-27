# OutlierMeth


The OutlierMeth R package was designed to standardize an approach to flag outliers using Illumina Human 450K array DNA methylation data.
---

## Changelog
[20220831] v0.01.0:OutlierMeth.

---

## Installation

The preferred method for downloading this script file is through github.


#### Step 1: Download the OutlierMeth R package.

Please download the R Package [OutlierMeth_1.0.tar.gz] 

https://github.com/bdowns4/BinaryMeth/blob/master/OutlierMeth_1.0.tar.gz


#### Step 2: Install the R the package.

In R, install the package with the function:

install.packages("~/Path/OutlierMeth_1.0.tar.gz", repos = NULL, type = "source")


#### Step 3:Load the R the package.

library(OutlierMeth)


## Usage

The two functions in the OutlierMeth package are **flagMeth** and **referenceMeth**.

-The function **flagMeth** binarizes Illumina Human 450K array DNA methylation data.

-The function **referenceMeth** makes new reference datasets.

When flagging the outliers the DNA methylation data, the user can select the significance levels **0.01**, **0.001**, **0.0001**, and **0.00001**, for four collections of reference samples: **tcga**, **geo**, **all** (tcga-geo) combined, and **blood**.
