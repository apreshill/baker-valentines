send_to <- tibble(given = "Ruby", family = "Tandoh") %>%
  purrr::pmap(purrr::lift_ld(as.list))

purrr::pwalk(
  .l = send_to,
  ~ rmarkdown::render(
    input = "index.Rmd",
    output_file = glue::glue("valentine-for-{send_to[[1]]$given}.html"),
    output_options = list(theme = "journal"),
    params = list(send_to = send_to[[1]],
                  sent_from = list(given = "Paul", family = "Hollywood"),
                  my_valentine = "My funny valentine")
  )
)
