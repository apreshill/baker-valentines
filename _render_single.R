function(input, ...) {
  send_to = list(first = "Sophie", last = "Faldo")
  purrr::pwalk(
    .l = list(send_to),
    ~ rmarkdown::render(
      input = input,
      output_file = glue::glue("valentine-for-{send_to$first}.html"),
      output_options = list(theme = "journal"),
      params = list(send_to = {send_to},
                    sent_from = list(first = "Paul", last = "Hollywood"),
                    my_valentine = "My funny valentine")
    )
  )
}
