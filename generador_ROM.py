import os

file = open("triang",'w')
for t in range(0, 0x4000):
    file.write(hex(t) + '\n')
for t in range((0x4000 - 0x0002), -1,-1):
    file.write(hex(t) + '\n')
for t in range(0xFFFF, 0xC000,-1):
    file.write(hex(t) + '\n')
for t in range(0xC000, 0xFFFF):
    file.write(hex(t) + '\n')
file.write(hex(0xFFFF) + '\n')
file.close()