# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build

# Include any dependencies generated for this target.
include CMakeFiles/SnippetPublisher.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SnippetPublisher.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SnippetPublisher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SnippetPublisher.dir/flags.make

CMakeFiles/SnippetPublisher.dir/main.cpp.o: CMakeFiles/SnippetPublisher.dir/flags.make
CMakeFiles/SnippetPublisher.dir/main.cpp.o: ../main.cpp
CMakeFiles/SnippetPublisher.dir/main.cpp.o: CMakeFiles/SnippetPublisher.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SnippetPublisher.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnippetPublisher.dir/main.cpp.o -MF CMakeFiles/SnippetPublisher.dir/main.cpp.o.d -o CMakeFiles/SnippetPublisher.dir/main.cpp.o -c /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/main.cpp

CMakeFiles/SnippetPublisher.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnippetPublisher.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/main.cpp > CMakeFiles/SnippetPublisher.dir/main.cpp.i

CMakeFiles/SnippetPublisher.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnippetPublisher.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/main.cpp -o CMakeFiles/SnippetPublisher.dir/main.cpp.s

CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o: CMakeFiles/SnippetPublisher.dir/flags.make
CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o: ../WavReader.cpp
CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o: CMakeFiles/SnippetPublisher.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o -MF CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o.d -o CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o -c /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/WavReader.cpp

CMakeFiles/SnippetPublisher.dir/WavReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnippetPublisher.dir/WavReader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/WavReader.cpp > CMakeFiles/SnippetPublisher.dir/WavReader.cpp.i

CMakeFiles/SnippetPublisher.dir/WavReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnippetPublisher.dir/WavReader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/WavReader.cpp -o CMakeFiles/SnippetPublisher.dir/WavReader.cpp.s

CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o: CMakeFiles/SnippetPublisher.dir/flags.make
CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o: ../WavDescriptor.cpp
CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o: CMakeFiles/SnippetPublisher.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o -MF CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o.d -o CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o -c /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/WavDescriptor.cpp

CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/WavDescriptor.cpp > CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.i

CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/WavDescriptor.cpp -o CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.s

# Object files for target SnippetPublisher
SnippetPublisher_OBJECTS = \
"CMakeFiles/SnippetPublisher.dir/main.cpp.o" \
"CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o" \
"CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o"

# External object files for target SnippetPublisher
SnippetPublisher_EXTERNAL_OBJECTS =

SnippetPublisher: CMakeFiles/SnippetPublisher.dir/main.cpp.o
SnippetPublisher: CMakeFiles/SnippetPublisher.dir/WavReader.cpp.o
SnippetPublisher: CMakeFiles/SnippetPublisher.dir/WavDescriptor.cpp.o
SnippetPublisher: CMakeFiles/SnippetPublisher.dir/build.make
SnippetPublisher: CMakeFiles/SnippetPublisher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable SnippetPublisher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SnippetPublisher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SnippetPublisher.dir/build: SnippetPublisher
.PHONY : CMakeFiles/SnippetPublisher.dir/build

CMakeFiles/SnippetPublisher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SnippetPublisher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SnippetPublisher.dir/clean

CMakeFiles/SnippetPublisher.dir/depend:
	cd /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1 /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1 /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build /home/sapa4980/work/trainings/2_practice/lotdd-code/code/wav/1/build/CMakeFiles/SnippetPublisher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SnippetPublisher.dir/depend

