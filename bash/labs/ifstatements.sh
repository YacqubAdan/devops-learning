#!/bin/bash

: '
eq = equals
ne = not equal to
lt = less than
gt = greater than
le = less than or equal to
ge = greater than or equal to

logical operators

&& = AND
|| = OR
! = NOT
'

grade=60


if [ $grade -ge 90 ] && [ $grade -le 100 ]
then
    echo "Excellent!"
elif [ $grade -ge 80 ]
then
    echo "Good!"
else 
    echo "Better Luck Next Time!"
fi 



