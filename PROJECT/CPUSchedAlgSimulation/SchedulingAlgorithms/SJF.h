#ifndef CPUSCHEDALGSIMULATION_SJF_H
#define CPUSCHEDALGSIMULATION_SJF_H

#include <vector>
#include <algorithm>

#include "SchedulingAlgorithm.h"

class SJF : public SchedulingAlgorithm
{
public:
    static std::vector <Process> sort(std::vector <Process> processes)
    {
        std::sort(processes.begin(), processes.end());
        return processes;
    }
};
bool operator<(Process &lhs, Process &rhs);

#endif //CPUSCHEDALGSIMULATION_SJF_H
