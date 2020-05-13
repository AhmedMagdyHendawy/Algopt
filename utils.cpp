#include <math.h>
#include <vector>
#include "utils.h"

using std::vector;

vector<double> utils::Delta(vector<double> dF){
    double sum;
    for (auto& n : dF)
        sum += pow(n,2);
    sum=sqrt(sum);
    for(vector<double>::iterator it=dF.begin(); it!=dF.end(); ++it){
        *it=-(*it)/sum;
    }

    return dF;
}