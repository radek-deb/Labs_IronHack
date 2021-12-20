"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""

#I change the name of the function so it gives more information
#I also change the name of the variable from capitam X to num, so its easier to read and to avoid Capital letters


def longest_side_triangle(num):
    #I change nested loops for list comprehnstion
    solutions = [(x, y, z) for x in range(5, num) for y in range(4, num) for z in range(3, num) if x*x ==y*y +z*z]

    #I also change this part of code to list comprehantion. Then I find maximum value in that list.
    list_max = [max(solution) for solution in solutions]
    m = max(list_max)
    return m

#Now I create a try/except solution in order to handle bad input from the user
try:
    num = int(input("What is the maximal length of the triangle side? Enter a number: "))
    if num > 5:
        #Here I also changed the formating
        print(f"The longest side possible is {longest_side_triangle(num)}")
    else:
        print("You entered a number below 5")
except:
    print("Wrong input")
