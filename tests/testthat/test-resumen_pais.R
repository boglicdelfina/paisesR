
test_that("resumen_pais devuelve una fila", {
  resultado <- resumen_pais(paises_sudamerica, "Argentina")
  expect_equal(nrow(resultado), 1)
})

test_that("resumen_pais da error con un país que no está", {
  expect_error(resumen_pais(paises_sudamerica, "Francia"))
})
