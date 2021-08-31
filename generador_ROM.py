import os
file = open("./test", "w")
for k in range(0,2**16):
    file.write('0x' + hex(k%16) + '\n')
file.close()