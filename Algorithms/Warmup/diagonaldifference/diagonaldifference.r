

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

diagonalDifference <- function(arr) {

}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))

arr <- readLines(stdin, n = n, warn = FALSE)
arr <- unlist(lapply(trimws(arr, which = "right"), function(x) strsplit(x, " ")[[1]]))
arr <- as.integer(arr)
arr <- matrix(arr, nrow = n, ncol = n, byrow = TRUE)

result <- diagonalDifference(arr)

writeLines(as.character(result), con = fptr)

close(stdin)
close(fptr)
