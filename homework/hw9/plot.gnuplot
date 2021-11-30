set terminal epslatex size 12cm,8cm
set output 'logplot.tex'
set datafile separator ','
set logscale y 
set logscale x 2
set xlabel 'log(Number of simulations)'
set ylabel 'log(Average payoff)'
plot 'data.csv' using 1:2 with lines title 'Data'