function(input, ...) {
  library(tidyverse)
  library(bakeoff)

  senders <- bakers %>%
    slice(30:35) %>%
    rename(given = baker_first, family = baker_last) %>%
    nest(from = c(given, family))

  valentines <- senders %>%
    mutate(
      output_file = glue::glue("valentine-for-ruby"),
      params = purrr::pmap(.,
                           ~ list(
                             send_to = list(given = "Ruby", family = "Tandoh"),
                             from_group = list(from)
                             )
                           )
      ) %>%
    select(output_file, params)

  valentines %>%
    purrr::pwalk(rmarkdown::render,
                 input = input,
                 output_options = list(theme = "journal"))
}
