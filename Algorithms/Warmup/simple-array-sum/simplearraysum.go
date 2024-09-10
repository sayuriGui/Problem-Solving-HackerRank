package main

import (
    "bufio" // Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer object, creating another object (Reader or Writer) that also implements the interface but provides buffering and some help for textual I/O.
    "fmt" // Package fmt implements formatted I/O with functions analogous to C's printf and scanf. The format 'verbs' are derived from C's but are simpler.
    "io" // Package io provides basic interfaces to I/O primitives. Its primary job is to wrap existing implementations of such primitives, such as those in package os, into shared public interfaces that abstract the functionality, plus some other related primitives.
    "os" // Package os provides a platform-independent interface to operating system functionality. The design is Unix-like, although the error handling is Go-like; failing calls return values of type error rather than error codes.
    "strconv" // Package strconv implements conversions to and from string representations of basic data types. It also provides functions for parsing numbers from strings.
    "strings" // Package strings implements simple functions to manipulate UTF-8 encoded strings.
)

/*
Function in Go works as follows:
func functionName(parameterName parameterType) returnType {
    // Function body
}

'func' is the keyword used to declare a function in Go, similar to 'def' in Python.
*/

func simpleArraySum(ar []int32) int32 {
    /*
    The function simpleArraySum takes a slice of integers as input and returns the sum of all the integers in the slice.
    :param ar: a slice of integers
    :return: the sum of all the integers in the slice
    */


    /* In Go, we declare a variable using the following syntax:
    var variableName variableType
    However, Go also supports type inference using ':=' for initialization.
    
    Some common types in Go:
    - bool
    - string
    - int, int8, int16, int32, int64    // signed integers
    - uint, uint8, uint16, uint32, uint64, uintptr // unsigned integers
    - byte // alias for uint8
    - rune // alias for int32, used for representing Unicode code points
    - float32, float64 // floating-point numbers
    - complex64, complex128 // complex numbers
    */
    summ := int32(0)  // Using type inference with ':=' to declare and initialize 'sum'

    /* The for loop in Go:
    for initialization; condition; post {
        // code
    }
    
    When iterating over collections like slices or arrays, we can use 'range'. 
    'range' returns both the index and the value of the elements. If the index is not needed, 
    we can use "_" to ignore it.
    */
    for _, value := range ar {  
        summ += value
    }
    return summ
}


func main() {
    reader := bufio.NewReaderSize(os.Stdin, 16 * 1024 * 1024)

    stdout, err := os.Create(os.Getenv("OUTPUT_PATH"))
    checkError(err)

    defer stdout.Close()

    writer := bufio.NewWriterSize(stdout, 16 * 1024 * 1024)

    arCount, err := strconv.ParseInt(strings.TrimSpace(readLine(reader)), 10, 64)
    checkError(err)

    arTemp := strings.Split(strings.TrimSpace(readLine(reader)), " ")

    var ar []int32

    for i := 0; i < int(arCount); i++ {
        arItemTemp, err := strconv.ParseInt(arTemp[i], 10, 64)
        checkError(err)
        arItem := int32(arItemTemp)
        ar = append(ar, arItem)
    }

    result := simpleArraySum(ar)

    fmt.Fprintf(writer, "%d\n", result)

    writer.Flush()
}

func readLine(reader *bufio.Reader) string {
    str, _, err := reader.ReadLine()
    if err == io.EOF {
        return ""
    }

    return strings.TrimRight(string(str), "\r\n")
}

func checkError(err error) {
    if err != nil {
        panic(err)
    }
}
