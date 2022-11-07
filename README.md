# sliceR
This package allows the user to easily partition data for training and testing supervised machine learning models.

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
  sliceR::sliceR_init(Data, RowAmount)
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

