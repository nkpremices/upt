import zerorpc
from ast import literal_eval
import json

coming = zerorpc.Client()
coming.connect("tcp://0.0.0.0:4242")
data = coming.data_to_send()
#print(data)
data = data.replace("[","")
data = data.replace("]","")
data = data.replace("'","\"")
temp = ""
#print(type(data))
data = data.split("}, ")
i=0
#temp=data[-1]
for e in data:
    if i!=len(data)-1:
        e+="}"
        json.loads(e)
        data[i]= e
        i+=1
    else :
        json.loads(e)
#data[-1]=temp
print(data)


