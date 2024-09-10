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
- Go:
  - ***Libraries***:
    - The ```fmt``` package is used to format and print output. It provides functions like ```Println()``` and ```Printf()``` to display text on the console.
    - The ```bufio``` package is used to read input from the console. It provides functions like ```NewScanner()``` and ```Scan()``` to read user input.
    - The ```os``` package is used to handle operating system-related tasks. It provides functions like ```Exit()``` to terminate the program.
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
- Java:
- Kotlin:
- Python:
- R:
- Swift: