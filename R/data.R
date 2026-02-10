#' Kleist Atlas
#'
#' Brain atlas for the historical Kleist 1934 functional segregation with
#' 49 regions per hemisphere. Contains both 2D polygon geometry for
#' [ggseg::geom_brain()] and 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' Based on supplementary materials of Pijnenburg et al., NeuroImage,
#' 239, 2021; Version 1; 15-01-2021.
#'
#' @docType data
#' @name kleist
#' @usage data(kleist)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Kleist K. (1934) Gehirnpathologie vornehmlich auf Grund der
#'     Kriegserfahrungen (Leipzig: Barth).
#'
#'     Pijnenburg R, et al. (2021) NeuroImage, 239, 118274.
#'     \doi{10.1016/j.neuroimage.2021.118274}
#'
#' @format A [ggseg.formats::ggseg_atlas] object (cortical).
#' @examples
#' data(kleist)
#' kleist
"kleist"
