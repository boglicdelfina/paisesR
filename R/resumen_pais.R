
#' Resumen de indicadores de un país
#'
#' Calcula la esperanza de vida media y el PBI per cápita medio de un país.
#'
#' @param datos Un data frame con la estructura de `paises_sudamerica`.
#' @param nombre_pais Nombre del país, como texto.
#'
#' @returns Un data frame con columnas `pais`, `esperanza_media` y `pib_medio`.
#'
#' @examples
#' resumen_pais(paises_sudamerica, "Argentina")
#'
#' @export
resumen_pais <- function(datos, nombre_pais) {
  if (!is.data.frame(datos)) {
    cli::cli_abort("{.arg datos} debe ser un data.frame.")
  }

  if (!nombre_pais %in% datos$pais) {
    cli::cli_abort("{.val {nombre_pais}} no est\u00e1 en los datos.")
  }

  datos |>
    dplyr::filter(pais == nombre_pais) |>
    dplyr::group_by(pais) |>
    dplyr::summarise(
      esperanza_media = mean(esperanza_de_vida, na.rm = TRUE),
      pib_medio = mean(pib_per_capita, na.rm = TRUE)
    )
}
