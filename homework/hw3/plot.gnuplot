set terminal epslatex size 10cm,10cm 
set output 'plot.tex'
set datafile separator ','
set logscale
set title 'Wealth plot'
set xlabel 'Rank'
set ylabel 'Wealth worth in billions'
a = exp(5.947681)
b = -0.781401
f(x) = a * x ** b
plot 'data.csv' using 1:2 with lines title 'data',\
	f(x) with lines title 'power curve'