Given two integers,  and , identify whether  or  or .

Exactly one of the following lines:
- X is less than Y
- X is greater than Y
- X is equal to Y

Input Format

Two lines containing one integer each ( and , respectively).

Constraints

-

Output Format

Exactly one of the following lines:
- X is less than Y
- X is greater than Y
- X is equal to Y

Sample Input

Sample Input 1

5  
2  
Sample Input 2

2
2  
Sample Input 3

2
3  
Sample Output

Sample Output 1

X is greater than Y  
Sample Output 2

X is equal to Y   
Sample Output 3

X is less than Y  
answer
---------
#!/bin/bash
read X
read Y
if [ $X -lt $Y ]; then
    echo "X is less than Y"
elif [ $X -eq $Y ];then 
    echo "X is equal to Y"    
fi    

* Exercise 2
----------------
* A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to  decimal places.

solution:
----------
#!/bin/bash
read line;
printf "%.3f" $(echo "scale = 4; $line" | bc);


