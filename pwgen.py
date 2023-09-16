#!/usr/bin/python

import secrets
import string

letters = string.ascii_letters
digits = string.digits
special_list = ["!","#","$","%","&","'","(",")","*","+","-",".","/",":",";","<","=",">","[","\\","]","^","_","`","{","|","}","~","\,","\""]
special_char = ''.join(special_list)

alphabet = letters + digits + special_char

pw_length = 16

pwd = ''
for i in range(pw_length):
   pwd += ''.join(secrets.choice(alphabet))

print(pwd)

