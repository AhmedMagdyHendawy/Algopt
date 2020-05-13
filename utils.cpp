#include <math.h>
#include <vector>
#include <iostream>
#include <fstream>      // std::ifstream
#include <sstream>      // std::istringstream
#include <algorithm>    // std::replace

// custom headers
#include "utils.h"


using std::vector;
using std::string;
using std::stod;
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

std::unordered_map<string, double> utils::cfg_parsing(string cfg_filename){
    std::unordered_map<string, double> param_map;
    string line;
    string key;
    string value;
    std::ifstream filestream(cfg_filename);
    if (filestream.is_open()) {
        while (std::getline(filestream, line)) {
            std::replace(line.begin(), line.end(), '=', ' ');
            std::istringstream linestream(line);
            while (linestream >> key >> value){
                if (key == "x0"){
                    std::replace(value.begin(), value.end(), ',', ' ');
                    std::istringstream valuestream(value);
                    string x_value1, x_value2;
                    while (valuestream >> x_value1 >> x_value2){
                        param_map["x0:1"]=stod(x_value1);
                        param_map["x0:2"]=stod(x_value2);
                    }
                }
                else
                    param_map[key]=stod(value);    
    
            } 
                
            
        }
    }
    return param_map;
}