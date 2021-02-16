---
title: "A valentine for Annetha"
subtitle: Yours truly, Mary
date: "2021-02-16"
output: 
  html_document:
    theme: flatly
    keep_md: true
#knit: source("_render_single.R")$value
params:
  my_valentine: "Nothing matters"
  send_to:
    value:
      first: "Annetha"
      last: "Mills"
  sent_from:
    value:
      first: "Mary"
      last: "Berry"
---



### To: 

Annetha Mills

### From:

Mary Berry

---

Annetha, Annetha, you baked your heart out.

You were star baker 0 times.

We met you on 2010-08-17.

After 2 episodes, we said our goodbyes.

Your showstoppers really blew us away:

- Red, White & Blue Chocolate Cake with Cigarellos, Fresh Fruit, and Cream
- Pink Swirl Macarons / Eclairs

And your signature bakes- we want one every Sunday!

- Light Jamaican Black Cakewith Strawberries and Cream
- Rose Petal Shortbread

You brought us great joy, we'll miss you, it's true.

Please keep on baking- without your bakes we'd be blue!

---


```r
rmarkdown::metadata
```

```
# $title
# [1] "A valentine for `r params$send_to$first`"
# 
# $subtitle
# [1] "Yours truly, `r params$sent_from$first`"
# 
# $date
# [1] "`r Sys.Date()`"
# 
# $output
# $output$html_document
# $output$html_document$theme
# [1] "flatly"
# 
# $output$html_document$keep_md
# [1] TRUE
# 
# 
# 
# $params
# $params$my_valentine
# [1] "Nothing matters"
# 
# $params$send_to
# $params$send_to$value
# $params$send_to$value$first
# [1] "Annetha"
# 
# $params$send_to$value$last
# [1] "Mills"
# 
# 
# 
# $params$sent_from
# $params$sent_from$value
# $params$sent_from$value$first
# [1] "Mary"
# 
# $params$sent_from$value$last
# [1] "Berry"
```

\
\
\


See: https://www.tjmahr.com/lists-knitr-secret-weapon/


```r
knitted <- list(
  when = format(Sys.Date()),
  where = knitr::current_input(),
  with = packageVersion("knitr"),
  doc_url = downlit::autolink_url("rmarkdown::render()")
)
```

Report prepared on 2021-02-16 from `index.Rmd` with knitr version 1.31 😄. Read more about [`rmarkdown::render()`](https://rmarkdown.rstudio.com/docs//reference/render.html).
