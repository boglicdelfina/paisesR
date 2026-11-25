# Ranking de países

Ordena los países según el promedio de un indicador y devuelve los
primeros.

## Usage

``` r
ranking_paises(datos, variable = "esperanza", n = 5)
```

## Arguments

- datos:

  Un data frame con la estructura de `paises_sudamerica`.

- variable:

  Indicador para ordenar: "esperanza" o "pib".

- n:

  Cantidad de países a devolver, entre 1 y 10.

## Value

Un data frame con columnas `pais` y `promedio`, ordenado de mayor a
menor.

## Examples

``` r
ranking_paises(paises_sudamerica, variable = "pib", n = 3)
#> # A tibble: 3 × 2
#>   pais      promedio
#>   <fct>        <dbl>
#> 1 Venezuela   10089.
#> 2 Argentina    8956.
#> 3 Uruguay      7100.
```
