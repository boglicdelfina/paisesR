
test_that("ranking_paises devuelve n filas", {
  resultado <- ranking_paises(paises_sudamerica, variable = "pib", n = 3)
  expect_equal(nrow(resultado), 3)
})

test_that("ranking_paises da error con una variable incorrecta", {
  expect_error(ranking_paises(paises_sudamerica, variable = "poblacion"))
})
