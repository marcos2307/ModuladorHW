import os

file = open("triang.txt",'w')
for t in range(0, (2**14)):
    file.write(hex(t) + '\n')
for t in range(((2**14) - 2), -1,-1):
    file.write(hex(t) + '\n')
for t in range(-1, -(2**14 -1),-1):
    file.write(hex(t) + '\n')
for t in range(-(2**14) + 1, -1):
    file.write(hex(t) + '\n')
file.write(hex(t) + '\n')
file.close()