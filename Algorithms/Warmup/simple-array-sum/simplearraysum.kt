import java.io.* // For input/output operations
import java.math.* // For mathematical operations
import java.security.* // For security-related classes (e.g., message digests, encryption)
import java.text.* // For text formatting and parsing
import java.util.* // For utility classes like Scanner, List, Map, etc.
import java.util.concurrent.* // For concurrency and multithreading utilities
import java.util.function.* // For functional interfaces (e.g., Function, Predicate)
import java.util.regex.* // For regular expressions (Pattern, Matcher)
import java.util.stream.* // For working with streams (functional data processing)
import kotlin.collections.* // For Kotlin-specific collections like List, Set, Map
import kotlin.comparisons.* // For Kotlin-specific comparison utilities
import kotlin.io.* // For input/output utilities
import kotlin.jvm.* // For Java Virtual Machine (JVM) interoperability classes
import kotlin.jvm.functions.* // For functional programming support in JVM
import kotlin.jvm.internal.* // For internal Kotlin-JVM support classes
import kotlin.ranges.* // For range utilities like IntRange, LongRange
import kotlin.sequences.* // For working with sequences in Kotlin (lazy collections)
import kotlin.text.* // For text processing utilities like String, StringBuilder, Regex

/*
In Kotlin, the 'fun' keyword is used to define a function.
The syntax is as follows:
    fun <function_name>(<parameters>): <return_type> {
        // Function body
    }
Kotlin doesn't always require a 'return' keyword. If the function has an expression body, 
the result of the last expression is returned automatically. If the function does not return a value, 
the return type is 'Unit', which is equivalent to 'void' in other languages. 
The return type can also be omitted when returning 'Unit'.
*/

fun simpleArraySum(ar: Array<Int>): Int {
    /*
    In Kotlin, variables are declared using 'var' (for mutable variables) or 'val' (for read-only variables).
    The syntax is:
        var <variable_name>: <data_type> = <value>
    */
    var sum = 0

    /*
    Kotlin does not have the traditional C-style for loop. Instead, it uses the 'for-in' loop to iterate over ranges or collections.
    Syntax:
        for (<variable_name> in <collection/range>) {
            // Loop body
        }
    It is similar to the 'for-in' loop in Python.
    */
    for (i in ar) {
        sum += i
    }

    return sum
}


fun main(args: Array<String>) {
    val arCount = readLine()!!.trim().toInt()

    val ar = readLine()!!.trimEnd().split(" ").map{ it.toInt() }.toTypedArray()

    val result = simpleArraySum(ar)

    println(result)
}
