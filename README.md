

<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegKleist <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegKleist/workflows/R-CMD-check/badge.svg)](https://github.com/ggsegverse/ggsegKleist/actions)
[![DOI](https://zenodo.org/badge/425006974.svg)](https://zenodo.org/badge/latestdoi/425006974)
<!-- badges: end -->

This package contains the Kleist 1934 historical atlas of functional
segregation for plotting with ggseg and ggseg3d, based on the
supplementary materials of Pijnenburg et al., NeuroImage, 239, 2021
[DOI](https://doi.org/10.1016/j.neuroimage.2021.118274); Version 1;
15-01-2021.

Kleist K. (1934) Gehirnpathologie vornehmlich auf Grund der
Kriegserfahrungen (Leipzig: Barth).

To learn how to use these atlases, please look at the documentation for
[ggseg](https://ggsegverse.github.io/ggseg/) and
[ggseg3d](https://ggsegverse.github.io/ggseg3d).

## Installation

You can install ggsegKleist from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegKleist")
```

## 2D plotting

``` r
library(ggsegKleist)
library(ggseg)
library(ggplot2)

ggplot() +
  geom_brain(
    atlas = kleist(),
    mapping = aes(fill = label),
    position = position_brain(hemi ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = kleist()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-2d-plot-1.png" style="width:100.0%" />

## 3D plotting

``` r
library(ggseg3d)

ggseg3d(atlas = kleist()) |>
  add_glassbrain() |>
  pan_camera("right lateral")
```

<img src="man/figures/README-3d-plot.png" style="width:100.0%" />

Please note that the ‘ggsegKleist’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
