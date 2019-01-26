#include "SJF.h"

bool SJF::lt(Process &lhs, Process &rhs)
{
    return lhs.burstTime() < rhs.burstTime();
}
std::vector <Process> SJF::sortNP(std::vector <Process> processes)
    {
        std::sort(processes.begin(), processes.end(), lt);
        avgWaitingTime_ =  execute(processes);

        return processes;
    }