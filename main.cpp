#include <iostream>
#include <math.h>
#include <time.h>

#include "backtrackinglinesearch.h"
#include "randomrestartmethod.h"

using namespace std;


double f(vector<double> x){
    // f(x1,x2)=x1^2+x2^2
   return pow(x[0],2)+pow(x[1],2);
//    return -((sin(x[0]))/x[0])-((sin(x[1]))/x[1]);
    // int a=6;
    // int c=1;
    // return pow(sin(a*x[0]),2)+pow(sin(a*x[1]),2)+4*pow(x[0],2)+4*c*(pow(x[1],2));
}

vector<double> df(vector<double> x){
    // df(x1,x2)=[2x1 2x2]
   return {2*x[0],2*x[1]};
//    return {-1*((cos(x[0])*x[0]-sin(x[0]))/(pow(x[0],2))), -1*((cos(x[1])*x[1]-sin(x[1]))/(pow(x[1],2)))};
    // return {16*sin(6*x[0])*cos(6*x[0])+8*x[0], 16*sin(6*x[1])*cos(6*x[1])+8*x[1]};
}

int main()
{
    clock_t t;
    vector<double> x0={4,0.1};
    double alpha=1;
    double alpha_dec=0.5;
    double alpha_inc=1.2;
    double tol=0.001;
    double wolfe_para=0.01;

    vector<double> x_opt;



    t=clock();
    backtrackingLineSearch method(x0,alpha,alpha_dec,alpha_inc,wolfe_para,tol,WOLFE_CONDITION,f,df,true,"solutionPath.dat");
    randomRestartMethod alg(method,-2.0,2.0,8,true);
    alg.optimize();
//    x_opt=method.optimize();
    t = clock() - t;
    double time_taken = ((double)t)/CLOCKS_PER_SEC; // calculate the elapsed time
    printf("The program took %f seconds to execute", time_taken);

    return 0;
}
