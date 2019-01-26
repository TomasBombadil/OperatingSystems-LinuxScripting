#include <iostream>
#include <chrono>
#include <fstream>

#include "SchedulingAlgorithms/SJF.h"
#include "SchedulingAlgorithms/RoundRobin.h"
using namespace std;

void displayInit(vector<Process> vec)
{
    for (int i = 0; i < (int)vec.size(); i++)
        cout<< vec.at(i) <<endl;
}
void display(vector<Process> vec)
{
    for (int i = 0; i < (int)vec.size(); i++)
        cout<< vec.at(i) <<  "| wt: " << vec.at(i).waitingTime() << " ms" <<endl;
}

vector <Process> processes;
RoundRobin

int main()
{
    string fileName = "processList.txt";
    //cout << "Input file: ";
    //cin >> fileName;

    string line;
    ifstream myfile(fileName);
    if (myfile.is_open())
    {
        while ( getline (myfile,line) )
        {
            int procBurstTime = std::stoi(line);
            Process proc = Process(procBurstTime);
            processes.push_back(proc);
        }
        myfile.close();
    }

    else cout << "Unable to open file";
    bool run = true;
    while(run) {
        int opt = -1;
        bool showMenu = true;
        while (showMenu) {
            std::cout << endl << "MENU" << endl
                      << "----------------------" << endl
                      << "0. Exit" << endl
                      << "1. RoundRobin" << endl
                      << "2. Shortest Job First" << endl
                      << "Opt: ";
            cin >> opt;
            cout << endl;

            if (opt < 0 || opt > 2) { cout << "Choose vaild option!!" << std::endl << endl; }
            else { showMenu = false; }
        }
        vector<Process> sorted;
        unsigned int avgWaitingTime = 0;
        switch (opt) {
            case 0:
                return 0;
            case 1:
                sorted = RoundRobin::sortNP(processes);
                avgWaitingTime = RoundRobin::avgWaitingTime_;
                break;
            case 2:
                sorted = SJF::sortNP(processes);
                break;
        }
        std::cout << "-------------------------------------" << endl
                  << "Processes to schedule: " << std::endl
                  << "-------------------------------------" << endl;
        displayInit(processes);
        std::cout <<"-------------------------------------" << endl
                  << "Sorted processes" << std::endl
                  << "-------------------------------------" << endl;
        display(sorted);
        cout << "Average waiting time: " << avgWaitingTime << " ms" << endl;
    }
    return 0;
}
