################################################################################
# make.R -> Build the project
################################################################################

## renv ----

if (FALSE) {
  renv::settings$snapshot.type("explicit")
  renv::init()
}

# renv::status()
# renv::install()
# renv::status()
# renv::update(prompt = FALSE)
# renv::snapshot(prompt = FALSE)

## dockerfiler ----

#dock <- dockerfiler::dock_from_renv(distro = "focal")
#dock$write("Dockerfile")

## build presentation ----
quarto::quarto_render(index.qmd)
