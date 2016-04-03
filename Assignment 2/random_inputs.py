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
    for i in range(400):
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
    poi_names = open('poi_names', 'r')
    for i in range(41):
        line = poi_names.readline().rstrip('\n').split(' | ')
        name = line[0]
        desc = line[1]
        if desc == '':
            desc = 'NULL'
        long = round(random.uniform(1,2), 6)
        lat = round(random.uniform(103,104), 6)
        print("('{}', {}, {}, {}),".format(name, long, lat, desc))

def generate_checkin_data():
    for i in range(300):
        user = random.randrange(1,57)
        poi = random.randrange(1,41)
        print("({}, {}),".format(user, poi))

def generate_message_data():
    messages_file = open('messages', 'r')
    messages = messages_file.readlines()
    for message in messages:
        timestamp = '201505'
        date = str(random.randrange(1,31)).zfill(2)
        hour = str(random.randrange(0,23)).zfill(2)
        minute = str(random.randrange(0,59)).zfill(2)
        second = str(random.randrange(0,59)).zfill(2)
        timestamp += date + hour + minute + second
        message = message.rstrip('\n')
        sender = random.randrange(1,57)
        receiver = random.randrange(1,57)
        print("({}, '{}', {}, {}),".format(timestamp, message, sender, receiver))

def generate_comment_data():
    comment_file = open('comments', 'r')
    comments = comment_file.readlines()
    for comment in comments:
        timestamp = '201506'
        date = str(random.randrange(1,31)).zfill(2)
        hour = str(random.randrange(0,23)).zfill(2)
        minute = str(random.randrange(0,59)).zfill(2)
        second = str(random.randrange(0,59)).zfill(2)
        timestamp += date + hour + minute + second
        comment = comment.rstrip('\n')
        sender_id = random.randrange(1,57)
        message_id = random.randrange(1,100)
        print("({}, '{}', {}, {}),".format(timestamp, comment, sender_id, message_id))

generate_comment_data()