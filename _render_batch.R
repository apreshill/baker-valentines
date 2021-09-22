function(input, ...) {
  library(dplyr)
  bnames <- readr::read_csv("data/bakers.csv") %>%
    slice(1:6)
  valentines <- tibble(
    given = bnames$baker_first,
    family = bnames$baker_last,
    output_file = glue::glue("valentine-for-{given}"),
    params = purrr::map2(.x = given, .y = family,
                         ~ list(send_to = list(given = .x, family = .y)))
  ) %>%
    select(-given, -family)

  valentines %>%
    purrr::pwalk(rmarkdown::render,
                 input = input,
                 output_options = list(theme = "journal")
                 )
}
