"""
The code below generates a given number of random strings that consists of numbers and
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
#First I immport neeed liberies
import random
#Finally I decided to use try/except functions so I don't need second libary
#import sys

#In the next step I define functions
#I guess that a list of characters from which elements fo the string will be randomly choosen doesn't need to be passed as an argument
def random_string_generator(l):
    '''This function generates a string with a length of l, choosing from the elements of a list'''
    a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']
    p = 0
    s = ''
    while p<l:
        s += random.choice(a)
        p += 1
    return s

#I changed capital letters to lowercase as it is recommended for function names
def batch_string_generator(s_num, s_min, s_max):
    '''This function uses random_string generator function in order to generate a number of strrings equal to s_num with their lenght in the range between s_min and s_max'''
    result = []
    for i in range(s_num):
        if s_min < s_max:
            l = random.choice(range(s_min, s_max))
        elif s_min == s_max:
            l = s_min
        #Finally I don't need this code, because if s_min is greater then s_max I will recive an error
        # else:
        #     sys.exit('Incorrect min and max string lengths. Try again.')
        result.append(random_string_generator(l))
    return result

#To make sure that everything is ok, and that the input is correct I will use try except

try:
    s_min = int(input('Enter minimum string length: '))
    s_max = int(input('Enter maximum string length: '))
    s_num = int(input('How many random strings to generate? '))
    print(batch_string_generator(s_num, s_min, s_max))
except:
    print("Incorrect input.")
