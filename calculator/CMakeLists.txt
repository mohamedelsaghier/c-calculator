cmake_minimum_required(VERSION 3.10)

project(Calculator VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Build type (Debug, Release, RelWithDebInfo, MinSizeRel)" FORCE)
endif()

# Set up Conan paths
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)



# Add the executable
add_executable(${PROJECT_NAME} src/main.cpp)

# Include directories from Conan packages
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Link the libraries from Conan packages
find_package(addition CONFIG REQUIRED)
find_package(subtraction CONFIG REQUIRED)
find_package(multiplication CONFIG REQUIRED)
find_package(division CONFIG REQUIRED)
find_package(inputoutput CONFIG REQUIRED)

target_link_libraries(${PROJECT_NAME} PRIVATE
    addition::addition
    subtraction::subtraction
    multiplication::multiplication
    division::division
    inputoutput::inputoutput
)