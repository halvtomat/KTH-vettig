#!/usr/bin/env python3

import random
import sys
import csv
import numpy as np
import math

def flipCoin():
	return random.getrandbits(1)

def playGame(maximum):
	money = 0
	numberOfFlips = 0
	while(flipCoin()):
		money += pow(2, numberOfFlips)
		numberOfFlips += 1
		if money > maximum:
			numberOfFlips -= 1
			money -= pow(2, numberOfFlips)
			break
	return money

def runSimulation(numberOfGames, maximum):
	if numberOfGames == 0:
		return [0, 0]
	games = []
	for _ in range(numberOfGames):
		games.append(playGame(maximum))
	a = np.array(games)
	return [numberOfGames, np.mean(a)]

def main():
	maximumNumberOfGames = math.ceil(math.log2(int(sys.argv[1])))
	maximum = int(sys.argv[2])
	with open('data1.csv', 'w') as out:
		writer = csv.writer(out)
		for i in range(0, maximumNumberOfGames):
			writer.writerow(runSimulation(pow(2,i), maximum))

if __name__ == "__main__":
	main()