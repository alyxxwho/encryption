# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alisarudovskaa/encryption

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alisarudovskaa/encryption/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/encryption.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/encryption.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/encryption.dir/flags.make

CMakeFiles/encryption.dir/task_encryption.cpp.o: CMakeFiles/encryption.dir/flags.make
CMakeFiles/encryption.dir/task_encryption.cpp.o: ../task_encryption.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alisarudovskaa/encryption/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/encryption.dir/task_encryption.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/encryption.dir/task_encryption.cpp.o -c /Users/alisarudovskaa/encryption/task_encryption.cpp

CMakeFiles/encryption.dir/task_encryption.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/encryption.dir/task_encryption.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alisarudovskaa/encryption/task_encryption.cpp > CMakeFiles/encryption.dir/task_encryption.cpp.i

CMakeFiles/encryption.dir/task_encryption.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/encryption.dir/task_encryption.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alisarudovskaa/encryption/task_encryption.cpp -o CMakeFiles/encryption.dir/task_encryption.cpp.s

# Object files for target encryption
encryption_OBJECTS = \
"CMakeFiles/encryption.dir/task_encryption.cpp.o"

# External object files for target encryption
encryption_EXTERNAL_OBJECTS =

encryption: CMakeFiles/encryption.dir/task_encryption.cpp.o
encryption: CMakeFiles/encryption.dir/build.make
encryption: CMakeFiles/encryption.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/alisarudovskaa/encryption/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable encryption"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/encryption.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/encryption.dir/build: encryption

.PHONY : CMakeFiles/encryption.dir/build

CMakeFiles/encryption.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/encryption.dir/cmake_clean.cmake
.PHONY : CMakeFiles/encryption.dir/clean

CMakeFiles/encryption.dir/depend:
	cd /Users/alisarudovskaa/encryption/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alisarudovskaa/encryption /Users/alisarudovskaa/encryption /Users/alisarudovskaa/encryption/cmake-build-debug /Users/alisarudovskaa/encryption/cmake-build-debug /Users/alisarudovskaa/encryption/cmake-build-debug/CMakeFiles/encryption.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/encryption.dir/depend

