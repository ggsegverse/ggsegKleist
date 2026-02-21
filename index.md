# ggsegKleist

This package contains dataset for plotting the Kleist 1934 historical
atlas of functional segregation with ggseg and ggseg3d, based on the
supplementary materials of Pijnenburg et al., NeuroImage, 239, 2021
[DOI](https://doi.org/10.1016/j.neuroimage.2021.118274); Version 1;
15-01-2021.

Kleist K. (1934) Gehirnpathologie vornehmlich auf Grund der
Kriegserfahrungen (Leipzig: Barth).

To learn how to use these atlases, please look at the documentation for
[ggseg](https://ggsegverse.github.io/ggseg/) and
[ggseg3d](https://ggsegverse.github.io/ggseg3d)

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggsegverse.r-universe.dev/ui#builds):

``` r
# Enable this universe
options(repos = c(
    ggsegverse = 'https://ggsegverse.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('ggsegKleist')
```

You can install the released version of ggsegKleist from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegKleist")
```

``` r
library(ggseg)
#> Warning: package 'ggseg' was built under R version 4.1.1
#> Loading required package: ggplot2
library(ggseg3d)
library(ggsegKleist)

plot(kleist) +
  theme(legend.position = "bottom", 
        legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(ncol = 6))
```

![](reference/figures/README-unnamed-chunk-3-1.png)

``` r
library(dplyr)
ggseg3d(atlas = kleist_3d) %>% 
  add_glassbrain() %>% 
  pan_camera("right lateral")
```

![](reference/figures/README-3d-plot.png)

Please note that the ‘ggsegKleist’ project is released with a
[Contributor Code of
Conduct](https://ggsegverse.github.io/ggsegKleist/CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.
