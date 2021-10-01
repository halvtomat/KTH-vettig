import csv

with open('billionaires.csv', 'rb') as inp, open('data.csv', 'wb') as out:
	writer = csv.writer(out)
	for row in csv.reader(inp):
		if row[2] == "2014":
			writer.writerow([row[1],row[15]])