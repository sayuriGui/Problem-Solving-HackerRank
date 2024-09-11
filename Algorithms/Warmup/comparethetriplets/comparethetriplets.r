

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

compareTriplets <- function(a, b) {
    # This function compares two arrays and returns the number of elements that are greater in the first array than the second array and vice versa.
    # :param a: An array of integers
    # :param b: An array of integers
    # :return: An array of two integers

    alice <- 0
    bob <- 0
    
    for (i in 1:3) {
        if (a[i] > b[i]) {
            alice <- alice + 1
        } else if (a[i] < b[i]) {
            bob <- bob + 1
        }
    }
    
    return(c(alice, bob))
}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

a <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
a <- as.integer(a)

b <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
b <- as.integer(b)

result <- compareTriplets(a, b)

writeLines(paste(result, collapse = " "), con = fptr)

close(stdin)
close(fptr)
