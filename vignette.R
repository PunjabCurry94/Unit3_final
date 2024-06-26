---
  title: "FARS"
author: "Stephen McMurray"
date: "`r Sys.Date()`"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{FARS}
%\VignetteEngine{knitr::rmarkdown}
%\VignetteEncoding{UTF-8}
---
  
  ```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
```

```{r setup}
library(FARS)
```

This is the final Peer-graded Assignment from Coursera's Building an R Package. 

The `FARS` package contains functions provided for the students. These functions were written to analyze data from the [US National Highway Traffic Safety Administration's Fatality Analysis Reporting System](https://www.nhtsa.gov) (FARS). FARS is a nationwide census providing the American public yearly data regarding fatal injuries suffered in motor vehicle traffic crashes.


## Data source

Unfortunately, since the course was last updated, the FARS website changed considerably and data are more difficult to find now. Therefore, the data files used to test the functions included in this package were downloaded directly from the [course's website](https://d3c33hcgiwev3.cloudfront.net/_e1adac2a5f05192dc8780f3944feec13_fars_data.zip?Expires=1604534400&Signature=RTTvUAKz8DKWFiSEcAetz-uqBOzv79moF3uW0TbPA8k8fvG6Pa~o1wndjQsxlNKDxFWVONipYXks9nQ~G3zuKUfDj0ufW2d0ITHZlmi9VqjXjoTbW4MjXzoLX8I-CLjs-OG4VzhK6dewCktT1k2mIVfRodd72Kzu3BQTcqK5lZI_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A).

Three data files from FARS downloaded from the course's website were used to test this package:
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    Three data files from FARS downloaded from the course's website were used to test this package:

* accident_2013.csv.bz2

* accident_2014.csv.bz2

* accident_2015.csv.bz2

These files contains data frames with 50 columns and varying numbers of rows. To test the functions included in this package, downloaded these data files from the course's website to your working directory. You don't need to unzip them, as the functions will do it for you

If you want to download equivalent data files from other years, visit the new [Download Your Data](https://cdan.nhtsa.gov) section of the FARS website.


## Dependencies

You need to load the following packages before starting:

```{r, echo=TRUE, include=TRUE}
library(dplyr)
library(maps)
library(readr)
library(tidyr)
```


## Functions

The package contains five functions used to read, name, filter, summarize, and plot the data. See further details in the help documentation.

1. `fars_read`: This function reads data in `CSV` format into R. First, it checks whether the file already exists in the working directory. If the file does not exist, you get an error message. Second, if the CSV file exists, it is read into R. Third, the data are converted to a tidy `tibble` format.

2. `make_filename`: This function makes a file name. First, the inputted year will be converted to an integer. The value must be a simple year without quotes. Second, the year will be added to the middle of a string that represents the main pattern of the file name, in the placeholder for an integer. 

3. `fars_read_years`: This function reads specific variables from the data. It reads two specific columns, `MONTH` and `year`, from the input files, and then stores them as `tibbles` in a `list.` It works by calling the function `make_filename` from within.

4. `fars_summarize_years`: This function summarizes the accidents by year and month for the `tibbles` imported. It calls the function `fars_read_years` from within.

5. `fars_map_state`: This function plots a map with the locations of accidents for the selected state and                                                                                                                                                                                                                                                  * accident_2013.csv.bz2
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  * accident_2014.csv.bz2
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  * accident_2015.csv.bz2
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  These files contains data frames with 50 columns and varying numbers of rows. To test the functions included in this package, downloaded these data files from the course's website to your working directory. You don't need to unzip them, as the functions will do it for you
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  If you want to download equivalent data files from other years, visit the new [Download Your Data](https://cdan.nhtsa.gov) section of the FARS website.
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  ## Dependencies
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  You need to load the following packages before starting:
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    ```{r, echo=TRUE, include=TRUE}
                                                                                                                                                                                                                                                  library(dplyr)
                                                                                                                                                                                                                                                  library(maps)
                                                                                                                                                                                                                                                  library(readr)
                                                                                                                                                                                                                                                  library(tidyr)
                                                                                                                                                                                                                                                  ```
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  ## Functions
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  The package contains five functions used to read, name, filter, summarize, and plot the data. See further details in the help documentation.
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  1. `fars_read`: This function reads data in `CSV` format into R. First, it checks whether the file already exists in the working directory. If the file does not exist, you get an error message. Second, if the CSV file exists, it is read into R. Third, the data are converted to a tidy `tibble` format.
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  2. `make_filename`: This function makes a file name. First, the inputted year will be converted to an integer. The value must be a simple year without quotes. Second, the year will be added to the middle of a string that represents the main pattern of the file name, in the placeholder for an integer. 
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  3. `fars_read_years`: This function reads specific variables from the data. It reads two specific columns, `MONTH` and `year`, from the input files, and then stores them as `tibbles` in a `list.` It works by calling the function `make_filename` from within.
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  4. `fars_summarize_years`: This function summarizes the accidents by year and month for the `tibbles` imported. It calls the function `fars_read_years` from within.
                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                  5. `fars_map_state`: This function plots a map with th
                                                                                                                                                                                                                                                  