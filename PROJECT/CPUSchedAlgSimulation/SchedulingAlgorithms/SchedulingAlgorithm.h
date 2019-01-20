#ifndef CPUSCHEDALGSIMULATION_SCHEDULINGALGORITHM_H
#define CPUSCHEDALGSIMULATION_SCHEDULINGALGORITHM_H

#include <vector>
#include <ctime>

#include "../SystemObjects/Process.h"

class SchedulingAlgorithm
{
    public:
     virtual ~SchedulingAlgorithm();
     //virtual static  std::vector <Process> sort(std::vector <Process>) = 0;
};


#endif //CPUSCHEDALGSIMULATION_SCHEDULINGALGORITHM_H
