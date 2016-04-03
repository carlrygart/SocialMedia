# -*- coding: utf-8 -*-
"""
Created on Sun Apr  3 11:11:34 2016
@author: Carl Rygart, E11
"""
from scipy import *
from pylab import *
from matplotlib.pyplot import *
import random as random

def generate_friend_data():
    output = []
    for i in range(150):
        first_friend = random.randrange(1,57)
        second_friend = random.randrange(1,57)
        while (second_friend == first_friend):
            second_friend = random.randrange(1,57)
        string = "('{}', '{}', {}),".format(first_friend, second_friend, 'true')
        if string not in output:
            output.append(string)
    
    for string in output:
        print(string)

def generate_poi_data():
    output = []
    for i in range(41):
        long = round(random.uniform(1,2), 6)
        lat = round(random.uniform(103,104), 6)
        print(", {}, {}),".format(long, lat))

def generate_checkin_data():
    for i in range(300):
        user = random.randrange(1,57)
        poi = random.randrange(1,41)
        print("({}, {}),".format(user, poi))

generate_poi_data()