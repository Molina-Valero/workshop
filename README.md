# Workshop
[R package development](https://cran.r-project.org/doc/manuals/R-exts.html#Creating-R-packages)

For attending this workshop you should follow the following guidelines:

In this [link](https://posit.cloud/content/7829468) you will fine some of the workshop materials.

## GitHub

Create a [GitHub account](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github) and install the [GitHub Desktop](https://desktop.github.com/)

## R

You should have both [R](https://cran.r-project.org/) and [RStudio](https://posit.co/download/rstudio-desktop/) already installed in your PC.

## Rtools43 for Windows

Please, also install [Rtools43](https://cran.r-project.org/bin/windows/Rtools/rtools43/rtools.html) in C:/.

remotes::install_github("Molina-Valero/workshop", dependencies = TRUE)

## R code

```r
#### Packages installation ####

install.packages("devtools")
install.packages("roxygen2")
install.packages("usethis")

#### New package ####

usethis::create_package("C:/workshop")


#### Create R files ####

usethis::use_r("linReg")


# Run code and edit...


#### NAMESPACE ####

# Rebuild docs and NAMESPACE

devtools::document()


#### Data ####

data <- data.frame(y = c(1:100) + rnorm(100), x = c(1:100) + rnorm(100))

usethis::use_data(data)


#### DESCRIPTION ####

usethis::use_gpl3_license()

usethis::use_package("plotly")


#### Load code ####

devtools::load_all("C:/workshop")


#### Check complete package ####

devtools::check()


#### BUILD ####

devtools::build_manual(path = "C:/test")

devtools::build(path = "C:/test")


#### INSTALLATION ####

# installed.packages("C:/test/...")

# GitHub ----

# Download the R package from GitHub

remotes::install_github("...", dependencies = TRUE)
````
