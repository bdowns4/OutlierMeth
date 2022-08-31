# BinaryMeth


This R package was designed to standardize an approach to binarize Illumina Human 450K array DNA methylation data.
---

## Changelog
[20220831] v0.01.0:BinaryMeth.

---

## Installation

The preferred method for downloading this script file is through github.


#### Step 1: Download the BinaryMeth R package.

Please download the R Package [here] 

https://github.com/bdowns4/BinaryMeth.git

## Usage

The two functions in the BinaryMeth package are **binarizeMeth** and **referenceMeth**.

-The function **binarizeMeth** binarizes Illumina Human 450K array DNA methylation data.

-The function **referenceMeth** makes new reference datasets.

The user can select the significance levels **0.01**, **0.001**, **0.0001**, and **0.00001**, for three collections of reference samples: **tcga**, **geo**, and **all** (tcga-geo) combined.
