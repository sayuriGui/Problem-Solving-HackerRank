#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'simpleArraySum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.
#

def simpleArraySum(ar):
    """
    This function takes an array of integers as input and returns the sum of all the integers in the array.
    :param ar: List of integers
    :return: Sum of all the integers in the array
    """

    return sum(ar) 
    # Other way to solve this problem
    # sum = 0
    # for i in ar:  
    #     sum += i
    # return sum
    # But the first way is more efficient
    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    ar_count = int(input().strip())

    ar = list(map(int, input().rstrip().split()))

    result = simpleArraySum(ar)

    fptr.write(str(result) + '\n')

    fptr.close()
