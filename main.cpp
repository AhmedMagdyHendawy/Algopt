#include <iostream>
#include <math.h>
#include <time.h>

#include "backtrackinglinesearch.h"
#include "randomrestartmethod.h"
#include "utils.h"

using namespace std;


double f(vector<double> x){
    // f(x1,x2)=x1^2+x2^2
   return pow(x[0],2)+pow(x[1],2);
}

vector<double> df(vector<double> x){
    // df(x1,x2)=[2x1 2x2]
   return {2*x[0],2*x[1]};
}

int main()
{   
    clock_t t;
    std::unordered_map<string, double> param_map=utils::cfg_parsing("../algopt.cfg");
    // backtracking line search parameters 
    vector<double> x0={param_map["x0:1"],param_map["x0:2"]};
    double alpha=param_map["alpha"];
    double alpha_dec=param_map["alpha_dec"];
    double alpha_inc=param_map["alpha_inc"];
    double tol=param_map["tol"];
    double wolfe_para=param_map["wolfe_para"];
    // restarting algorithm parameters
    double from=param_map["from"];
    double to=param_map["to"];
    double no_restarts=param_map["no_restarts"];
    int verbose=(int)param_map["verbose"];
    std::cout<<(int)param_map["verbose"]<<"verbosity"<<std::endl;


    vector<double> x_opt;



    t=clock();
    backtrackingLineSearch method(x0,alpha,alpha_dec,alpha_inc,wolfe_para,tol,WOLFE_CONDITION,f,df,verbose,"solutionPath.dat");
    randomRestartMethod alg(method,from,to,(int)no_restarts,verbose);
    alg.optimize();
    t = clock() - t;
    double time_taken = ((double)t)/CLOCKS_PER_SEC; // calculate the elapsed time
    printf("The program took %f seconds to execute", time_taken);
    printf("\n");
    return 0;
}
