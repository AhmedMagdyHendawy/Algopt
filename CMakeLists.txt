cmake_minimum_required(VERSION 2.8)

project(algopt)
add_executable(${PROJECT_NAME} "main.cpp" "backtrackinglinesearch.cpp" "randomrestartmethod.cpp" "utils.cpp" "optimizer.cpp")
