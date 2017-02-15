# Specify the minimum version for CMake
cmake_minimum_required(VERSION 2.8)

# Project's name

project(Assets)

# Set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# The following folder will be included
include_directories("${PROJECT_SOURCE_DIR}/Sources/API ${PROJECT_SOURCE_DIR}/Sources/API/JoinPieces ${PROJECT_SOURCE_DIR}/Sources/API/Shapes ${PROJECT_SOURCE_DIR}/Sources/API/Utilities ${PROJECT_SOURCE_DIR}/Sources/Assets")

add_executable(Assets ${PROJECT_SOURCE_DIR}/Sources/API/include.h ${PROJECT_SOURCE_DIR}/Sources/API/Logos.h ${PROJECT_SOURCE_DIR}/Sources/Assets/Logo.c ${PROJECT_SOURCE_DIR}/Sources/Assets/Main.c ${PROJECT_SOURCE_DIR}/Sources/Assets/ChatIcon.c ${PROJECT_SOURCE_DIR}/Sources/Assets/CopyFiles.c ${PROJECT_SOURCE_DIR}/Sources/Assets/Callbacks.c ${PROJECT_SOURCE_DIR}/Sources/Assets/HTML.c ${PROJECT_SOURCE_DIR}/Sources/API/JoinPieces/JoinIconChat.c ${PROJECT_SOURCE_DIR}/Sources/API/JoinPieces/JoinTriangles.c ${PROJECT_SOURCE_DIR}/Sources/API/Shapes/ColoredTriangle.c ${PROJECT_SOURCE_DIR}/Sources/API/Shapes/OutlinedTriangle.c ${PROJECT_SOURCE_DIR}/Sources/API/Shapes/ColoredTriangle.c ${PROJECT_SOURCE_DIR}/Sources/API/Shapes/Polygon.c ${PROJECT_SOURCE_DIR}/Sources/API/Shapes/Rhombus.c ${PROJECT_SOURCE_DIR}/Sources/API/Utilities/CP.c ${PROJECT_SOURCE_DIR}/Sources/API/UI/MainWindow.ui )

find_package (PkgConfig REQUIRED)
pkg_check_modules (CAIRO REQUIRED cairo)

include_directories (${CAIRO_INCLUDE_DIRS})
link_directories (${CAIRO_LIBRARY_DIRS})
add_definitions (${CAIRO_CFLAGS_OTHER})
target_link_libraries (Assets ${CAIRO_LIBRARIES})

find_package (PkgConfig REQUIRED)
pkg_check_modules (GTK3 REQUIRED gtk+-3.0)

include_directories (${GTK3_INCLUDE_DIRS})
link_directories (${GTK3_LIBRARY_DIRS})
add_definitions (${GTK3_CFLAGS_OTHER})
target_link_libraries (Assets ${GTK3_LIBRARIES})

