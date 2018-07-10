cmake_minimum_required (VERSION 2.6)
project (opengl-test)

add_executable(Tutorial src/main.cpp
  src/glad.c
  src/shader.cpp)
target_include_directories(Tutorial PRIVATE "include")
target_link_libraries(Tutorial GL dl glfw)
