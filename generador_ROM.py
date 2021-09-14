import os

def padded_hex(i, l):
    given_int = i
    given_len = l

    hex_result = hex(given_int)[2:] # remove '0x' from beginning of str
    num_hex_chars = len(hex_result)
    extra_zeros = '0' * (given_len - num_hex_chars) # may not get used..

    return ('0x' + hex_result if num_hex_chars == given_len else
            '?' * given_len if num_hex_chars > given_len else
            '0x' + extra_zeros + hex_result if num_hex_chars < given_len else
            None)

file = open("triang.txt",'w')
for t in range(0, 0x4000):
    file.write(padded_hex(t,4) + '\n')
for t in range((0x4000 - 0x0002), -1,-1):
    file.write(padded_hex(t,4) + '\n')
for t in range(0xFFFF, 0xC000,-1):
    file.write(padded_hex(t,4) + '\n')
for t in range(0xC000, 0xFFFF):
    file.write(padded_hex(t,4)   + '\n')
file.write(hex(0xFFFF) + '\n')
file.close()


