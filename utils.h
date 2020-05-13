#ifndef UTILS_H
#define UTILS_H

#include <vector>
#include <unordered_map>
#include <string>

namespace utils{

    std::vector<double> Delta(std::vector<double> dF);
    std::unordered_map<std::string, double> cfg_parsing(std::string cfg_filename);
}
#endif // UTILS_H
