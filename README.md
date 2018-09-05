# R Data Package: World Contraceptive Usage 2018
R data package containting the [United Nations Population Division World Contraceptive Use 2018 dataset](http://www.un.org/en/development/desa/population/publications/dataset/contraception/wcu2018.shtml)


For convenience, country region, sub region, and intermediate region names were added to the dataset form the [UN Standard country or area codes for statistical use dataset](https://unstats.un.org/unsd/methodology/m49/)

## Install

```{r}
devtools::install_package("herbps10/unpdcontraceptiveuse2018")
```

## Usage

```{r}
library(unpdcontraceptiveuse2018)

# Data now available in a data frame:
unpdcontraceptiveuse2018
```
