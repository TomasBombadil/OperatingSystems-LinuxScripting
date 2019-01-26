#include "RoundRobin.h"

bool RoundRobin::lt(Process &lhs, Process &rhs)
{
    return lhs.pid() < rhs.pid();
}
std::vector <Process> RoundRobin::sortNP(std::vector <Process> processes)
    {
        std::sort(processes.begin(), processes.end(), lt);
        //execute()
        //std::cout << "Avg waiting time: " << (processes) << std::endl;

        return processes;
    }

std::vector <Process> RoundRobin::sortP(std::vector <Process> processes)
{
    std::vector<Process> sorted;

    while(! processes.empty())
    {
        std::vector<Process> waitingProcesses = getCurrentlyWaitingProcesses(processes);
        std::sort(waitingProcesses.begin(), waitingProcesses.end(), lt);
        avgWaitingTime_ = execute(waitingProcesses);
        sorted.insert(std::end(sorted), std::begin(waitingProcesses), std::end(waitingProcesses));
    }
    return  sorted;
}

