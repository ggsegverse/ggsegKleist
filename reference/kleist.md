# Kleist Atlas

Brain atlas for the historical Kleist 1934 functional segregation with
49 regions per hemisphere. Contains both 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://lcbc-uio.github.io/ggseg3d//reference/ggseg3d.html).

## Usage

``` r
kleist()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## Details

Based on supplementary materials of Pijnenburg et al., NeuroImage, 239,
2021; Version 1; 15-01-2021.

## References

Kleist K. (1934) Gehirnpathologie vornehmlich auf Grund der
Kriegserfahrungen (Leipzig: Barth).

    Pijnenburg R, et al. (2021) NeuroImage, 239, 118274.
    \doi{10.1016/j.neuroimage.2021.118274}

## Examples

``` r
kleist()
#> 
#> ── kleist ggseg atlas ──────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 49
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 98 × 3
#>    hemi  region                   label                      
#>    <chr> <chr>                    <chr>                      
#>  1 left  K1_3a_3b                 lh_K1_3a_3b                
#>  2 left  K2                       lh_K2                      
#>  3 left  K4                       lh_K4                      
#>  4 left  K5                       lh_K5                      
#>  5 left  K6aa                     lh_K6aa                    
#>  6 left  K6ab_1                   lh_K6ab_1                  
#>  7 left  K6ab_2                   lh_K6ab_2                  
#>  8 left  K7                       lh_K7                      
#>  9 left  K8_1                     lh_K8_1                    
#> 10 left  K8_2                     lh_K8_2                    
#> 11 left  K9                       lh_K9                      
#> 12 left  K10                      lh_K10                     
#> 13 left  K11_12                   lh_K11_12                  
#> 14 left  K13                      lh_K13                     
#> 15 left  K16                      lh_K16                     
#> 16 left  K17_1                    lh_K17_1                   
#> 17 left  K17_2                    lh_K17_2                   
#> 18 left  K17_3                    lh_K17_3                   
#> 19 left  K18_1                    lh_K18_1                   
#> 20 left  K18_2                    lh_K18_2                   
#> 21 left  K18_3                    lh_K18_3                   
#> 22 left  K19_1                    lh_K19_1                   
#> 23 left  K19_2                    lh_K19_2                   
#> 24 left  K19_3                    lh_K19_3                   
#> 25 left  K20                      lh_K20                     
#> 26 left  K21                      lh_K21                     
#> 27 left  K22a_1                   lh_K22a_1                  
#> 28 left  K22a_2                   lh_K22a_2                  
#> 29 left  K22b_1                   lh_K22b_1                  
#> 30 left  K22b_2                   lh_K22b_2                  
#> 31 left  K23_24_26_29_30_31_32_33 lh_K23_24_26_29_30_31_32_33
#> 32 left  K25                      lh_K25                     
#> 33 left  K27                      lh_K27                     
#> 34 left  K28_34                   lh_K28_34                  
#> 35 left  K35_36                   lh_K35_36                  
#> 36 left  K37                      lh_K37                     
#> 37 left  K38                      lh_K38                     
#> 38 left  K39_1                    lh_K39_1                   
#> 39 left  K39_40                   lh_K39_40                  
#> 40 left  K40_1                    lh_K40_1                   
#> 41 left  K40_2                    lh_K40_2                   
#> 42 left  K40_3                    lh_K40_3                   
#> 43 left  K41_42_52                lh_K41_42_52               
#> 44 left  K43                      lh_K43                     
#> 45 left  K44a                     lh_K44a                    
#> 46 left  K44b                     lh_K44b                    
#> 47 left  K45                      lh_K45                     
#> 48 left  K46                      lh_K46                     
#> 49 left  K47                      lh_K47                     
#> 50 right K1_3a_3b                 rh_K1_3a_3b                
#> 51 right K2                       rh_K2                      
#> 52 right K4                       rh_K4                      
#> 53 right K5                       rh_K5                      
#> 54 right K6aa                     rh_K6aa                    
#> 55 right K6ab_1                   rh_K6ab_1                  
#> 56 right K6ab_2                   rh_K6ab_2                  
#> 57 right K7                       rh_K7                      
#> 58 right K8_1                     rh_K8_1                    
#> 59 right K8_2                     rh_K8_2                    
#> 60 right K9                       rh_K9                      
#> 61 right K10                      rh_K10                     
#> 62 right K11_12                   rh_K11_12                  
#> 63 right K13                      rh_K13                     
#> 64 right K16                      rh_K16                     
#> 65 right K17_1                    rh_K17_1                   
#> 66 right K17_2                    rh_K17_2                   
#> 67 right K17_3                    rh_K17_3                   
#> 68 right K18_1                    rh_K18_1                   
#> 69 right K18_2                    rh_K18_2                   
#> 70 right K18_3                    rh_K18_3                   
#> 71 right K19_1                    rh_K19_1                   
#> 72 right K19_2                    rh_K19_2                   
#> 73 right K19_3                    rh_K19_3                   
#> 74 right K20                      rh_K20                     
#> 75 right K21                      rh_K21                     
#> 76 right K22a_1                   rh_K22a_1                  
#> 77 right K22a_2                   rh_K22a_2                  
#> 78 right K22b_1                   rh_K22b_1                  
#> 79 right K22b_2                   rh_K22b_2                  
#> 80 right K23_24_26_29_30_31_32_33 rh_K23_24_26_29_30_31_32_33
#> 81 right K25                      rh_K25                     
#> 82 right K27                      rh_K27                     
#> 83 right K28_34                   rh_K28_34                  
#> 84 right K35_36                   rh_K35_36                  
#> 85 right K37                      rh_K37                     
#> 86 right K38                      rh_K38                     
#> 87 right K39_1                    rh_K39_1                   
#> 88 right K39_40                   rh_K39_40                  
#> 89 right K40_1                    rh_K40_1                   
#> 90 right K40_2                    rh_K40_2                   
#> 91 right K40_3                    rh_K40_3                   
#> 92 right K41_42_52                rh_K41_42_52               
#> 93 right K43                      rh_K43                     
#> 94 right K44a                     rh_K44a                    
#> 95 right K44b                     rh_K44b                    
#> 96 right K45                      rh_K45                     
#> 97 right K46                      rh_K46                     
#> 98 right K47                      rh_K47                     
```
