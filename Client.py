import paho.mqtt.client as mqtt
import json
import csv
from datetime import datetime
dt = datetime.now()
daten = str(datetime.now().date())

file_name = "Exercise_Log_" + daten;

data_header = ['Position', 'Duration','Date','Time']
f = open(file_name, "a", newline="")
writer = csv.writer(f)

def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
    client.subscribe("PositionCheck")


def on_message(client, userdata, msg):
    #print(str(msg.payload))
    message = msg.payload.decode()
    DictPos = json.loads(message)
    date = datetime.now().date()
    time = datetime.now().time()
    print(list(DictPos.values())[0]," , ", list(DictPos.values())[1],date,time)
    temp = (list(DictPos.values())[0] , list(DictPos.values())[1],date,time)
    
    writer.writerow(temp)

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
 
client.connect("test.mosquitto.org", 1883, 60)
client.loop_forever()
