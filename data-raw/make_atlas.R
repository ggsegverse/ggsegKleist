# Create Kleist Atlas
#
# Recreates the kleist cortical atlas from the kleist
# annotation on fsaverage5 using ggsegExtra.
#
# Requirements:
#   - ggsegExtra package
#   - ggseg.formats package
#
# Run with: Rscript data-raw/make_atlas.R

Sys.setenv(RGL_USE_NULL = TRUE)

library(dplyr)
library(ggseg.extra)
library(ggseg.formats)

options(freesurfer.verbose = FALSE)
options(chromote.timeout = 120)
future::plan(future::sequential)
progressr::handlers("cli")
progressr::handlers(global = TRUE)

annot_files <- file.path(
  here::here("data-raw", "fsaverage5"),
  c("lh.kleist.annot", "rh.kleist.annot")
)

for (f in annot_files) {
  if (!file.exists(f)) {
    cli::cli_abort("Annotation not found: {.path {f}}")
  }
}

cli::cli_h1("Creating kleist cortical atlas")

atlas_raw <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "kleist",
  output_dir = "data-raw",
  tolerance = 1,
  smoothness = 2,
  skip_existing = TRUE,
  cleanup = FALSE
)

atlas_raw <- atlas_raw |>
  atlas_region_contextual("Unknown", "label")

kleist <- atlas_raw

cli::cli_alert_success("Atlas created with {nrow(kleist$core)} regions")
print(kleist)

brain_pals <- stats::setNames(
  list(kleist$palette),
  kleist$atlas
)
save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")

usethis::use_data(kleist, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/kleist.rda")
