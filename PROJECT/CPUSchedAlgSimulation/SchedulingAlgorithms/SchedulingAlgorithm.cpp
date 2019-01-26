#include "SchedulingAlgorithm.h"

unsigned int SchedulingAlgorithm::currentTimePoint_;

unsigned int SchedulingAlgorithm::execute(std::vector<Process>& processes)
{
    int totalWaitingTime = 0;
    currentTimePoint_ = 0;

    for (int i = 0; i < processes.size(); i++)
    {
        currentTimePoint_ = currentTimePoint_ + processes[i].burstTime();
        int waitTime = currentTimePoint_ + processes[i].waitingTime(); //processes[i].arrivalTime();
        processes[i].waitingTime(waitTime);
        totalWaitingTime += waitTime;
    }
    unsigned int averageWaitingTime = totalWaitingTime / processes.size();
    return averageWaitingTime;
}
std::vector<Process> SchedulingAlgorithm::getCurrentlyWaitingProcesses(std::vector <Process> &processes)
{
    std::vector<Process> waitingProcesses;
    for(int i=0; i < processes.size(); i++)
    {
       if(processes[i].arrivalTime() <= currentTimePoint_)
       {
           waitingProcesses.push_back(processes[i]);
           processes.erase(processes.begin() + i);
       }
    }
    return waitingProcesses;
}
