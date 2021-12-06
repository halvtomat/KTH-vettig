set terminal epslatex size 10cm,10cm
set output 'plot1.tex'
set datafile separator ','

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth 0.5
set pointsize 0.5

unset key
set border 2
unset xtics
set yrange [5:15]

plot 'data1.csv' u (1):1
