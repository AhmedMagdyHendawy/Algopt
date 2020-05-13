#include <limits>
#include <vector>
#include <math.h>
#include <iostream>

#include "backtrackinglinesearch.h"
#include "utils.h"


using namespace std;


backtrackingLineSearch::backtrackingLineSearch(vector<double> x){
    // NOT Implemented Yet
}
// TODO : Initialization list
backtrackingLineSearch::backtrackingLineSearch(vector<double> x,\
                                               double alpha,\
                                               double alpha_dec,\
                                               double alpha_inc,\
                                               double wolfe_para,\
                                               double tol,\
                                               Condition_Type type,\
                                               double (&f)(vector<double>),\
                                               vector<double> (&df)(vector<double>),
                                               int verbose,
                                               string logFileName): x(x), alpha(alpha),\
                                                                    alpha_dec(alpha_dec),\
                                                                    alpha_inc(alpha_inc),\
                                                                    wolfe_para(wolfe_para),\
                                                                    tol(tol),\
                                                                    type(type),
                                                                    f(&f),\
                                                                    df(&df)
{
    this->verbose=verbose;
    if(verbose!=0) logFile.open(logFileName);
}

void backtrackingLineSearch:: set_x0(vector<double> x0){
    x=x0;
}


vector<double> backtrackingLineSearch::optimize(){
    uint count=0;
    vector<double> delta;
    if (verbose!=0){
        cout << "Initial SOLUTION : ("<< x[0] << ","<< x[1]<<")"<<endl;
        logFile<<x[0]<<" "<<x[1]<<" "<<f(x)<<endl;
    }
    while (count<10){
        delta=utils::Delta(df(x));
        while (f({x[0]+alpha*delta[0],x[1]+alpha*delta[1]})>f(x)+wolfe_para*(df(x)[0]*alpha*delta[0]+df(x)[1]*alpha*delta[1])){
            alpha*=alpha_dec;
            if(verbose!=0) cout<<"Dec Alpha to: "<<alpha<<endl;
        }
        x[0]+=alpha*delta[0];
        x[1]+=alpha*delta[1];
        alpha*=alpha_inc;
        if (verbose!=0){
            cout << "########### NEW SOLUTION ########### : ("<< x[0] << ","<< x[1]<<")"<<endl;
            logFile<<x[0]<<" "<<x[1]<<" "<<f(x)<<endl;
        }
        // terminaltion rule for the inner loop
        if(sqrt(pow(alpha*delta[0],2)+pow(alpha*delta[1],2))<tol)count++;
        }
    logFile.close();
    return x;
}


