#include "Process.h"

unsigned int Process::pidCounter = 1;

std::ostream& operator<< (std::ostream& stream, const Process& proc)
{
    stream << "( [" << proc.pid << "] | bt: " << proc.burstTime << " | at: " << proc.arrivalTime << " ) ";
    return stream;
};

