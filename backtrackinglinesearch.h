#ifndef BACKTRACKINGLINESEARCH_H
#define BACKTRACKINGLINESEARCH_H

#include <limits>
#include <vector>
#include <fstream>

using namespace std;

typedef enum {NO_WOLFE_CONDITION,WOLFE_CONDITION} Condition_Type;

struct backtrackingLineSearch
{
// Algorithm Parameters
    double alpha;                                           // step size
    double alpha_dec;                                       // decrease factor of the step size
    double alpha_inc;                                       // increase factor of the step size
    double beta_max=numeric_limits<double>::max();          // the inf value for the max stepsize
    double wolfe_para;                                      // the wolfe parameter for the wolfe condition(s)
    double tol;                                             // the tolerance for the value stepsize change

// The optimization variable
    vector<double> x;                                       // the optimization variable(s) in a vector form

    Condition_Type type;                                    // include wolfe condition or not

    bool verbose;                                           // logging visuality

    ofstream logFile;                                       // file used for logging

// Constructors
    backtrackingLineSearch(vector<double> x);
    backtrackingLineSearch(vector<double> x,\
                           double alpha,\
                           double alpha_dec,\
                           double alpha_inc,\
                           double wolfe_para,\
                           double tol,\
                           Condition_Type type,
                           double (&f)(vector<double>),
                           vector<double> (&df)(vector<double>),
                           bool verbose,
                           string logFileName);


// Functions
    double (*f)(vector<double>);
    vector<double> (*df)(vector<double>);
    vector<double> optimize();

// setters functions
    void set_x0(vector<double> x0);
    void setVerbose(bool verbose);

    void setLogFileName(string logFileName);
    
};


#endif // BACKTRACKINGLINESEARCH_H
