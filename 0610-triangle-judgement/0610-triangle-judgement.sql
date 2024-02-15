
#610. Triangle Judgement
# Write your MySQL query statement below

select x,
    y,
    z,
    if( x+y>z and y+z>x and z+x>y,"Yes","No") as Triangle 
from  Triangle  

