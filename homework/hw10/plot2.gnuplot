set terminal epslatex size 10cm,10cm
set output 'plot2.tex'
set datafile separator ','

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth 0.5
set pointsize 0.5

unset key
set border 2
set xtics ("Original" 1, "New" 2) scale 0.0
set yrange [5:15]

plot 'data1.csv' u (1):1 notitle, 'data2.csv' u (2):1 notitle

