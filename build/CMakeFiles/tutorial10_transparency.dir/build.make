# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/orica/Downloads/OpenGL-tutorial_v0014_33

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/orica/Downloads/OpenGL-tutorial_v0014_33/build

# Include any dependencies generated for this target.
include CMakeFiles/tutorial10_transparency.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial10_transparency.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial10_transparency.dir/flags.make

CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o: CMakeFiles/tutorial10_transparency.dir/flags.make
CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o: ../tutorial10_transparency/tutorial10.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o -c /home/orica/Downloads/OpenGL-tutorial_v0014_33/tutorial10_transparency/tutorial10.cpp

CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/orica/Downloads/OpenGL-tutorial_v0014_33/tutorial10_transparency/tutorial10.cpp > CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.i

CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/orica/Downloads/OpenGL-tutorial_v0014_33/tutorial10_transparency/tutorial10.cpp -o CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.s

CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.requires:
.PHONY : CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.requires

CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.provides: CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial10_transparency.dir/build.make CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.provides

CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.provides.build: CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o

CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o: CMakeFiles/tutorial10_transparency.dir/flags.make
CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o: ../common/shader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o -c /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/shader.cpp

CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/shader.cpp > CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.i

CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/shader.cpp -o CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.s

CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.requires:
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.requires

CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.provides: CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial10_transparency.dir/build.make CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.provides

CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.provides.build: CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o

CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o: CMakeFiles/tutorial10_transparency.dir/flags.make
CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o: ../common/controls.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o -c /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/controls.cpp

CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/controls.cpp > CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.i

CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/controls.cpp -o CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.s

CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.requires:
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.requires

CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.provides: CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial10_transparency.dir/build.make CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.provides

CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.provides.build: CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o

CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o: CMakeFiles/tutorial10_transparency.dir/flags.make
CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o: ../common/texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o -c /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/texture.cpp

CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/texture.cpp > CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.i

CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/texture.cpp -o CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.s

CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.requires:
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.requires

CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.provides: CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial10_transparency.dir/build.make CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.provides

CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.provides.build: CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o

CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o: CMakeFiles/tutorial10_transparency.dir/flags.make
CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o: ../common/objloader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o -c /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/objloader.cpp

CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/objloader.cpp > CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.i

CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/objloader.cpp -o CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.s

CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.requires:
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.requires

CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.provides: CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial10_transparency.dir/build.make CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.provides

CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.provides.build: CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o

CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o: CMakeFiles/tutorial10_transparency.dir/flags.make
CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o: ../common/vboindexer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o -c /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/vboindexer.cpp

CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/vboindexer.cpp > CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.i

CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/orica/Downloads/OpenGL-tutorial_v0014_33/common/vboindexer.cpp -o CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.s

CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.requires:
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.requires

CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.provides: CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial10_transparency.dir/build.make CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.provides

CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.provides.build: CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o

# Object files for target tutorial10_transparency
tutorial10_transparency_OBJECTS = \
"CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o" \
"CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o" \
"CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o" \
"CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o" \
"CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o" \
"CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o"

# External object files for target tutorial10_transparency
tutorial10_transparency_EXTERNAL_OBJECTS =

tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/build.make
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libGLU.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libGL.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libSM.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libICE.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libX11.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libXext.so
tutorial10_transparency: external/glfw-3.0.3/src/libglfw3.a
tutorial10_transparency: external/libGLEW_190.a
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libGLU.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libXrandr.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libXi.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/librt.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libm.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libGL.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libSM.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libICE.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libX11.so
tutorial10_transparency: /usr/lib/x86_64-linux-gnu/libXext.so
tutorial10_transparency: CMakeFiles/tutorial10_transparency.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable tutorial10_transparency"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial10_transparency.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E copy /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/./tutorial10_transparency /home/orica/Downloads/OpenGL-tutorial_v0014_33/tutorial10_transparency/

# Rule to build all files generated by this target.
CMakeFiles/tutorial10_transparency.dir/build: tutorial10_transparency
.PHONY : CMakeFiles/tutorial10_transparency.dir/build

CMakeFiles/tutorial10_transparency.dir/requires: CMakeFiles/tutorial10_transparency.dir/tutorial10_transparency/tutorial10.cpp.o.requires
CMakeFiles/tutorial10_transparency.dir/requires: CMakeFiles/tutorial10_transparency.dir/common/shader.cpp.o.requires
CMakeFiles/tutorial10_transparency.dir/requires: CMakeFiles/tutorial10_transparency.dir/common/controls.cpp.o.requires
CMakeFiles/tutorial10_transparency.dir/requires: CMakeFiles/tutorial10_transparency.dir/common/texture.cpp.o.requires
CMakeFiles/tutorial10_transparency.dir/requires: CMakeFiles/tutorial10_transparency.dir/common/objloader.cpp.o.requires
CMakeFiles/tutorial10_transparency.dir/requires: CMakeFiles/tutorial10_transparency.dir/common/vboindexer.cpp.o.requires
.PHONY : CMakeFiles/tutorial10_transparency.dir/requires

CMakeFiles/tutorial10_transparency.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial10_transparency.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial10_transparency.dir/clean

CMakeFiles/tutorial10_transparency.dir/depend:
	cd /home/orica/Downloads/OpenGL-tutorial_v0014_33/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orica/Downloads/OpenGL-tutorial_v0014_33 /home/orica/Downloads/OpenGL-tutorial_v0014_33 /home/orica/Downloads/OpenGL-tutorial_v0014_33/build /home/orica/Downloads/OpenGL-tutorial_v0014_33/build /home/orica/Downloads/OpenGL-tutorial_v0014_33/build/CMakeFiles/tutorial10_transparency.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial10_transparency.dir/depend

