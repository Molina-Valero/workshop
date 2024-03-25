
add_numbers_python <- function(a, b) {

  reticulate::source_python(system.file("python/add_numbers.py", package = "workshop"))

  reticulate::py$add_numbers(a, b)

}
