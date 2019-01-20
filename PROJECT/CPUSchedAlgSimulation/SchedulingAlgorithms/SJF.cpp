#include "SJF.h"

bool operator<(Process &lhs, Process &rhs)
{
    return lhs.burstTime < rhs.burstTime;
}
