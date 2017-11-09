#!/usr/bin/python
# -*- coding: utf-8 -*-

a = ("Lietotāj, lūdzu, ievadi savu vārdu: ")
b = ("Lietotāj, lūdzu, ievadi savu uzvārdu: ")
print "Tātad, Tevi sauc - %s%(a + b)

#shell
#echo "Lietotāj, lūdzu, Ievadi kaut ko:"
#read a
#python
#print "Lietotāj, lūdzu, Ievadi kaut ko:"
#a = input
a = input("Lietotāj, lūdzu, ievadi kaut ko: ")
print "Ty esi ievadījis %s tipa datus"%(type(a))
print a * a
print a + a

a = raw_input("Lietoāj, lūdzu, ievadi kaut ko: ")
print "Tu esi ievadījis %s tipa datus"%(type(a))
#print a * a

