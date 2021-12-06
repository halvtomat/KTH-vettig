#!/usr/bin/env python3

import random
import sys
import csv

def doesPatientArrive():
	return random.random() < (300/1440) # Number of minutes in a day

def runSimulation():
	visitors = 0
	for _ in range(1440):
		if doesPatientArrive():
			visitors += 1
	return visitors

def main():
	days = int(sys.argv[1])
	with open('data2.csv', 'w') as out:
		writer = csv.writer(out)
		for _ in range(0, days):
			writer.writerow([runSimulation()])

if __name__ == "__main__":
	main()