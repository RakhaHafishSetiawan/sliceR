# sliceR
This package allows the user to easily partition data by fraction or whole number for supervised machine learning algorithm.

## Installation

```r
#Install devtools package
if (!require("devtools")) 
 install.packages("devtools")
  
#Install package with devtools
devtools::install_github("RakhaHafishSetiawan/sliceR")
```
    
## Function Call

This Package consists of one function, the user will be prompted with choices throughout the process.


• initialize function by filling in designated data and it's row amount


```r
  # Turn directory front slash into back slash
  sliceR::slice_data(Data, RowAmount)
```

## Version History

* 0.1.0
    * Initial release

## Authors

- [@RakhaHafishSetiawan](https://github.com/RakhaHafishSetiawan)

## Credits
This R package uses the following open source packages:

- [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html)
- [magrittr](https://magrittr.tidyverse.org/)

