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
    - In this part of the code, could be used the following syntax:
        ```cpp
        for (int i = 0; i < 3; i++) {
            if (a[i] > b[i]) alice++; 
            else if (a[i] < b[i]) bob++; 
            }
        ```
    - C++ allows not to use the curly braces when the if statement has only one line of code. However, it is a good practice to use them to avoid confusion and errors in the future.
- ### Java:
- ### JavaScript:
- ### Python:
- ### R: