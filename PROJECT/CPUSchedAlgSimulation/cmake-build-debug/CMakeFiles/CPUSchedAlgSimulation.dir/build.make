# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\PROGRAMY\CLion\CLion 2017.3.4\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\PROGRAMY\CLion\CLion 2017.3.4\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CPUSchedAlgSimulation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CPUSchedAlgSimulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CPUSchedAlgSimulation.dir/flags.make

CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj: CMakeFiles/CPUSchedAlgSimulation.dir/flags.make
CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CPUSchedAlgSimulation.dir\main.cpp.obj -c E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\main.cpp

CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.i"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\main.cpp > CMakeFiles\CPUSchedAlgSimulation.dir\main.cpp.i

CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.s"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\main.cpp -o CMakeFiles\CPUSchedAlgSimulation.dir\main.cpp.s

CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.requires

CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.provides: CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CPUSchedAlgSimulation.dir\build.make CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.provides

CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.provides.build: CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj


CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj: CMakeFiles/CPUSchedAlgSimulation.dir/flags.make
CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj: ../SystemObjects/Process.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CPUSchedAlgSimulation.dir\SystemObjects\Process.cpp.obj -c E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SystemObjects\Process.cpp

CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.i"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SystemObjects\Process.cpp > CMakeFiles\CPUSchedAlgSimulation.dir\SystemObjects\Process.cpp.i

CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.s"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SystemObjects\Process.cpp -o CMakeFiles\CPUSchedAlgSimulation.dir\SystemObjects\Process.cpp.s

CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.requires:

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.requires

CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.provides: CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CPUSchedAlgSimulation.dir\build.make CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.provides.build
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.provides

CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.provides.build: CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj


CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj: CMakeFiles/CPUSchedAlgSimulation.dir/flags.make
CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj: ../SchedulingAlgorithms/SchedulingAlgorithm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\SchedulingAlgorithm.cpp.obj -c E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\SchedulingAlgorithm.cpp

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.i"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\SchedulingAlgorithm.cpp > CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\SchedulingAlgorithm.cpp.i

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.s"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\SchedulingAlgorithm.cpp -o CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\SchedulingAlgorithm.cpp.s

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.requires:

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.requires

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.provides: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CPUSchedAlgSimulation.dir\build.make CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.provides.build
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.provides

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.provides.build: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj


CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj: CMakeFiles/CPUSchedAlgSimulation.dir/flags.make
CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj: ../SchedulingAlgorithms/SJF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\SJF.cpp.obj -c E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\SJF.cpp

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.i"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\SJF.cpp > CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\SJF.cpp.i

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.s"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\SJF.cpp -o CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\SJF.cpp.s

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.requires:

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.requires

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.provides: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CPUSchedAlgSimulation.dir\build.make CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.provides.build
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.provides

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.provides.build: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj


CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj: CMakeFiles/CPUSchedAlgSimulation.dir/flags.make
CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj: ../SchedulingAlgorithms/RoundRobin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\RoundRobin.cpp.obj -c E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\RoundRobin.cpp

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.i"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\RoundRobin.cpp > CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\RoundRobin.cpp.i

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.s"
	D:\PROGRAMY\LIBRARIES\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\SchedulingAlgorithms\RoundRobin.cpp -o CMakeFiles\CPUSchedAlgSimulation.dir\SchedulingAlgorithms\RoundRobin.cpp.s

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.requires:

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.requires

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.provides: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.requires
	$(MAKE) -f CMakeFiles\CPUSchedAlgSimulation.dir\build.make CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.provides.build
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.provides

CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.provides.build: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj


# Object files for target CPUSchedAlgSimulation
CPUSchedAlgSimulation_OBJECTS = \
"CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj" \
"CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj" \
"CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj" \
"CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj" \
"CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj"

# External object files for target CPUSchedAlgSimulation
CPUSchedAlgSimulation_EXTERNAL_OBJECTS =

CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/build.make
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/linklibs.rsp
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/objects1.rsp
CPUSchedAlgSimulation.exe: CMakeFiles/CPUSchedAlgSimulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable CPUSchedAlgSimulation.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CPUSchedAlgSimulation.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CPUSchedAlgSimulation.dir/build: CPUSchedAlgSimulation.exe

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/build

CMakeFiles/CPUSchedAlgSimulation.dir/requires: CMakeFiles/CPUSchedAlgSimulation.dir/main.cpp.obj.requires
CMakeFiles/CPUSchedAlgSimulation.dir/requires: CMakeFiles/CPUSchedAlgSimulation.dir/SystemObjects/Process.cpp.obj.requires
CMakeFiles/CPUSchedAlgSimulation.dir/requires: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SchedulingAlgorithm.cpp.obj.requires
CMakeFiles/CPUSchedAlgSimulation.dir/requires: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/SJF.cpp.obj.requires
CMakeFiles/CPUSchedAlgSimulation.dir/requires: CMakeFiles/CPUSchedAlgSimulation.dir/SchedulingAlgorithms/RoundRobin.cpp.obj.requires

.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/requires

CMakeFiles/CPUSchedAlgSimulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CPUSchedAlgSimulation.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/clean

CMakeFiles/CPUSchedAlgSimulation.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug E:\STUDIA\SO\OperatingSystems-LinuxScripting\PROJECT\CPUSchedAlgSimulation\cmake-build-debug\CMakeFiles\CPUSchedAlgSimulation.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CPUSchedAlgSimulation.dir/depend
