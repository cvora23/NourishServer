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
include CMakeFiles/NourishServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NourishServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NourishServer.dir/flags.make

CMakeFiles/NourishServer.dir/main.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NourishServer.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/main.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/main.cpp

CMakeFiles/NourishServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/main.cpp > CMakeFiles/NourishServer.dir/main.cpp.i

CMakeFiles/NourishServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/main.cpp -o CMakeFiles/NourishServer.dir/main.cpp.s

CMakeFiles/NourishServer.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/main.cpp.o.requires

CMakeFiles/NourishServer.dir/main.cpp.o.provides: CMakeFiles/NourishServer.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/main.cpp.o.provides

CMakeFiles/NourishServer.dir/main.cpp.o.provides.build: CMakeFiles/NourishServer.dir/main.cpp.o


CMakeFiles/NourishServer.dir/Server.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/Server.cpp.o: ../Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/NourishServer.dir/Server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/Server.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/Server.cpp

CMakeFiles/NourishServer.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/Server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/Server.cpp > CMakeFiles/NourishServer.dir/Server.cpp.i

CMakeFiles/NourishServer.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/Server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/Server.cpp -o CMakeFiles/NourishServer.dir/Server.cpp.s

CMakeFiles/NourishServer.dir/Server.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/Server.cpp.o.requires

CMakeFiles/NourishServer.dir/Server.cpp.o.provides: CMakeFiles/NourishServer.dir/Server.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/Server.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/Server.cpp.o.provides

CMakeFiles/NourishServer.dir/Server.cpp.o.provides.build: CMakeFiles/NourishServer.dir/Server.cpp.o


CMakeFiles/NourishServer.dir/Client.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/Client.cpp.o: ../Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/NourishServer.dir/Client.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/Client.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/Client.cpp

CMakeFiles/NourishServer.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/Client.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/Client.cpp > CMakeFiles/NourishServer.dir/Client.cpp.i

CMakeFiles/NourishServer.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/Client.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/Client.cpp -o CMakeFiles/NourishServer.dir/Client.cpp.s

CMakeFiles/NourishServer.dir/Client.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/Client.cpp.o.requires

CMakeFiles/NourishServer.dir/Client.cpp.o.provides: CMakeFiles/NourishServer.dir/Client.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/Client.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/Client.cpp.o.provides

CMakeFiles/NourishServer.dir/Client.cpp.o.provides.build: CMakeFiles/NourishServer.dir/Client.cpp.o


CMakeFiles/NourishServer.dir/MyThread.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/MyThread.cpp.o: ../MyThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/NourishServer.dir/MyThread.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/MyThread.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/MyThread.cpp

CMakeFiles/NourishServer.dir/MyThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/MyThread.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/MyThread.cpp > CMakeFiles/NourishServer.dir/MyThread.cpp.i

CMakeFiles/NourishServer.dir/MyThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/MyThread.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/MyThread.cpp -o CMakeFiles/NourishServer.dir/MyThread.cpp.s

CMakeFiles/NourishServer.dir/MyThread.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/MyThread.cpp.o.requires

CMakeFiles/NourishServer.dir/MyThread.cpp.o.provides: CMakeFiles/NourishServer.dir/MyThread.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/MyThread.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/MyThread.cpp.o.provides

CMakeFiles/NourishServer.dir/MyThread.cpp.o.provides.build: CMakeFiles/NourishServer.dir/MyThread.cpp.o


CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o: ../ProtocolMessage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/ProtocolMessage.cpp

CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/ProtocolMessage.cpp > CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.i

CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/ProtocolMessage.cpp -o CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.s

CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.requires

CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.provides: CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.provides

CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.provides.build: CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o


CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o: ../PubSubSystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/PubSubSystem.cpp

CMakeFiles/NourishServer.dir/PubSubSystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/PubSubSystem.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/PubSubSystem.cpp > CMakeFiles/NourishServer.dir/PubSubSystem.cpp.i

CMakeFiles/NourishServer.dir/PubSubSystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/PubSubSystem.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/PubSubSystem.cpp -o CMakeFiles/NourishServer.dir/PubSubSystem.cpp.s

CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.requires

CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.provides: CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.provides

CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.provides.build: CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o


CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o: ../GlobalMutex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/GlobalMutex.cpp

CMakeFiles/NourishServer.dir/GlobalMutex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/GlobalMutex.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/GlobalMutex.cpp > CMakeFiles/NourishServer.dir/GlobalMutex.cpp.i

CMakeFiles/NourishServer.dir/GlobalMutex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/GlobalMutex.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/GlobalMutex.cpp -o CMakeFiles/NourishServer.dir/GlobalMutex.cpp.s

CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.requires

CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.provides: CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.provides

CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.provides.build: CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o


CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o: ../PubSubChannel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/PubSubChannel.cpp

CMakeFiles/NourishServer.dir/PubSubChannel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/PubSubChannel.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/PubSubChannel.cpp > CMakeFiles/NourishServer.dir/PubSubChannel.cpp.i

CMakeFiles/NourishServer.dir/PubSubChannel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/PubSubChannel.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/PubSubChannel.cpp -o CMakeFiles/NourishServer.dir/PubSubChannel.cpp.s

CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.requires

CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.provides: CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.provides

CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.provides.build: CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o


CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o: CMakeFiles/NourishServer.dir/flags.make
CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o: ../SynchronizedQ.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o -c /Users/chivora_cisco_mac/CLionProjects/NourishServer/SynchronizedQ.cpp

CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chivora_cisco_mac/CLionProjects/NourishServer/SynchronizedQ.cpp > CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.i

CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chivora_cisco_mac/CLionProjects/NourishServer/SynchronizedQ.cpp -o CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.s

CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.requires:

.PHONY : CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.requires

CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.provides: CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.requires
	$(MAKE) -f CMakeFiles/NourishServer.dir/build.make CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.provides.build
.PHONY : CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.provides

CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.provides.build: CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o


# Object files for target NourishServer
NourishServer_OBJECTS = \
"CMakeFiles/NourishServer.dir/main.cpp.o" \
"CMakeFiles/NourishServer.dir/Server.cpp.o" \
"CMakeFiles/NourishServer.dir/Client.cpp.o" \
"CMakeFiles/NourishServer.dir/MyThread.cpp.o" \
"CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o" \
"CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o" \
"CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o" \
"CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o" \
"CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o"

# External object files for target NourishServer
NourishServer_EXTERNAL_OBJECTS =

NourishServer: CMakeFiles/NourishServer.dir/main.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/Server.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/Client.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/MyThread.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o
NourishServer: CMakeFiles/NourishServer.dir/build.make
NourishServer: CMakeFiles/NourishServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable NourishServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NourishServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NourishServer.dir/build: NourishServer

.PHONY : CMakeFiles/NourishServer.dir/build

CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/main.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/Server.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/Client.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/MyThread.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/ProtocolMessage.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/PubSubSystem.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/GlobalMutex.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/PubSubChannel.cpp.o.requires
CMakeFiles/NourishServer.dir/requires: CMakeFiles/NourishServer.dir/SynchronizedQ.cpp.o.requires

.PHONY : CMakeFiles/NourishServer.dir/requires

CMakeFiles/NourishServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NourishServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NourishServer.dir/clean

CMakeFiles/NourishServer.dir/depend:
	cd /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chivora_cisco_mac/CLionProjects/NourishServer /Users/chivora_cisco_mac/CLionProjects/NourishServer /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug /Users/chivora_cisco_mac/CLionProjects/NourishServer/cmake-build-debug/CMakeFiles/NourishServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NourishServer.dir/depend

