set terminal epslatex size 12cm,10cm
set output 'plot3.tex'
set datafile separator ','

binwidth = 1
bin(x, width)=width*floor(x/width)
set style fill solid 0.5
set linetype 1 lc rgb "#70a288" #polished pine

linewidth = 7
stats 'data3.csv' u 1:0 nooutput
set style arrow 1 nohead filled front lc rgb "blue" lt 0 lw linewidth
set style arrow 2 nohead filled front lc rgb "red" lt 0 lw linewidth
set arrow from STATS_mean_x, graph 0 to STATS_mean_x, graph 1 arrowstyle 1
set arrow from STATS_median_x, graph 0 to STATS_median_x, graph 1 arrowstyle 2

plot 'data3.csv' u (bin($1, binwidth)):(1.0) smooth freq with boxes linecolor 1 t "Data frequency", \
	1/0 t "Median" lt 0 lw linewidth lc rgb "red", \
	1/0 t "Mean" lt 0 lw linewidth lc rgb "blue"
