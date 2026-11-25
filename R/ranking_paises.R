
#' Ranking de países
#'
#' Ordena los países según el promedio de un indicador y devuelve los primeros.
#'
#' @param datos Un data frame con la estructura de `paises_sudamerica`.
#' @param variable Indicador para ordenar: "esperanza" o "pib".
#' @param n Cantidad de países a devolver, entre 1 y 10.
#'
#' @returns Un data frame con columnas `pais` y `promedio`, ordenado de mayor a menor.
#'
#' @examples
#' ranking_paises(paises_sudamerica, variable = "pib", n = 3)
#'
#' @export
ranking_paises <- function(datos, variable = "esperanza", n = 5) {
  if (!is.data.frame(datos)) {
    cli::cli_abort("{.arg datos} debe ser un data.frame.")
  }

  if (!variable %in% c("esperanza", "pib")) {
    cli::cli_abort("{.arg variable} debe ser {.val esperanza} o {.val pib}.")
  }

  if (!is.numeric(n) || n < 1 || n > 10) {
    cli::cli_abort("{.arg n} debe ser un n\u00famero entre 1 y 10.")
  }

  if (variable == "esperanza") {
    resultado <- datos |>
      dplyr::group_by(pais) |>
      dplyr::summarise(promedio = mean(esperanza_de_vida, na.rm = TRUE))
  } else {
    resultado <- datos |>
      dplyr::group_by(pais) |>
      dplyr::summarise(promedio = mean(pib_per_capita, na.rm = TRUE))
  }

  resultado |>
    dplyr::arrange(dplyr::desc(promedio)) |>
    dplyr::slice_head(n = n)
}
