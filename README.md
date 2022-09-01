# BinaryMeth


The BinaryMeth R package was designed to standardize an approach to binarize Illumina Human 450K array DNA methylation data.
---

## Changelog
[20220831] v0.01.0:BinaryMeth.

---

## Installation

The preferred method for downloading this script file is through github.


#### Step 1: Download the BinaryMeth R package.

Please download the R Package [BinaryMeth_1.0.tar.gz] 

https://github.com/bdowns4/BinaryMeth/blob/master/BinaryMeth_1.0.tar.gz

#### Step 2: Unzip file.


#### Step 3: Build the package.

In the terminal window, go to the downloaded directory BinaryMeth-main and build the package with the agrument:

(R CMD BUILD BinaryMeth)

#### Step 4: Install the R the package.

In R, install the package with the function:

install.packages("~/Path/BinaryMeth_1.0.tar.gz", repos = NULL, type = "source")

#### Step 5:Load the R the package.

library(BinaryMeth)

## Usage

The two functions in the BinaryMeth package are **binarizeMeth** and **referenceMeth**.

-The function **binarizeMeth** binarizes Illumina Human 450K array DNA methylation data.

-The function **referenceMeth** makes new reference datasets.

When binarizing the DNA methylation data, the user can select the significance levels **0.01**, **0.001**, **0.0001**, and **0.00001**, for three collections of reference samples: **tcga**, **geo**, and **all** (tcga-geo) combined.
