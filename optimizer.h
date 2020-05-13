#ifndef OPTIMIZER_H
#define OPTIMIZER_H

#include<vector>
#include<fstream>
#include<string>

using std::ofstream;
using std::vector;

class optimizer{
    public:
        int verbose;                // logging visuality
        ofstream logFile;            // file used for logging   

        void setVerbose(int verbose);
        void setLogFileName(std::string logFileName);     

};
#endif // OPTIMIZER_H
