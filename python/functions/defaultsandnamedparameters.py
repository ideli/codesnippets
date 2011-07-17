#!/usr/bin/python3

# parameters
# using default values
# using named parameters
def multiplyMe(no, m=2, n=1):
       return no*m*n

print("mult %d * %d * %d = % d"% (3,2,1,multiplyMe(3) )  )
print("mult %d * %d * %d = % d"% (3,4,1,multiplyMe(3,m=4) )  )
print("mult %d * %d * %d = % d"% (5,2,7,multiplyMe(5,n=7) )  )

