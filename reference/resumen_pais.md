# Resumen de indicadores de un país

Calcula la esperanza de vida media y el PBI per cápita medio de un país.

## Usage

``` r
resumen_pais(datos, nombre_pais)
```

## Arguments

- datos:

  Un data frame con la estructura de `paises_sudamerica`.

- nombre_pais:

  Nombre del país, como texto.

## Value

Un data frame con columnas `pais`, `esperanza_media` y `pib_medio`.

## Examples

``` r
resumen_pais(paises_sudamerica, "Argentina")
#> # A tibble: 1 × 3
#>   pais      esperanza_media pib_medio
#>   <fct>               <dbl>     <dbl>
#> 1 Argentina            69.1     8956.
```
