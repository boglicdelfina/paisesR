
#' Gráfico de esperanza de vida
#'
#' Grafica la evolución de la esperanza de vida de uno o más países.
#'
#' @param datos Un data frame con la estructura de `paises_sudamerica`.
#' @param paises Vector de texto con los países a graficar.
#'
#' @returns Un gráfico de ggplot2.
#'
#' @examples
#' grafico_esperanza(paises_sudamerica, c("Argentina", "Chile"))
#'
#' @export
grafico_esperanza <- function(datos, paises) {
  if (!is.data.frame(datos)) {
    cli::cli_abort("{.arg datos} debe ser un data.frame.")
  }

  datos |>
    dplyr::filter(pais %in% paises) |>
    ggplot2::ggplot(ggplot2::aes(anio, esperanza_de_vida)) +
    ggplot2::geom_line(ggplot2::aes(color = pais)) +
    ggplot2::labs(title = "Esperanza de vida",
                  x = "A\u00f1o", y = "A\u00f1os", color = "Pa\u00eds")
}
