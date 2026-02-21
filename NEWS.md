# ggsegKleist 2.0.0

## Breaking changes

* `kleist` is now a `ggseg_atlas` object (from ggseg.formats) containing
  both 2D and 3D data. The separate `kleist_3d` object has been removed.

* Atlas recreated from scratch using `ggsegExtra::create_cortical_atlas()` from
  the kleist annotation on fsaverage5.

* Use `ggplot() + ggseg::geom_brain(atlas = kleist)` for 2D plots and
  `ggseg3d::ggseg3d(atlas = kleist)` for 3D plots -- both from the same
  object.

* `ggseg.formats` is now a hard dependency (in Depends).

* Package URLs updated from `LCBC-UiO` to `ggseg` GitHub organisation.
