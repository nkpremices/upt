import sys
import serial
import struct
import time

# access serial port on the system; '57600' specifies the baud rate
ser = serial.Serial('/dev/ttyUSB0',57600)
# global variable which defines header for command packet
pack = [0xef01, 0xffffffff, 0x1]

# function definition
def readPacket():
    # pause execution for 1 second
    time.sleep(1)
    # Get the number of bytes in the output buffer (integer)
    w = ser.in_waiting()
    # empty array definition
    ret = []
    # if condition ;  if length of w is greater than or equal to 9
    if w >= 9:
        # partial read to get length; read upto 9 bytes and store in 's'
        s = ser.read(9)
        # Extends the ret array by unpacking the 9-byte string's' in the format 'HIBH' and appending it to the array
        ret.extend(struct.unpack('!HIBH', s))
        # 'ln' holds the last byte/item in the array ret[]
        ln = ret[-1]

        # pause execution for 1 second
        time.sleep(1)
        # Get the number of bytes in the output buffer (integer)
        w = ser.in_waiting()
        # if condition ;  if length of w is greater than or equal to ln
        if w >= ln:
            # serial read to get length of ln and store in 's'
            s = ser.read(ln)
            # data format:
            form = '!' + 'B' * (ln - 2) + 'H'
            # Extends the ret array by unpacking the string 's' in the format 'form' and appending it to the array
            ret.extend(struct.unpack(form, s))
        # returns the array ret[]
    return ret


def writePacket(data):
    pack2 = pack + [(len(data) + 2)]
    a = sum(pack2[-2:] + data)
    pack_str = '!HIBH' + 'B' * len(data) + 'H'
    l = pack2 + data + [a]
    s = struct.pack(pack_str, *l)
    ser.write(s)


def verifyFinger():
    data = [0x13, 0x0, 0, 0, 0]
    writePacket(data)
    s = readPacket()
    return s[4]


def genImg():
    data = [0x1]
    writePacket(data)
    s = readPacket()
    return s[4]


def img2Tz(buf):
    data = [0x2, buf]
    writePacket(data)
    s = readPacket()
    return s[4]


def search():  # search the whole finger library for the template that matches the one in CharBuffer1 or CharBuffer2
    data = [0x4, 0x1, 0x0, 0x0, 0x0, 0x5]
    writePacket(data)
    s = readPacket()
    return s[4:-1]


if verifyFinger():
    print("Verification Error")
    sys.exit(-1)

print("Put finger", sys.stdout.flush())

time.sleep(1)
for _ in range(5):
    g = genImg()
    if g == 0:
        break
    print(".", sys.stdout.flush())
print("")
sys.stdout.flush()
if g != 0:
    sys.exit(-1)

if img2Tz(1):
    print("Conversion Error")
    sys.exit(-1)

r = search()
print("Search result", r)
if r[0] == 0:
    print("authentication Successful")
    sys.exit(0)
else:
    print("Authentication fail")
sys.exit(1)
