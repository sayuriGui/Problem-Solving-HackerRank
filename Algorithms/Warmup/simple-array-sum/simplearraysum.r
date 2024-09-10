# In R, the syntax for defining a function is:
# function_name <- function(arg1, arg2, ...) {
#   # function body
# }
# The function body is enclosed in curly braces { }.
# To return a value from the function, you can use the return() function, but in R, the return() statement is optional.
# The value of the last evaluated expression in the function is returned automatically.

simpleArraySum <- function(ar) {
    """
    Function to calculate the sum of all the elements in a list.
    :param ar: list of integers
    :return: sum of all the elements in the list
    """

    sum(ar) # sum() is a built-in function in R that returns the sum of all the elements in a vector or list. 
    # Similar to Python, sum() in R takes a vector or other iterable as an argument.
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
