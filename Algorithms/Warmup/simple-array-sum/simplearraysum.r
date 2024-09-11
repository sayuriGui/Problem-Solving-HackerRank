simpleArraySum <- function(ar) {

    #Function to calculate the sum of all the elements in a list.
    #:param ar: list of integers
    #:return: sum of all the elements in the list


    sum(ar)

}


stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

arCount <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))
ar <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
ar <- as.integer(ar)

result <- simpleArraySum(ar)

writeLines(as.character(result), con = fptr)

close(stdin)
close(fptr)
