# std image is a C library.
add_library(stb_image stb_image.cpp)
target_include_directories(stb_image PRIVATE "${PROJECT_SOURCE_DIR}/include")

# Glad to easily use opengl
add_library(glad glad.c)
target_include_directories(glad PRIVATE "${PROJECT_SOURCE_DIR}/include")
target_link_libraries(glad GL dl glfw)

# The engine classes
add_library(VREngine managers/FileSystem.cpp)
set_target_properties(VREngine PROPERTIES COMPILE_FLAGS "-pedantic -Wall -Wextra -Wcast-align -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wnoexcept -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Werror -Wno-unused ")
target_include_directories(VREngine PRIVATE "${PROJECT_SOURCE_DIR}/include")
target_link_libraries(VREngine GL dl glfw stb_image glad)

# About lightning
add_executable(Lightning lighting.cpp)
set_target_properties(Lightning PROPERTIES COMPILE_FLAGS "-pedantic -Wall -Wextra -Wcast-align -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wnoexcept -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Werror -Wno-unused ")
target_include_directories(Lightning PRIVATE "${PROJECT_SOURCE_DIR}/include")
target_link_libraries(Lightning GL dl glfw stb_image glad VREngine)
