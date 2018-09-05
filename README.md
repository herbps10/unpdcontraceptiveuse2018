# Data Package: World Contraceptive Usage 2018
## United Nations Population Division

R data package containting UN world contraceptive use 2018 data. [Original Data Source](http://www.un.org/en/development/desa/population/publications/dataset/contraception/wcu2018.shtml)


For convenience, country region, sub region, and intermediate region names were added to the dataset. [Region and sub-region names source](https://unstats.un.org/unsd/methodology/m49/)

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
