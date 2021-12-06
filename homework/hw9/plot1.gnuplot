set terminal epslatex size 12cm,8cm
set output 'plot1.tex'
set datafile separator ','
set logscale y 
set logscale x 2
set xlabel '$log_2$(Number of simulations)'
set ylabel '$log$(Average payoff)'
plot 'data1.csv' using 1:2 with lines title 'Data'