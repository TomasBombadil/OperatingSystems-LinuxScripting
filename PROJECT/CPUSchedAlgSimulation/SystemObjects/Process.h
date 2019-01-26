#ifndef CPUSCHEDALGSIMULATION_PROCESS_H
#define CPUSCHEDALGSIMULATION_PROCESS_H

#include <iostream>
#include <string>
#include <chrono>
#include <ctime>

using namespace std::chrono;

class Process
{
private:
    unsigned static int pidCounter;
    unsigned int pid_;
    int arrivalTime_;
    int waitingTime_;
    int executedTime_;
    int burstTime_; // [ms]

public:
    Process(int _burstTime, int _arrivalTime = 0){
       pid_ = pidCounter++;
       arrivalTime_ = _arrivalTime;
       burstTime_ = _burstTime;
        waitingTime_ = 0;
    }
    unsigned int pid() const { return pid_; }
    int arrivalTime() const { return arrivalTime_; }
    int burstTime() const { return burstTime_; };

    int waitingTime() const { return waitingTime_; }
    void waitingTime(int _time) { waitingTime_ = _time; }

    int executedTime() const { return  executedTime_; }
    void executedTime(int _time) { executedTime_=_time; }
};

std::ostream& operator<< (std::ostream& stream, const Process& proc);
#endif //CPUSCHEDALGSIMULATION_PROCESS_H
