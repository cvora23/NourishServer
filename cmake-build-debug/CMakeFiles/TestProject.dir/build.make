# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chivora_cisco_mac/CLionProjects/NourishServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TestProject.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TestProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestProject.dir/flags.make

CMakeFiles/TestProject.dir/main.cpp.o: CMakeFiles/TestProject.dir/flags.make
CMakeFiles/TestProject.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TestProject.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestProject.dir/main.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/main.cpp

CMakeFiles/TestProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestProject.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/main.cpp > CMakeFiles/TestProject.dir/main.cpp.i

CMakeFiles/TestProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestProject.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/main.cpp -o CMakeFiles/TestProject.dir/main.cpp.s

CMakeFiles/TestProject.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/TestProject.dir/main.cpp.o.requires

CMakeFiles/TestProject.dir/main.cpp.o.provides: CMakeFiles/TestProject.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestProject.dir/build.make CMakeFiles/TestProject.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/TestProject.dir/main.cpp.o.provides

CMakeFiles/TestProject.dir/main.cpp.o.provides.build: CMakeFiles/TestProject.dir/main.cpp.o


CMakeFiles/TestProject.dir/Server.cpp.o: CMakeFiles/TestProject.dir/flags.make
CMakeFiles/TestProject.dir/Server.cpp.o: ../Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TestProject.dir/Server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestProject.dir/Server.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/Server.cpp

CMakeFiles/TestProject.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestProject.dir/Server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/Server.cpp > CMakeFiles/TestProject.dir/Server.cpp.i

CMakeFiles/TestProject.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestProject.dir/Server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/Server.cpp -o CMakeFiles/TestProject.dir/Server.cpp.s

CMakeFiles/TestProject.dir/Server.cpp.o.requires:

.PHONY : CMakeFiles/TestProject.dir/Server.cpp.o.requires

CMakeFiles/TestProject.dir/Server.cpp.o.provides: CMakeFiles/TestProject.dir/Server.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestProject.dir/build.make CMakeFiles/TestProject.dir/Server.cpp.o.provides.build
.PHONY : CMakeFiles/TestProject.dir/Server.cpp.o.provides

CMakeFiles/TestProject.dir/Server.cpp.o.provides.build: CMakeFiles/TestProject.dir/Server.cpp.o


CMakeFiles/TestProject.dir/Client.cpp.o: CMakeFiles/TestProject.dir/flags.make
CMakeFiles/TestProject.dir/Client.cpp.o: ../Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TestProject.dir/Client.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestProject.dir/Client.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/Client.cpp

CMakeFiles/TestProject.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestProject.dir/Client.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/Client.cpp > CMakeFiles/TestProject.dir/Client.cpp.i

CMakeFiles/TestProject.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestProject.dir/Client.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/Client.cpp -o CMakeFiles/TestProject.dir/Client.cpp.s

CMakeFiles/TestProject.dir/Client.cpp.o.requires:

.PHONY : CMakeFiles/TestProject.dir/Client.cpp.o.requires

CMakeFiles/TestProject.dir/Client.cpp.o.provides: CMakeFiles/TestProject.dir/Client.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestProject.dir/build.make CMakeFiles/TestProject.dir/Client.cpp.o.provides.build
.PHONY : CMakeFiles/TestProject.dir/Client.cpp.o.provides

CMakeFiles/TestProject.dir/Client.cpp.o.provides.build: CMakeFiles/TestProject.dir/Client.cpp.o


CMakeFiles/TestProject.dir/MyThread.cpp.o: CMakeFiles/TestProject.dir/flags.make
CMakeFiles/TestProject.dir/MyThread.cpp.o: ../MyThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TestProject.dir/MyThread.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestProject.dir/MyThread.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/MyThread.cpp

CMakeFiles/TestProject.dir/MyThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestProject.dir/MyThread.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/MyThread.cpp > CMakeFiles/TestProject.dir/MyThread.cpp.i

CMakeFiles/TestProject.dir/MyThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestProject.dir/MyThread.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/MyThread.cpp -o CMakeFiles/TestProject.dir/MyThread.cpp.s

CMakeFiles/TestProject.dir/MyThread.cpp.o.requires:

.PHONY : CMakeFiles/TestProject.dir/MyThread.cpp.o.requires

CMakeFiles/TestProject.dir/MyThread.cpp.o.provides: CMakeFiles/TestProject.dir/MyThread.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestProject.dir/build.make CMakeFiles/TestProject.dir/MyThread.cpp.o.provides.build
.PHONY : CMakeFiles/TestProject.dir/MyThread.cpp.o.provides

CMakeFiles/TestProject.dir/MyThread.cpp.o.provides.build: CMakeFiles/TestProject.dir/MyThread.cpp.o


# Object files for target TestProject
TestProject_OBJECTS = \
"CMakeFiles/TestProject.dir/main.cpp.o" \
"CMakeFiles/TestProject.dir/Server.cpp.o" \
"CMakeFiles/TestProject.dir/Client.cpp.o" \
"CMakeFiles/TestProject.dir/MyThread.cpp.o"

# External object files for target TestProject
TestProject_EXTERNAL_OBJECTS =

TestProject: CMakeFiles/TestProject.dir/main.cpp.o
TestProject: CMakeFiles/TestProject.dir/Server.cpp.o
TestProject: CMakeFiles/TestProject.dir/Client.cpp.o
TestProject: CMakeFiles/TestProject.dir/MyThread.cpp.o
TestProject: CMakeFiles/TestProject.dir/build.make
TestProject: CMakeFiles/TestProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable TestProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestProject.dir/build: TestProject

.PHONY : CMakeFiles/TestProject.dir/build

CMakeFiles/TestProject.dir/requires: CMakeFiles/TestProject.dir/main.cpp.o.requires
CMakeFiles/TestProject.dir/requires: CMakeFiles/TestProject.dir/Server.cpp.o.requires
CMakeFiles/TestProject.dir/requires: CMakeFiles/TestProject.dir/Client.cpp.o.requires
CMakeFiles/TestProject.dir/requires: CMakeFiles/TestProject.dir/MyThread.cpp.o.requires

.PHONY : CMakeFiles/TestProject.dir/requires

CMakeFiles/TestProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TestProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TestProject.dir/clean

CMakeFiles/TestProject.dir/depend:
	cd /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chivora_cisco_mac/CLionProjects/NourishServer /Users/chivora_cisco_mac/CLionProjects/NourishServer /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles/TestProject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TestProject.dir/depend
