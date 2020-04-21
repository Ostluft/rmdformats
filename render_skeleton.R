fs::dir_copy(
  path = here::here("inst/rmarkdown/templates/readthedown/skeleton"),
  new_path = here::here("resources/examples/readthedown"),
  overwrite = TRUE
)

fs::file_move(
  path = here::here("resources/examples/readthedown/skeleton.Rmd"),
  new_path = here::here("resources/examples/readthedown/readthedown.Rmd")
)

rmarkdown::render(
  input = here::here("resources/examples/readthedown/readthedown.Rmd"),
  output_format = "pdf_document"
)

rmarkdown::render(
  input = here::here("resources/examples/readthedown/readthedown.Rmd"),
  output_format = "rmdformats::readthedown"
)

