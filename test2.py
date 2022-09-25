import enum
import paho.mqtt.publish as publish
import paho.mqtt.client as mqtt
import paho.mqtt.publish as publish
from timeit import default_timer as timer
import time
import numpy as np
from datetime import timedelta
import json
from random import randint

# Testing inputs to simulate 4 sensors. 
# Each row is a sensor | Input[0] = sensor 1...
Inputs =  np.random.randint(1, 10, size=(4, 15))



# Testing inputs to simulate 4 sensors. 
# Each row is a sensor | Input[0] = sensor 1...
numberOfSensors = 4
numberOfsamples = 10
Inputs =  np.random.randint(1, 10, size=(numberOfSensors, numberOfsamples))

Matrix = [('TopTube',[True,False,True,True]),
            ('Pantani',[True,False,False,False]),
            ('Froome',[True,False,True,False]),
            ('Elbows',[False,True,False,False])]
 
threshold = [4,6,3,5]
# print(Inputs)
 
def publishState( matrix,  timerLapsed):
    posDict = {"positon": None, "time":0 }

    temp = " %.2f" % timerLapsed
    posDict.update({"positon":matrix, "time":temp })
    
    toSend = json.dumps(posDict)
    publish.single("PositionCheck", toSend , hostname="test.mosquitto.org")
    


for i in range(numberOfsamples):
    Dictionary = [False , False , False , False ]
    for j in range(len(Inputs)):
        if Inputs[j][i] >= threshold[j]:
            Dictionary[j] = True

    print(Dictionary)
    for i ,v  in enumerate(Matrix):
        if Dictionary == v[1]:
            print(Matrix[i][0], 'here > ', i)
            publishState(Matrix[i][0],timerLapsed)


