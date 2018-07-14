cmake_minimum_required (VERSION 2.6)
project (opengl-test)


set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Basic tuto
add_executable(Tutorial src/main.cpp
  src/glad.c)
target_include_directories(Tutorial PRIVATE "include")
target_link_libraries(Tutorial GL dl glfw)

# More advanced with texture and camera
add_executable(Texture src/texture.cpp
  src/stb_image.cpp
  src/glad.c)
target_include_directories(Texture PRIVATE "include")
target_link_libraries(Texture GL dl glfw)

# About lightning
add_executable(Lightning src/lighting.cpp
  src/glad.c)
target_include_directories(Lightning PRIVATE "include")
target_link_libraries(Lightning GL dl glfw)
