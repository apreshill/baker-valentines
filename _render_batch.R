function(input, ...) {
  library(dplyr)
  bnames <- readr::read_csv("data/bakers.csv") %>%
   mutate(send_to = purrr::map2(.x = baker_first, .y = baker_last,
                          ~list(first = .x,
                                last = .y)))
  purrr::walk(
  .x = bnames$send_to,
  ~ rmarkdown::render(
    input = input,
    output_file = glue::glue("valentine-for-{.x$first}.html"),
    output_options = list(theme = "journal"),
    params = list(send_to = {.x},
                  sent_from = list(first = "Paul", last = "Hollywood"),
                  my_valentine = glue::glue("My funny valentine, {.x$first}"))
    )
  )
}
