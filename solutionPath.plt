set isosamples 50,50
unset contour
t(x,y)=x**2+y**2
splot [-2:2][-2:2] t(x,y) lc rgb "red", "solutionPath1.dat" with lines lc rgb "black" lw 4,"solutionPath2.dat" with lines lc rgb "black" lw 4,"solutionPath3.dat" with lines lc rgb "black" lw 4,"solutionPath4.dat" with lines lc rgb "black" lw 4,"solutionPath5.dat" with lines lc rgb "black" lw 4,"solutionPath6.dat" with lines lc rgb "black" lw 4,"solutionPath7.dat" with lines lc rgb "black" lw 4,"solutionPath8.dat" with lines lc rgb "black" lw 4
 

