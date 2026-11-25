
library(dplyr)

paises_sudamerica <- datos::paises |>
  filter(continente == "Américas",
         pais %in% c("Argentina", "Brasil", "Chile", "Uruguay", "Paraguay",
                     "Bolivia", "Perú", "Ecuador", "Colombia", "Venezuela")) |>
  select(pais, anio, esperanza_de_vida, pib_per_capita)

usethis::use_data(paises_sudamerica, overwrite = TRUE)
