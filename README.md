
# paisesR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/boglicdelfina/paisesR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/boglicdelfina/paisesR/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/boglicdelfina/paisesR/graph/badge.svg)](https://app.codecov.io/gh/boglicdelfina/paisesR)
<!-- badges: end --> paisesR reúne funciones para explorar la esperanza
de vida y el PBI per cápita de los países de Sudamérica.

## Instalación

Podés instalar la versión en desarrollo desde GitHub con:

``` r
pak::pak("boglicdelfina/paisesR")
```

## Ejemplo

El paquete incluye el conjunto de datos `paises_sudamerica`. Así se
calcula el ranking de países según su PBI per cápita promedio:

``` r
library(paisesR)

ranking_paises(paises_sudamerica, variable = "pib", n = 3)
#> # A tibble: 3 × 2
#>   pais      promedio
#>   <fct>        <dbl>
#> 1 Venezuela   10089.
#> 2 Argentina    8956.
#> 3 Uruguay      7100.
```

## Autora

Delfina Boglic
