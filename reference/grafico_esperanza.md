# Gráfico de esperanza de vida

Grafica la evolución de la esperanza de vida de uno o más países.

## Usage

``` r
grafico_esperanza(datos, paises)
```

## Arguments

- datos:

  Un data frame con la estructura de `paises_sudamerica`.

- paises:

  Vector de texto con los países a graficar.

## Value

Un gráfico de ggplot2.

## Examples

``` r
grafico_esperanza(paises_sudamerica, c("Argentina", "Chile"))

```
