function(input, ...) {
  send_to <- list(given = "Sophie", family = "Faldo")
  purrr::pwalk(
    .l = list(send_to),
    ~ rmarkdown::render(
      input = input,
      output_file = glue::glue("valentine-for-{send_to$given}.html"),
      output_options = list(theme = "journal"),
      params = list(send_to = send_to,
                    sent_from = list(given = "Paul", family = "Hollywood"),
                    my_valentine = "My funny valentine")
    )
  )
}
