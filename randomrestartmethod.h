#ifndef RANDOMRESTARTMETHOD_H
#define RANDOMRESTARTMETHOD_H

#include <random>
#include <vector>
#include "optimizer.h"
#include "backtrackinglinesearch.h"
#include <iostream>
#include <fstream>


using namespace std;

class randomRestartMethod: public optimizer
{
    double from;
    double to;
    uint no_restarts;
    backtrackingLineSearch* unconstraint_optimizer;

    
public:
    randomRestartMethod();
    randomRestartMethod(backtrackingLineSearch& unconstraint_optimizer,\
                        double from, double to, uint no_restarts, int verbose);
    vector<vector<double>> optimize();
    double (*f)(vector<double>);
    vector<double> (*df)(vector<double>);
};

#endif // RANDOMRESTARTMETHOD_H
