#ifndef RANDOMRESTARTMETHOD_H
#define RANDOMRESTARTMETHOD_H

#include <random>
#include <vector>
#include "backtrackinglinesearch.h"
#include <iostream>
#include <fstream>

using namespace std;

struct randomRestartMethod
{
    double from;
    double to;
    uint no_restarts;

    backtrackingLineSearch* unconstraint_optimizer;

    bool verbose;
    ofstream logFile;
    
public:
    randomRestartMethod();
    randomRestartMethod(backtrackingLineSearch& unconstraint_optimizer,\
                        double from, double to, uint no_restarts, bool verbose);

    double (*f)(vector<double>);
    vector<double> (*df)(vector<double>);
    vector<vector<double>> optimize();
};

#endif // RANDOMRESTARTMETHOD_H
