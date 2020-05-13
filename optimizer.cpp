#include "optimizer.h"
#include<string>

void optimizer:: setLogFileName(std::string logFileName){
    logFile.open(logFileName);
}

void optimizer:: setVerbose(int verbose){
    verbose=verbose;
}