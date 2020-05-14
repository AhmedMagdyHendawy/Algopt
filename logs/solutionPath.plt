set isosamples 50,50
unset contour
f(x,y)=x**2+y**2
splot [-2:2][-2:2] f(x,y) lc rgb "red", "../logs/solutionPath1.dat" with lines lc rgb "black" lw 4,"../logs/solutionPath2.dat" with lines lc rgb "black" lw 4,"../logs/solutionPath3.dat" with lines lc rgb "black" lw 4
 

