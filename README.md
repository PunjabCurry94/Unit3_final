# Unit3_final

FARS
Coursera's Building R packages

Final Peer-graded Assignment: Building an R Package

Author: Marco Mello

E-mail: marmello@usp.br

Instructions
The purpose of this assessment is for you to combine your skills of creating, writing, documenting, and testing an R package with releasing that package on GitHub. In this assessment you'll be taking the R files from Week 2's assessment about documentation and putting that file in an R package.

For this assessment you must:

Write a vignette to include in your package using knitr and R Markdown;

Write at least one test written using testthat;

Put your package on GitHub;

Set up the repository so that the package can be checked and built on Travis;

Once your package has built on Travis and the build is passing with no errors, warnings, or notes you should add your Travis badge to the README.md file of your package repository.

Review criteria
For this assignment you'll submit a link to the GitHub repository which contains your package. This assessment will ask reviewers the following questions:

Does this package contain the correct R file(s) under the R/ directory?

Does this package contain a man/ directory with corresponding documentation files?

Does this package contain a vignette which provides a meaningful description of the package and how it should be used?

Does this package have at least one test included in the tests/ directory?

Does this package have a NAMESPACE file?

Does the README.md file for this directory have a Travis badge?

Is the build of this package passing on Travis?

Are the build logs for this package on Travis free of any errors, warnings, or notes?

Travis testing badge
Build Status

Functionality
This package contains functions provided for the students. These functions were written to analyze data from the US National Highway Traffic Safety Administration's Fatality Analysis Reporting System.

Data source
This package uses example data from the US National Highway Traffic Safety Administration's Fatality Analysis Reporting System (FARS). FARS is a nationwide census providing the American public yearly data regarding fatal injuries suffered in motor vehicle traffic crashes.

Unfortunately, since the course was last updated, the website of FARS changed considerably and data are more difficult to find now. Therefore, the data actually used here were downloaded directly from the course's website.

Further readings
To complete this peer-graded assignment, in addition to the course's readings, I have also consulted other invaluable sources, which are listed here. If you want to dive deeper into the details about how to build an R package, read the following tutorials:

Writing an R package from scratch

R Packages

Writing R Extensions

R Markdown Cookbook

How to Add a Vignette to a Package in RStudio
