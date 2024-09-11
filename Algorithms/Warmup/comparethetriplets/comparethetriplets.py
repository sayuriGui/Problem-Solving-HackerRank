#!/bin/python3

import math
import os
import random
import re
import sys

def compareTriplets(a, b):
    """
    The function takes in two lists a and b. It compares the integers in the lists and returns a list containing the number of times the integers in list a are greater than the integers in list b and the number of times the integers in list b are greater than the integers in list a.
    :param a: a list of integers
    :param b: a list of integers
    :return: a list of 2 integers
    """
    alice = 0
    bob = 0
    for i in range(3):
        if a[i] > b[i]:
            alice += 1
        elif a[i] < b[i]:
            bob += 1
    return [alice, bob]

    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    result = compareTriplets(a, b)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
