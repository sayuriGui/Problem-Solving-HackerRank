<div id="top"></div>

<br />

<div align="center">
  <a href="https://github.com/sayuriGui/inteligencia-artificial.git">
    <img src="https://skillicons.dev/icons?i=github" alt="Github" width="80" height="80">
  </a>
<h3 align="center">Compare the triplets</h3>
  <p align="center">
        HackerRank
</div>

## Solutions with:

<div>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/comparethetriplets/comparethetriplets.cpp">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=cpp"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/comparethetriplets/comparethetriplets.java">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=java"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/comparethetriplets/comparethetriplets.js">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=js"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/comparethetriplets/comparethetriplets.py">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=py"/>
</a>
<a href="https://github.com/sayuriGui/Problem-Solving-HackerRank/blob/main/Algorithms/Warmup/comparethetriplets/comparethetriplets.r">
  <img width="50px" height="50px" src="https://skillicons.dev/icons?i=r"/>
</a>
</div>

## Description of the problem
Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty. The rating for Alice's challenge is the triplet a = (a[0], a[1], a[2]), and the rating for Bob's challenge is the triplet b = (b[0], b[1], b[2]).

The task is to find their comparison points by comparing a[0] with b[0], a[1] with b[1], and a[2] with b[2].

If a[i] > b[i], then Alice is awarded 1 point.
If a[i] < b[i], then Bob is awarded 1 point.
If a[i] = b[i], then neither person receives a point.
Comparison points are the total points a person earned.
Given a and b, determine their respective comparison points.

## Function Description
Complete the function compareTriplets in the editor below.
compareTriplets has the following parameter(s):
- int a[3]: Alice's challenge rating
- int b[3]: Bob's challenge rating

## Returns
- int[2]: Alice's score is in the first position, and Bob's score is in the second.

## Input Format
The first line contains 3 space-separated integers, a[0], a[1], and a[2], the respective values in triplet a.

The second line contains 3 space-separated integers, b[0], b[1], and b[2], the respective values in triplet b.

## Constraints
- 1 ≤ a[i] ≤ 100
- 1 ≤ b[i] ≤ 100

## Sample Input 
```plaintext
5 6 7
3 6 10
```

## Sample Output 
```plaintext
1 1
```

## Explanation 
In this example:
- a = (a[0], a[1], a[2]) = (5, 6, 7)
- b = (b[0], b[1], b[2]) = (3, 6, 10)
- Now, let's compare each individual score:
    - a[0] > b[0], so Alice receives 1 point.
    - a[1] = b[1], so nobody receives a point.
    - a[2] < b[2], so Bob receives 1 point.
    - Alice's comparison score is 1, and Bob's comparison score is 1. Thus, the function returns the array [1, 1].
    - The return array is [1, 1].

## My notes on the solution:
- ### C++:
  - ***If conditional syntax:*** 
    - In C++, it's possible to simplify the ```if``` statement by omitting the curly braces ```{}``` if there is only one line of code inside the block. An alternative approach for the solution can use the following syntax:
        ```cpp
        for (int i = 0; i < 3; i++) {
            if (a[i] > b[i]) alice++; 
            else if (a[i] < b[i]) bob++; 
            }
        ```
    - While C++ allows the omission of curly braces in this case, it is considered a good programming practice to always include braces around the body of conditional statements. This prevents errors in the future, especially if you or others later modify the code to add more lines to the conditional block.
    - **Best Practice**: Using braces even for single-line statements improves readability and maintainability, reducing the risk of introducing bugs when adding new lines.
- ### Java:
  - ***If conditional syntax:***
    - In Java, the if statement can also be simplified by omitting the curly braces when the body consists of a single statement:
      ```java
          for (int i = 0; i < 3; i++) {
            if (a.get(i) > b.get(i)) 
                alice++;
            else if (a.get(i) < b.get(i)) 
                bob++;
          }
      ```
      - Similar to C++, omitting braces in Java is allowed for single-line statements. However, it is highly recommended to always include braces. Doing so ensures that if you later add additional logic to the ``if`` or ```else if``` blocks, you won’t accidentally introduce errors.
      - **Best Practice**: Keeping curly braces around if blocks, even with single-line statements, makes your code easier to read, understand, and extend. It also protects against common pitfalls where new statements are added but mistakenly left outside the intended block.
- ### JavaScript:
  - **No notes.**
- ### Python:
  - ***In range function***
    - The range() function in Python is used to generate a sequence of numbers. It is commonly used in for loops for iterating over a specific sequence of numbers.
      ```python
      range(start, stop, step)
      ``` 
    - start(optional): An integer specifying at which position to start. Default is 0.
    - stop(required): An integer specifying at which position to stop (not included). In other words, the sequence will not include the stop value.
    - step(optional): An integer specifying the incrementation or decrementation. Default is 1. 
    - **Important**: The range() function ***returns*** an iterable that produces numbers on demand, which makes it memory-efficient even for very large ranges. If you need a list from ```range()```, you can convert it using ```list(range(...))```
    - ***Range vs Lists***: Unlike lists,``` range()``` doesn’t store all numbers in memory. It generates them one by one as you loop through.
  - ***Size of the list***
    - In Python, the size (or length) of a list refers to the number of elements it contains. The ```len()``` function is used to determine the size of a list. Example:
      ```python
      list = [1, 2, 3, 4, 5]
      size = len(list) # A different way... print(len(list)) not necessary to create a variable
      print(size) # Output: 5
      ```
      -***Dynamic Sizing***: Python lists are dynamic, meaning they can grow or shrink in size as needed. You can add or remove elements from a list at any time, and the list will automatically adjust its size to accommodate the changes. The time complexity of appending an element to a list is O(1), making it an efficient operation.
- ### R:
  - ***For loop*** 
    - The ```for``` loop in R is used to iterate over elements of a vector, list, or any other collection type. It has a simple and intuitive syntax:
      ```r
      for (variable in collection) {
          # code block
      }
      ```
    - The ```variable``` represents each element in the sequence (like a vector or list) that you're looping over.
    - The ```collection``` is the sequence or range of values that the loop iterates over.
    - ***Break and Next***: Inside a loop, you can use the ```break``` statement to exit the loop prematurely and the ```next``` statement to skip the current iteration and continue with the next one. Example:
      ```r
      for (i in 1:10) {
          if (i == 5) {
              next
          }
          print(i)
          if (i == 8) {
              break
          }
      }
      ```
      - In this example, the loop prints numbers from 1 to 10, but it skips printing 5 and stops after printing 8.
      - **Best Practice**: Using ```break``` and ```next``` statements can help control the flow of your loops and handle specific conditions efficiently. However, overusing these statements can make your code harder to read and understand. Use them judiciously to improve code clarity and maintainability.
    - ***Ranges in For Loop***: R doesn't have a built-in ```range()``` function like Python, but you can create ranges using the colon operator ``(:)`` or the ```seq()``` function.
      ```r
      for (i in 1:5) {
          print(i)
      }
      ```
      - This loop will print the numbers 1 to 5. The ```:``` operator creates a sequence from the starting value to the ending value, inclusive.
      - **Best Practice**: Using the ```:``` operator to create ranges in for loops can simplify your code and make it more readable. It's a common and idiomatic way to iterate over a sequence of numbers in R.
      - ***Seq Function***: The ```seq()``` function in R is used to generate sequences of numbers. It can create sequences with a specified start, end, and step size. Example:
        ```r
        seq(from = 1, to = 10, by = 2)
        ```
        - This code generates a sequence of numbers from 1 to 10 with a step size of 2. The output will be ```1 3 5 7 9```.
      - ***Seq vs Colon Operator***: While the colon operator ```:``` is more concise and commonly used for simple sequences, the ```seq()``` function provides more flexibility and control over the generated sequence. Also, the ```seq()``` function can create sequences with non-integer values, which the colon operator cannot do.