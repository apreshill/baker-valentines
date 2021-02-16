function(input, ...) {
  purrr::walk(
    .x = list(send_to = list(first = "Sophie", last = "Faldo")),
    ~ rmarkdown::render(
      input = input,
      output_file = glue::glue("valentine-for-{.x$first}.html"),
      params = list(send_to = {.x},
                    sent_from = list(first = "Rami", last = "Krispin"))
    )
  )
}