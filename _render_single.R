function(input, ...) {
  purrr::walk(
    .x = list(send_to = list(first = "Sophie", last = "Faldo")),
    ~ rmarkdown::render(
      input = input,
      output_file = glue::glue("valentine-for-{.x$first}.html"),
      output_options = list(theme = "journal"),
      params = list(send_to = {.x},
                    sent_from = list(first = "Paul", last = "Hollywood"),
                    my_valentine = "My funny valentine")
    )
  )
}
