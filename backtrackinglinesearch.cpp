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
                                               bool verbose,
                                               string logFileName){
    this->x=x;
    this->alpha=alpha;
    this->alpha_dec=alpha_dec;
    this->alpha_inc=alpha_inc;
    this->wolfe_para=wolfe_para;
    this->tol=tol;
    this->type=type;
    this->f=&f;
    this->df=&df;
    this->verbose=verbose;

    if(this->verbose) logFile.open(logFileName);

}

void backtrackingLineSearch:: set_x0(vector<double> x0){
    x=x0;
}

void backtrackingLineSearch:: setLogFileName(string logFileName){
    logFile.open(logFileName);
}

void backtrackingLineSearch:: setVerbose(bool verbose){
    this->verbose=verbose;
}

vector<double> backtrackingLineSearch::optimize(){
    uint count=0;
    vector<double> delta;
    if (verbose){
        cout << "Initial SOLUTION : ("<< x[0] << ","<< x[1]<<")"<<endl;
        logFile<<x[0]<<" "<<x[1]<<" "<<f(x)<<endl;
    }
    while (count<10){
        delta=utils::Delta(df(x));
        while (f({x[0]+alpha*delta[0],x[1]+alpha*delta[1]})>f(x)+wolfe_para*(df(x)[0]*alpha*delta[0]+df(x)[1]*alpha*delta[1])){
            alpha*=alpha_dec;
            if(verbose) cout<<"Dec Alpha to: "<<alpha<<endl;
        }
        x[0]+=alpha*delta[0];
        x[1]+=alpha*delta[1];
        alpha*=alpha_inc;
        if (verbose){
            cout << "########### NEW SOLUTION ########### : ("<< x[0] << ","<< x[1]<<")"<<endl;
            logFile<<x[0]<<" "<<x[1]<<" "<<f(x)<<endl;
        }
        // terminaltion rule for the inner loop
        if(sqrt(pow(alpha*delta[0],2)+pow(alpha*delta[1],2))<tol)count++;
        }
    logFile.close();
    return x;
}


