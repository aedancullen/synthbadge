import math

def gen_cycle():
    for i in range(31):
        print("mov out, ", end='')
        print(hex(int(15*(math.sin(i/32*2*math.pi)+1)/2)))
        print("mov r1, ", end='')
        print(0xF)
        print("mov r2, ", end='')
        print(hex(0))
        print("mov r3, ", end='')
        print(hex(0))
        print("gosub delay")
        print("mov r9, r9")
        print("mov r9, r9")

    print("mov out, ", end='')
    print(hex(int(15*(math.sin(31/32*2*math.pi)+1)/2)))
    print("mov r1, ", end='')
    print(0xF)
    print("mov r2, ", end='')
    print(hex(0))
    print("mov r3, ", end='')
    print(hex(0))
    print("gosub delay")
    print("goto loop")

gen_cycle()
