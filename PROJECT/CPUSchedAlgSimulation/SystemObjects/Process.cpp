#include <cstring>
#include "Process.h"

unsigned int Process::pidCounter = 1;

/*std::string displayTime(std::chrono::high_resolution_clock::time_point date)
{
    std::chrono::milliseconds ms = std::chrono::duration_cast<std::chrono::milliseconds>(date.time_since_epoch());

    std::chrono::seconds s = duration_cast<std::chrono::seconds>(ms);
    std::time_t t = s.count();
    std::size_t fractional_seconds = ms.count() % 1000;
    char out[12];
    char ms_string[3];

    sprintf(ms_string, "%d", fractional_seconds);

    std::strftime(out, sizeof(out), "%H:%M:%S::", std::localtime(&t));
    strcat(out, ms_string);
    std::string res(out);

    return res;
} */
std::ostream& operator<< (std::ostream& stream, const Process& proc)
{
    //std::string arrTime = displayTime(proc.arrivalTime());
    stream << "( [" << proc.pid() << "] | bt: " << proc.burstTime()
            << " ms | ex: " << proc.executedTime();
            //<< " ms | at: " << proc.arrivalTime() << " ms ) ";
    //<< " ms | at: " << proc.arrivalTime() << " ms ) ";
    return stream;
};


