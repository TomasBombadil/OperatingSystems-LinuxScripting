#ifndef CPUSCHEDALGSIMULATION_ROUNDROBIN_H
#define CPUSCHEDALGSIMULATION_ROUNDROBIN_H

#include "SchedulingAlgorithm.h"

class RoundRobin: SchedulingAlgorithm
{
public:
    static unsigned int avgWaitingTime_;

    static std::vector <Process> sortNP(std::vector <Process> processes);
    static std::vector <Process> sortP(std::vector <Process> processes);
    static bool lt(Process &lhs, Process &rhs);
};


#endif //CPUSCHEDALGSIMULATION_ROUNDROBIN_H
