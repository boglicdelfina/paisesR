
test_that("grafico_esperanza devuelve un ggplot", {
  grafico <- grafico_esperanza(paises_sudamerica, c("Argentina", "Chile"))
  expect_s3_class(grafico, "ggplot")
})

test_that("grafico_esperanza da error si datos no es un data.frame", {
  expect_error(grafico_esperanza("hola", "Argentina"))
})
