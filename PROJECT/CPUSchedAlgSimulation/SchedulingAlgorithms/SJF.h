#ifndef CPUSCHEDALGSIMULATION_SJF_H
#define CPUSCHEDALGSIMULATION_SJF_H

#include "SchedulingAlgorithm.h"

class SJF : public SchedulingAlgorithm
{
public:
    static unsigned int avgWaitingTime_;

    static std::vector <Process> sortNP(std::vector <Process> processes);
    static bool lt(Process &lhs, Process &rhs);
};

#endif //CPUSCHEDALGSIMULATION_SJF_H
