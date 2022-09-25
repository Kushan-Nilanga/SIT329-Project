import paho.mqtt.client as mqtt
import json
import csv
from datetime import datetime
import pandas as pd


df = pd.read_csv(r'/Users/nadav/Desktop/Uni/2022_tri_2/SIT329/Project/code/SIT329-Project/testingCSVfiles/Exercise_Log_2022-09-23_17-36-21.csv')
count1 = df['POSITION'].count()
# print(df)
count = str(df[(df["POSITION"] == "standing")].count())
print(f"counting standing >> {count}" )
# print("counting sitting >>" , df[(df["POSITION"] == "sitting")].count())
# print("counting crossbar >>" , df[(df["POSITION"] == "crossbar")].median())
df.loc['Total'] = pd.Series(df['DURATION'].sum(), index = ['DURATION'])
print(df)
# print(f"Count {count1}")


# new1 = (df["POSITION"].str.contains("sitting"))
# print(new1)

new2 = (df["POSITION"].value_counts()["sitting"])
SittingDuration = (df.loc[df["POSITION"] == "sitting"].sum()["DURATION"])
StandingDuration = (df.loc[df["POSITION"] == "standing"].sum()["DURATION"])
CrossbarDuration = (df.loc[df["POSITION"] == "crossbar"].sum()["DURATION"])
Total = SittingDuration + StandingDuration + CrossbarDuration


print("\n_____Totals are:______ "+
    "\nSitting: \t %.2f"%SittingDuration+
    "\nCrossbar: \t %.2f"%CrossbarDuration+
    "\nStanding: \t %.2f"%StandingDuration+
    "\nTotal: \t \t %.2f"%Total)


