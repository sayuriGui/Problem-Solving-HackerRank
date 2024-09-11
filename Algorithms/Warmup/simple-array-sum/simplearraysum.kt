import java.io.*
import java.math.* 
import java.security.* 
import java.text.* 
import java.util.* 
import java.util.concurrent.* 
import java.util.function.*
import java.util.regex.* 
import java.util.stream.* 
import kotlin.collections.* 
import kotlin.comparisons.* 
import kotlin.io.* 
import kotlin.jvm.* 
import kotlin.jvm.functions.* 
import kotlin.jvm.internal.* 
import kotlin.ranges.* 
import kotlin.sequences.* 
import kotlin.text.* 


fun simpleArraySum(ar: Array<Int>): Int {
    /*
    The function simpleArraySum takes a vector of integers as input and returns the sum of all the elements in the vector.
    :param ar: An array of integers.
    :return: An integer representing the sum of all elements in the vector.
    */

    var sum = 0
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
