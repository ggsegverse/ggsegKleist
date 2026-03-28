# ggsegKleist

<!-- badges: start -->
[![R-CMD-check](https://github.com/ggsegverse/ggsegKleist/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegKleist/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggsegverse.r-universe.dev/badges/ggsegKleist)](https://ggsegverse.r-universe.dev/ggsegKleist)
<!-- badges: end -->

Kleist Atlas for the ggsegverse Ecosystem.

## Installation

``` r
# From r-universe
install.packages("ggsegKleist", repos = "https://ggsegverse.r-universe.dev")

# From GitHub
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegKleist")
```

## Usage

``` r
library(ggsegKleist)
library(ggseg)

plot(kleist()) +
  theme_brain()
```

## Atlas

### kleist

Kleist 1934 functional segregation with 49 regions per hemisphere (Pijnenburg et al., 2021).

![kleist](man/figures/kleist_snapshot.png)

## Data source

Annotation files from the supplementary materials of Pijnenburg et al. (2021), projected onto fsaverage5.

- **Reference**: Kleist (1934); Pijnenburg et al. (2021) [doi:10.1016/j.neuroimage.2021.118274](https://doi.org/10.1016/j.neuroimage.2021.118274)
- **Date obtained**: 2026-02-21
