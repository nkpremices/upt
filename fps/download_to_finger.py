import serial, time, datetime, struct
# http://fingerprint-module-r305-python-and-mysql....
import sys
import os
import pymysql
import binascii

cnx = pymysql.connect(user='root', password='', host='localhost', database='fingerdb')
cur = cnx.cursor()
ser = serial.Serial("COM6", baudrate=9600, timeout=1)
pack = [0xef01, 0xffffffff, 0x1]


def readPacket():
    time.sleep(1)
    w = ser.in_waiting()
    ret = []
    if w >= 9:
        s = ser.read(9)  # partial read to get length
        ret.extend(struct.unpack('!HIBH', s))
        ln = ret[-1]

        time.sleep(1)
        w = ser.in_waiting()
        if w >= ln:
            s = ser.read(ln)
            form = '!' + 'B' * (ln - 2) + 'H'
            ret.extend(struct.unpack(form, s))
    return ret


def readPacket1():
    time.sleep(1)
    w = ser.in_waiting()

    time.sleep(1)
    pack_str = 'B' * 688

    cur.execute("select finger from fingerdb where name='%s'" % name)
    row = cur.fetchone()
    srow = str(row[0])
    v = binascii.unhexlify(srow)
    form1 = 'B' * 688
    ret1 = []
    ret1.extend(struct.unpack(form1, v))
    x = ret1
    s = struct.pack(pack_str, *x)
    ser.write(s)
    if store(idno):
        print("store error")
        sys.exit(0)


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


def DownChar(buf):  # download character file or template from upper computer to the specified buffer of Module
    data = [0x9, buf]
    writePacket(data)
    s = readPacket1()


def store(id):  # store the template of specified buffer (Buffer1/Buffer2) at the designated location of Flash library
    data = [0x6, 0x1, 0x0, id]
    writePacket(data)
    s = readPacket()
    return s[4]


name = input('enter the name please')
idno = int(input('enter the store id'))
if verifyFinger():  # Verify Password
    print("Verification Error")
    sys.exit(0)
if DownChar(1):
    print("Template Error")
    sys.exit(0)