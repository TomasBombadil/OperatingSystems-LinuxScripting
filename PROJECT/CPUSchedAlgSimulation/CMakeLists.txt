cmake_minimum_required(VERSION 3.9)
project(CPUSchedAlgSimulation)

set(CMAKE_CXX_STANDARD 11)
set(SOURCES main.cpp SystemObjects/Process.cpp SchedulingAlgorithms/SchedulingAlgorithm.cpp SchedulingAlgorithms/SJF.cpp SchedulingAlgorithms/RoundRobin.cpp  )
add_executable(CPUSchedAlgSimulation ${SOURCES})