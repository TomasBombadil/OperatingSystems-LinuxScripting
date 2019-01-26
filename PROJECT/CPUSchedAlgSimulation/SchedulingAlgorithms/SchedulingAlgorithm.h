#ifndef CPUSCHEDALGSIMULATION_SCHEDULINGALGORITHM_H
#define CPUSCHEDALGSIMULATION_SCHEDULINGALGORITHM_H

#include <algorithm>
#include <vector>
#include <ctime>

#include "../SystemObjects/Process.h"

class SchedulingAlgorithm
{
protected:
    static unsigned int currentTimePoint_;
public:
    const static unsigned int executionPeriod = 10; // ms
    static std::vector <Process> sort(std::vector <Process> processes);
    static bool lt(Process &lhs, Process &rhs);
    static unsigned int execute(std::vector<Process>& processes);

    static std::vector<Process> getCurrentlyWaitingProcesses(std::vector <Process> &processes);

//    static unsigned int currentTimePoint() { return currentTimePoint_; }
 //   static void currentTimePoint(unsigned int time) { currentTimePoint_ = time; }
};

#endif //CPUSCHEDALGSIMULATION_SCHEDULINGALGORITHM_H
