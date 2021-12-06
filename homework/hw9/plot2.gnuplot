set terminal epslatex size 12cm,8cm
set output 'plot2.tex'
set datafile separator ','
set ylabel 'Frequency'
set xlabel 'Number of visitors in a day'
binwidth = 5
bin(x, width)=width*floor(x/width)
set style fill solid 0.5
plot 'data2.csv' using (bin($1, binwidth)):(1.0) smooth freq with boxes notitle