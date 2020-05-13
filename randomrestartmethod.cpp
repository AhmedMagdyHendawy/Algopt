#include "randomrestartmethod.h"
#include "backtrackinglinesearch.h"
#include <iostream>
#include <string>

randomRestartMethod::randomRestartMethod()
{
        // NOT_Implemented Yet
}

randomRestartMethod::randomRestartMethod(backtrackingLineSearch& unconstraint_optimizer,\
                                         double from, double to, uint no_restarts, int verbose){

    this->from=from;
    this->to=to;
    this->no_restarts=no_restarts;
    this->unconstraint_optimizer=&unconstraint_optimizer;
    this->verbose=verbose;
}


vector<vector<double>>  randomRestartMethod::optimize(){
    vector<vector<double>> opt_count;
    random_device rd;
    std::mt19937 gen(rd()); //Standard mersenne_twister_engine seeded with rd()
    std::uniform_real_distribution<> dis(from,to);

    for(uint i=0;i<=no_restarts;i++){
        vector<double> x={dis(gen),dis(gen)};
        vector<double> x_opt;
        if(verbose!=0){
            string logFileName="solutionPath"+to_string(i)+".dat";
            unconstraint_optimizer->setLogFileName(logFileName);
            unconstraint_optimizer->setVerbose(true);
        }
        unconstraint_optimizer->set_x0(x);
        x_opt=unconstraint_optimizer->optimize();
        cout<<x_opt[0]<<" "<<x_opt[1]<<" "<<i<<endl;
    }
    cout<<verbose;
    if (verbose == 2){
        std::cout<<"Plotting the solutions"<<std::endl;
        system("gnuplot -p -e 'load \"../solutionPath.plt\"'");
    }
    return opt_count;
}
