#ifndef CPUSCHEDALGSIMULATION_PROCESS_H
#define CPUSCHEDALGSIMULATION_PROCESS_H

#include <iostream>
#include <ctime>

class Process {
private:
    unsigned static int pidCounter;
public:
    unsigned int pid;
    time_t arrivalTime;
    unsigned int burstTime; // [ms]

    Process(unsigned int _burstTime){
       pid = pidCounter++;
       arrivalTime = time(0);
       burstTime = _burstTime;
    }
};

std::ostream& operator<< (std::ostream& stream, const Process& proc);
#endif //CPUSCHEDALGSIMULATION_PROCESS_H
