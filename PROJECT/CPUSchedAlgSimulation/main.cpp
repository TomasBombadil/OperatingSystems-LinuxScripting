#include <iostream>
#include <vector>

#include "SchedulingAlgorithms/SJF.h"
using namespace std;

vector <Process> processes{ Process(10), Process(20), Process(5), Process(15), Process(21) };
int main() {

    for (int i = 0; i < (int)processes.size(); i++)
        cout<< processes.at(i) <<endl;

    std::cout << "Starting sorting" << std::endl;
    vector <Process> sorted = SJF::sort(processes);


    for (int i = 0; i < (int)sorted.size(); i++)
        cout<< sorted.at(i) <<endl;

    return 0;
}