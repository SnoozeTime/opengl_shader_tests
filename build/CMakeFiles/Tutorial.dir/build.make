# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benoit/PROJECTS/opengl_shader_tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benoit/PROJECTS/opengl_shader_tests/build

# Include any dependencies generated for this target.
include CMakeFiles/Tutorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tutorial.dir/flags.make

CMakeFiles/Tutorial.dir/src/main.cpp.o: CMakeFiles/Tutorial.dir/flags.make
CMakeFiles/Tutorial.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benoit/PROJECTS/opengl_shader_tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tutorial.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tutorial.dir/src/main.cpp.o -c /home/benoit/PROJECTS/opengl_shader_tests/src/main.cpp

CMakeFiles/Tutorial.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tutorial.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benoit/PROJECTS/opengl_shader_tests/src/main.cpp > CMakeFiles/Tutorial.dir/src/main.cpp.i

CMakeFiles/Tutorial.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tutorial.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benoit/PROJECTS/opengl_shader_tests/src/main.cpp -o CMakeFiles/Tutorial.dir/src/main.cpp.s

CMakeFiles/Tutorial.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Tutorial.dir/src/main.cpp.o.requires

CMakeFiles/Tutorial.dir/src/main.cpp.o.provides: CMakeFiles/Tutorial.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Tutorial.dir/build.make CMakeFiles/Tutorial.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Tutorial.dir/src/main.cpp.o.provides

CMakeFiles/Tutorial.dir/src/main.cpp.o.provides.build: CMakeFiles/Tutorial.dir/src/main.cpp.o


CMakeFiles/Tutorial.dir/src/glad.c.o: CMakeFiles/Tutorial.dir/flags.make
CMakeFiles/Tutorial.dir/src/glad.c.o: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benoit/PROJECTS/opengl_shader_tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Tutorial.dir/src/glad.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Tutorial.dir/src/glad.c.o   -c /home/benoit/PROJECTS/opengl_shader_tests/src/glad.c

CMakeFiles/Tutorial.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Tutorial.dir/src/glad.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/benoit/PROJECTS/opengl_shader_tests/src/glad.c > CMakeFiles/Tutorial.dir/src/glad.c.i

CMakeFiles/Tutorial.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Tutorial.dir/src/glad.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/benoit/PROJECTS/opengl_shader_tests/src/glad.c -o CMakeFiles/Tutorial.dir/src/glad.c.s

CMakeFiles/Tutorial.dir/src/glad.c.o.requires:

.PHONY : CMakeFiles/Tutorial.dir/src/glad.c.o.requires

CMakeFiles/Tutorial.dir/src/glad.c.o.provides: CMakeFiles/Tutorial.dir/src/glad.c.o.requires
	$(MAKE) -f CMakeFiles/Tutorial.dir/build.make CMakeFiles/Tutorial.dir/src/glad.c.o.provides.build
.PHONY : CMakeFiles/Tutorial.dir/src/glad.c.o.provides

CMakeFiles/Tutorial.dir/src/glad.c.o.provides.build: CMakeFiles/Tutorial.dir/src/glad.c.o


CMakeFiles/Tutorial.dir/src/shader.cpp.o: CMakeFiles/Tutorial.dir/flags.make
CMakeFiles/Tutorial.dir/src/shader.cpp.o: ../src/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benoit/PROJECTS/opengl_shader_tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Tutorial.dir/src/shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tutorial.dir/src/shader.cpp.o -c /home/benoit/PROJECTS/opengl_shader_tests/src/shader.cpp

CMakeFiles/Tutorial.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tutorial.dir/src/shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benoit/PROJECTS/opengl_shader_tests/src/shader.cpp > CMakeFiles/Tutorial.dir/src/shader.cpp.i

CMakeFiles/Tutorial.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tutorial.dir/src/shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benoit/PROJECTS/opengl_shader_tests/src/shader.cpp -o CMakeFiles/Tutorial.dir/src/shader.cpp.s

CMakeFiles/Tutorial.dir/src/shader.cpp.o.requires:

.PHONY : CMakeFiles/Tutorial.dir/src/shader.cpp.o.requires

CMakeFiles/Tutorial.dir/src/shader.cpp.o.provides: CMakeFiles/Tutorial.dir/src/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/Tutorial.dir/build.make CMakeFiles/Tutorial.dir/src/shader.cpp.o.provides.build
.PHONY : CMakeFiles/Tutorial.dir/src/shader.cpp.o.provides

CMakeFiles/Tutorial.dir/src/shader.cpp.o.provides.build: CMakeFiles/Tutorial.dir/src/shader.cpp.o


# Object files for target Tutorial
Tutorial_OBJECTS = \
"CMakeFiles/Tutorial.dir/src/main.cpp.o" \
"CMakeFiles/Tutorial.dir/src/glad.c.o" \
"CMakeFiles/Tutorial.dir/src/shader.cpp.o"

# External object files for target Tutorial
Tutorial_EXTERNAL_OBJECTS =

Tutorial: CMakeFiles/Tutorial.dir/src/main.cpp.o
Tutorial: CMakeFiles/Tutorial.dir/src/glad.c.o
Tutorial: CMakeFiles/Tutorial.dir/src/shader.cpp.o
Tutorial: CMakeFiles/Tutorial.dir/build.make
Tutorial: CMakeFiles/Tutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benoit/PROJECTS/opengl_shader_tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Tutorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tutorial.dir/build: Tutorial

.PHONY : CMakeFiles/Tutorial.dir/build

CMakeFiles/Tutorial.dir/requires: CMakeFiles/Tutorial.dir/src/main.cpp.o.requires
CMakeFiles/Tutorial.dir/requires: CMakeFiles/Tutorial.dir/src/glad.c.o.requires
CMakeFiles/Tutorial.dir/requires: CMakeFiles/Tutorial.dir/src/shader.cpp.o.requires

.PHONY : CMakeFiles/Tutorial.dir/requires

CMakeFiles/Tutorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tutorial.dir/clean

CMakeFiles/Tutorial.dir/depend:
	cd /home/benoit/PROJECTS/opengl_shader_tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benoit/PROJECTS/opengl_shader_tests /home/benoit/PROJECTS/opengl_shader_tests /home/benoit/PROJECTS/opengl_shader_tests/build /home/benoit/PROJECTS/opengl_shader_tests/build /home/benoit/PROJECTS/opengl_shader_tests/build/CMakeFiles/Tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tutorial.dir/depend

