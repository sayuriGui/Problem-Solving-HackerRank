<div id="top"></div>

<br />

<div align="center">
  <a href="https://github.com/sayuriGui/inteligencia-artificial.git">
    <img src="https://skillicons.dev/icons?i=github" alt="Github" width="80" height="80">
  </a>
<h3 align="center">Simple Array Sum</h3>
  <p align="center">
        HackerRank
</div>

## Solutions with:

<div>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.cpp">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=cpp"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.go">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=go"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.java">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=java"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.kt">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=kotlin"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.py">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=py"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.r">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=r"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/simple-array-sum/simplearraysum.swift">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=swift"/>
</a>
</div>


## Description of the problem:
Given an array of integers, find the sum of its elements. 
For example: if the array ar = [1, 2, 3], 1 + 2 + 3 = 6, so the output is 6.

## Function description:
Complete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer.
simpleArraySum has the following parameter(s):
- ar: an array of integers

## Input Format:
The first line contains an integer, n, denoting the size of the array.
The second line contains n space-separated integers representing the array's elements.

## Constraints:
- 0 < n, ar[i] <= 1000

## Output Format:
Print the sum of the array's elements as a single integer.

## Sample Input:
```
6
1 2 3 4 10 11
```

## Sample Output:
```
31
```

## Explanation:
We print the sum of the array's elements: 1 + 2 + 3 + 4 + 10 + 11 = 31.

## My notes on the solution:
- ### C++:
  - ***Array Size Calculation***:
    - To calculate the size of an array, use the ```sizeof()``` function. However, this method only works for arrays declared within the same function. When passing an array as a parameter to a function, ```sizeof()``` returns the size of the pointer, not the actual array size. To handle this, you can either pass the array size as a separate parameter or use a vector instead of an array. This might be why HackerRank uses vectors in this problem.
  - ***Vector Size***:
    - Use ```ar.size()``` to obtain the size of a vector.
  - ***Iterating through a vector***:
    - An alternative approach I initially considered was using a range-based for loop. This loop iterates over the elements of the vector. The syntax is:
      ```cpp
      for (int i : ar) {
          sum += i;
      }
      ```
    - Here, the variable ```i``` takes on the value of each element in the vector ```ar``` in turn. The loop continues until all elements have been processed. To avoid copying the elements of the vector, you can use a reference variable instead:
      ```cpp
      for (int &i : ar) {
          sum += i;
      }
      ```
    - ***Compatibility***:
      - The range-based for loop is available in C++11 and may not be supported by older compilers.
    - ***Performance***:
      - The performance difference between range-based and traditional for loops is usually negligible for small vectors. However, if you don’t use a reference in a range-based for loop, it may create a copy of each element, potentially leading to slower performance. The traditional for loop might be slightly faster in certain cases, but the difference is often minor.
    - ***Complexity & Time***:
      - The time complexity of the range-based for loop is O(n), where n is the number of elements in the vector. This is the same as the time complexity of the traditional for loop. However, in practice, the range-based for loop might be slightly slower due to the additional overhead of copying elements if references aren’t used.
    - ***Traditional For Loop vs Range-based For Loop***:
      - The traditional for loop is more flexible and allows you to iterate over elements in a vector in a variety of ways. You can access elements by index, iterate in reverse order, or skip elements based on certain conditions. The range-based for loop is more concise and easier to read, but it has some limitations in terms of flexibility.
      - In general, the range-based for loop is preferred for simple iteration over all elements in a vector, while the traditional for loop is better suited for more complex iteration patterns.
- ### Go:
  - ***Libraries***:
    - The ```fmt``` package is used to format and print output. It provides functions like ```Println()``` and ```Printf()``` to display text on the console.
    - The ```bufio``` package is used to read input from the console. It provides functions like ```NewScanner()``` and ```Scan()``` to read user input.
    - The ```os``` package is used to handle operating system-related tasks. It provides functions like ```Exit()``` to terminate the program.
    - The ```strconv``` package is used to convert strings to other data types. It provides functions like ```Atoi()``` to convert a string to an integer.
    - The ```strings``` package is used to manipulate strings. It provides functions like ```Split()``` to split a string into substrings.
  - ***How functions work in Go***:
    - In Go, functions are defined using the ```func``` keyword, followed by the function name, parameters, return type (if any), and body. For example:
    ```go
    func add(a, b int) int {
        return a + b
    }
    ```
    - The function name is followed by the parameter list in parentheses. Each parameter consists of the parameter name and type. If multiple parameters have the same type, you can specify the type after the last parameter name. The return type is specified after the parameter list, separated by a space. If the function doesn’t return a value, you can omit the return type.
    - The function body is enclosed in curly braces and contains the code that the function executes. You can define variables, perform calculations, and call other functions within the function body.
    - To call a function, you use the function name followed by the arguments in parentheses. For example:
    ```go
    sum := add(3, 5)
    ```
    - This code calls the ```add()``` function with arguments 3 and 5 and assigns the result to the variable ```sum```.
    - ```func``` is a keyword used to define functions in Go, similar to ```def``` in Python or ```function``` in JavaScript.
  - ***Declaring variables in Go***:
    - In Go, you can declare variables using the ```var``` keyword followed by the variable name and type. For example:
    ```go
    var x int
    ```
    - This code declares a variable named ```x``` of type ```int```. You can also initialize the variable with a value:
    ```go
    var y int = 5
    ```
    - This code declares a variable named ```y``` of type ```int``` and initializes it with the value 5. Go can infer the type of a variable based on the value assigned to it:
    ```go
    z := 10
    ```
    - This code declares a variable named ```z``` and initializes it with the value 10. Go infers that the type of ```z``` is ```int``` based on the value assigned to it.
    - ***Short variable declaration***:
      - Go also supports short variable declaration, where you can declare and initialize variables using the ```:=``` operator. For example:
      ```go
      a := 3
      ```
      - This code declares a variable named ```a``` and initializes it with the value 3. Go infers the type of ```a``` based on the value assigned to it.
      - Short variable declaration is commonly used when you want to declare and initialize variables in a single line.
  - ***For loops in Go***:
    - In Go, use the ```for``` keyword to create loops. The basic syntax of a ```for``` loop in Go is:
    ```go
    for initialization; condition; post {
        // code to be executed
    }
    ```
    - The ```initialization``` statement in a Go ```for loop``` is executed once, before the loop begins, and is typically used to initialize the loop variable. The ```condition``` statement is then evaluated before each iteration; if the condition is true, the loop continues, but if it evaluates to false, the loop exits. After each iteration, the ```post``` statement is executed, usually to update the loop variable. This cycle continues until the condition becomes false, at which point the loop terminates.
    - ***For Loop Over Collections:***
      - Go doesn’t have a traditional for-each loop like some other languages. Instead, use the ```range``` keyword to iterate over elements in a collection  This keyword returns both the index and the value of the elements. If the index is not needed, use ```_``` to ignore it:
        ```go
        for _, value := range collection {
          // code to be executed
        }
        ```
      - ***Infinite loops***:
        - You can create an infinite loop in Go by omitting the initialization, condition, and post statements. For example:
          ```go
          for {
              // code to be executed
          }
          ```
        - This loop will continue indefinitely until it’s terminated manually or by a break statement.
- ### Java:
  - ***Libraries***:
    - ```java.io```: Handles input and output operations. Provides classes like ```BufferedReader``` and ```InputStreamReader``` to read input from the console.
    - ```java.math```: Performs mathematical operations on large numbers. Includes classes like ```BigInteger``` for working with integers of arbitrary size.
    - ```java.security```: Manages security-related tasks. Offers classes like ```MessageDigest``` for generating hash values and ```SecureRandom``` for generating secure random numbers.
    - ```java.text```: Formats and parses text. Contains classes like ```SimpleDateFormat``` for formatting dates and ```DecimalFormat``` for formatting numbers.
    - ```java.util```: Works with collections and utility classes. Includes classes like ```Scanner``` for reading input and ```ArrayList``` for storing elements dynamically.
    - ```java.util.concurrent```: Supports concurrent programming. Provides classes like ```ExecutorService``` and ```Future``` to manage asynchronous tasks.
    - ```java.util.function```: Works with functional interfaces and lambda expressions. Includes classes like ```Function``` and ```Predicate``` for defining and using functions as objects.
    - ```java.util.stream```: Performs functional-style operations on collections. Includes classes like ```IntStream``` and ```Stream``` for working with streams of elements.
    - ```java.util.regex```: Manages regular expressions. Provides classes like ```Pattern``` and ```Matcher``` for pattern matching in strings.
    - ```java.util.stream.Collectors.joining```: Concatenates elements of a stream into a single string. Accepts a delimiter as an argument and returns a ```Collector``` that concatenates elements using the specified delimiter.
    - ```java.util.stream.Collectors.toList```: Collects elements of a stream into a list. Returns a ```Collector``` that accumulates the elements into a new list.
  - ***Classes***:
    - ***Main Method***:
      - The ```main``` method is the entry point of a Java program. It’s a special method that the Java Virtual Machine (JVM) looks for when starting a program. The required signature is ```public static void main(String[] args).``` The ```args``` parameter is an array of strings that can be passed to the program from the command line.
    - ***Static Method***:
      - A static method belongs to the class itself, not to instances of the class. It can be called without creating an object of the class, making it ideal for utility functions that don’t require access to instance variables. For example:
        ```java
        public static void printMessage() {
            System.out.println("Hello, World!");
        }
        ```
    - ***Public Static meaning***:
      - The ```public``` keyword is an access modifier that allows a class, method, or field to be accessed from any other class. The ```static``` keyword indicates that the method or field belongs to the class itself, rather than to instances of the class. This means you can call a static method or access a static field without creating an object of the class.
  - ***For loops in Java***:
    - The syntax of a ```for``` loop in Java is similar to that in other programming languages like C and C++. The basic structure is:
      ```java
      for (initialization; condition; post) {
          // code to be executed
      }
      ```
  - ***Array & List***:
    - ***Array***:
      - In Java, an array is a fixed-size collection of elements of the same type. You can create an array by specifying the type of elements and the number of elements. For example:
        ```java
        int[] numbers = new int[5];
        ```
      - This code creates an array named ```numbers``` that can hold 5 integers. The elements are initialized to their default values (0 for integers).
      - To access elements of an array, use the index of the element within square brackets. Array indices start at 0, so the first element of the array has index 0, the second element has index 1, and so on.
      - ***Array Length***:
        - You can get the length of an array using the ```length``` property. For example:
          ```java
          int[] numbers = {1, 2, 3, 4, 5};
          int length = numbers.length;
          ```
        - This code initializes an array with 5 integers and stores its length in the variable ```length```.
    - ***ArrayList***:
      - A list is an ordered collection of elements that can contain duplicates. Unlike arrays, lists are dynamic and can grow or shrink in size. The ```java.util.List``` interface is the base interface for all list implementations in Java.
      - ***ArrayList***:
        - ```ArrayList``` is a resizable array implementation of the ```List``` interface. You can add, remove, and access elements at specific positions. To create an ```ArrayList```, use the following syntax:
          ```java
          List<Integer> numbers = new ArrayList<>();
          ```
        - This code creates an ```ArrayList``` named ```numbers``` that can hold integers. The ```ArrayList``` class is a generic class, so you need to specify the type of elements it will contain within angle brackets (```< >```).
        - ***Adding Elements***:
          - To add elements to an ```ArrayList```, you can use the ```add()``` method. For example:
            ```java
            numbers.add(1);
            numbers.add(2);
            numbers.add(3);
            ```
          - This code adds the integers 1, 2, and 3 to the ```ArrayList``` named ```numbers```. The elements are added to the end of the list.
        - ***Accessing Elements***:
          - To access elements of an ```ArrayList```, use the ```get()``` method with the index of the element. For example:
            ```java
            int firstElement = numbers.get(0);
            ```
          - This retrieves the first element of the ```ArrayList``` and stores it in the variable firstElement. The index of the first element is 0.
        - ***Iterating Over Elements***:
          - To iterate over the elements of an ```ArrayList```, you can use a for loop with the ```size()``` method to get the number of elements and the ```get()``` method to access each element. For example:
            ```java
            for (int i = 0; i < numbers.size(); i++) {
                int element = numbers.get(i);
                System.out.println(element);
            }
            ```
          - This code iterates over the elements of the ```ArrayList``` named ```numbers``` and prints each element to the console. The loop runs from index 0 to the index of the last element in the list
- ### Javascript
  - ***Standard Input Handling***:
    - The ```'use strict'``` directive enables strict mode in JavaScript, which helps catch common programming errors and makes code more secure. It’s recommended to use strict mode in all JavaScript code to improve code quality and maintainability.
    - ```const fs = require('fs')```: Imports the Node.js file system module, which provides functions for working with the file system. The ```fs``` module allows you to read and write files, create directories, and perform other file-related operations.
    - ```process.stdin.resume()```: Resumes the standard input stream, allowing the program to read input from the console. This is necessary to read user input interactively.
    - ```process.stdin.setEncoding('utf-8')```: Sets the encoding of the standard input stream to UTF-8, which ensures that characters are correctly interpreted when reading input from the console.
  - ***Function Declaration***:
    - In JavaScript, functions are defined using the ```function``` keyword, followed by the function name, parameters, and body. For example:
      ```javascript
      function add(a, b) {
          return a + b;
      }
      ```
    - The function name is followed by the parameter list in parentheses. Each parameter consists of the parameter name. The function body contains the code that the function executes, including variable declarations, calculations, and return statements.
    - To call a function, you use the function name followed by the arguments in parentheses. For example:
      ```javascript
      const sum = add(3, 5);
      ```
    - This code calls the ```add()``` function with arguments 3 and 5 and assigns the result to the variable ```sum```.
    - The ```function``` keyword is used to define functions in JavaScript, similar to ```def``` in Python or ```func``` in Go.
  - ***Variable Declaration***:
    - In JavaScript, you can declare variables using the ```let``` or ```const``` keywords. The ```let``` keyword is used for mutable variables, while the ```const``` keyword is used for constants. For example:
      ```javascript
      let x = 5;
      const y = 10;
      ```
    - This code declares a mutable variable ```x``` with the value 5 and a constant ```y``` with the value 10. JavaScript can infer the type of a variable based on the value assigned to it:
      ```javascript
      const z = 15;
      ```
    - Here, a constant ```z``` is declared and initialized with the value 15. JavaScript infers that the type of ```z``` is a number based on the assigned value.
  - ***For Loop***:
    - In JavaScript, you can use a ```for``` loop to iterate over elements in an array. The basic syntax of a ```for``` loop in JavaScript is:
      ```javascript
      for (let i = 0; i < array.length; i++) {
          // code to be executed
      }
      ```
    - The loop variable ```i``` is initialized to 0, and the loop continues as long as ```i``` is less than the length of the array. The loop variable is typically used as an index to access elements of the array.
    - ```array.length``` returns the number of elements in the array, similar to the ```size()``` method in Java / C++ or the ```len()``` function in Python.
    - ***Alternative Approach***:
      - An alternative approach is to use the ```reduce()``` method to calculate the sum of elements in an array. The ```reduce()``` method applies a function to each element of the array, accumulating a single result. For example:
        ```javascript
        const sum = ar.reduce((acc, curr) => acc + curr, 0);
        ```
      - This code uses the ```reduce()``` method to sum the elements of the array ```ar```. The initial value of the accumulator is 0, and the function adds each element to the accumulator. The result is stored in the variable ```sum```.
      - ***Time Complexity***:
        - The time complexity of the ```reduce()``` method is O(n), where n is the number of elements in the array. The method iterates over each element once, accumulating the sum. This approach is efficient and suitable for arrays of various sizes.
        - The ```reduce()``` method is concise and expressive, making it a good choice for summing elements in an array. It leverages functional programming concepts and can be used with other array operations like filtering and mapping.
- ### Kotlin:
  - ***Libraries***:
    - ```kotlin.collections```: Provides collection utilities like ```List```, ```Set```, and ```Map``` for storing and managing data.
    - ```kotlin.comparisons```: Offers utilities for comparison operations, including functions to compare values and sort collections.
    - ```kotlin.io```: Handles input and output operations, offering utilities for reading and writing data.
    - ```kotlin.jvm```: Facilitates interoperability with the Java Virtual Machine (JVM), including classes and functions for seamless integration.
    - ```kotlin.jvm.functions```: Supports functional programming on the JVM, providing interfaces for lambda expressions and function types.
    - ```kotlin.jvm.internal```: Contains internal support classes for Kotlin's JVM interoperability, typically not used directly by developers.
    - ```kotlin.ranges```: Offers range utilities like ```IntRange``` and ```LongRange``` for creating and working with ranges of values.
    - ```kotlin.sequences```: Provides utilities for working with sequences, which are lazy collections that evaluate elements as needed.
    - ```kotlin.text```: Handles text processing with utilities like ```String```, ```StringBuilder```, and ```Regex``` for manipulating and matching strings.
  - ***Functions in Kotlin***:
    - In Kotlin, functions are defined using the ```fun``` keyword, followed by the function name, parameters, return type (if any), and body. For example:
      ```kotlin
      fun add(a: Int, b: Int): Int {
          return a + b
      }
      ```
    - The function name is followed by the parameter list in parentheses. Each parameter consists of the parameter name and type. If multiple parameters have the same type, you can specify the type after the last parameter name. The return type is specified after the parameter list, separated by a colon. If the function doesn’t return a value, you can use the ```Unit``` type, which is similar to ```void``` in Java.
    - The function body is enclosed in curly braces and contains the code that the function executes. You can define variables, perform calculations, and call other functions within the function body.
    - To call a function, you use the function name followed by the arguments in parentheses. For example:
      ```kotlin
      val sum = add(3, 5)
      ```
    - This code calls the ```add()``` function with arguments 3 and 5 and assigns the result to the variable ```sum```.
    - The ```fun``` keyword is used to define functions in Kotlin, similar to ```def``` in Python or ```function``` in JavaScript.
- ***Variable Declaration in Kotlin:***:
  - In Kotlin, you can declare variables using the ```val``` or ```var``` keywords. The ```val``` keyword is used for read-only variables (similar to ```final``` in Java), while the ```var``` keyword is used for mutable variables. For example:
    ```kotlin
    val x: Int = 5
    var y: Int = 10
    ```
    - This code declares a read-only variable ```x``` with the value 5 and a mutable variable ```y``` with the value 10. Kotlin can infer the type of a variable based on the value assigned to it:
      ```kotlin
      val z = 15
      ```
  - Here, a read-only variable ```z``` is declared and initialized with the value 15. Kotlin infers that the type of ```z``` is ```Int``` based on the assigned value.
- ***For loop in Kotlin***:
    - Kotlin does not have the traditional C-style for loop. Instead, it uses a 'for-in' loop to iterate over ranges or collections. The basic syntax of a for loop in Kotlin is:
      ```kotlin
      for (element in collection) {
          // code to be executed
      }
      ```
    - The 'for-in' loop iterates over each element in the collection and executes the code block for each element. The loop variable 'element' takes on the value of each element in turn. Similar to the range-based for loop in C++ or 'for-in' loop in Python, this loop simplifies iteration over collections.
- ### Python:
  - ***Alternative approach:***
    - Use a for loop to iterate over the elements of the array and calculate the sum. This approach is more explicit and easier to understand for beginners. Solution:
      ```python
      sum = 0
      for num in ar:
          sum += num
      ```
      - ***Time Complexity***:
        - The time complexity of this solution is O(n), where n is the number of elements in the array. The loop iterates over each element once, adding it to the sum. This approach is efficient and suitable for arrays of various sizes. 
        - While this method is effective, for very large arrays, it may be slower compared to using built-in functions like ```sum()``` or ```reduce()```. The performance difference is typically negligible for small arrays but becomes more significant as the array size increases.
- ### R:
  - ***Functions in R***:
    - In R, functions are defined using the ```function()``` keyword, with the function name assigned using the ```<-``` operator. The function definition includes the parameters and the function body. For example:
      ```r
      add <- function(a, b) {
          return(a + b)
      }
      ```
    - The function name is followed by the parameter list in parentheses. The body of the function contains the code that the function executes. You can define variables, perform calculations, and call other functions within the function body.
    - To call a function, you use the function name followed by the arguments in parentheses. For example:
      ```r
      sum <- add(3, 5)
      ```
    - This code calls the ```add()``` function with arguments 3 and 5 and assigns the result to the variable ```sum```.
    - The ```function()``` keyword is used to define functions in R, similar to ```def``` in Python or ```function``` in JavaScript.
  - ***Built-in Functions***:
    - R provides several built-in functions for common operations like summing elements of a vector. The ```sum()``` function calculates the sum of the elements in a vector. For example:
      ```r
      sum <- sum(ar)
      ```
    - This code calculates the sum of the elements in the vector ```ar``` and stores the result in the variable ```sum```. The ```sum()``` function is efficient and concise, making it a good choice for summing elements in a vector.
    - ***Time Complexity***:
      - The time complexity of the ```sum()``` function is O(n), where n is the number of elements in the vector. The function iterates over each element once, adding it to the sum. This approach is efficient and suitable for vectors of various sizes.
    - ***Performance***:
      - The ```sum()``` function is optimized for performance and is typically faster than using a for loop to sum elements in a vector. It leverages internal optimizations and vectorized operations to calculate the sum efficiently. For large vectors, using the ```sum()``` function can lead to faster execution compared to manual iteration.
- ### Swift:
  - ***Functions in Swift***:
    - In Swift, functions are defined using the ```func``` keyword, followed by the function name, parameters, return type (if any), and body. For example:
      ```swift
      func add(a: Int, b: Int) -> Int {
          return a + b
      }
      ```
    - The function name is followed by the parameter list in parentheses. Each parameter consists of the parameter name and type. The return type is specified after the parameter list, preceded by an arrow (```->```). If the function doesn’t return a value, you can omit the return type.
    - The function body is enclosed in curly braces and contains the code that the function executes. You can define variables, perform calculations, and call other functions within the function body.
    - To call a function, you use the function name followed by the arguments in parentheses. For example:
      ```swift
      let sum = add(a: 3, b: 5)
      ```
    - This code calls the ```add()``` function with arguments 3 and 5 and assigns the result to the variable ```sum```.
    - The ```func``` keyword is used to define functions in Swift, similar to ```def``` in Python or ```function``` in JavaScript.
  - ***Variable Declaration in Swift***:
    - In Swift, you can declare variables using the ```var``` or ```let``` keywords. The ```var``` keyword is used for mutable variables, while the ```let``` keyword is used for constants. For example:
      ```swift
      var x: Int = 5
      let y: Int = 10
      ```
    - This code declares a mutable variable ```x``` with the value 5 and a constant ```y``` with the value 10. Swift can infer the type of a variable based on the value assigned to it:
      ```swift
      let z = 15
      ```
    - Here, a constant ```z``` is declared and initialized with the value 15. Swift infers that the type of ```z``` is ```Int``` based on the assigned value.
  - ***For loops in Swift***:
    - In Swift, you can use a for-in loop to iterate over elements in a collection or a range. The basic syntax of a for-in loop in Swift is:
      ```swift
      for element in collection {
          // code to be executed
      }
      ```
    - The for-in loop iterates over each element in the collection and executes the code block for each element. The loop variable ```element``` takes on the value of each element in turn. This loop simplifies iteration over collections and ranges in Swift.