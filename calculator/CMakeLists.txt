cmake_minimum_required(VERSION 3.10)

project(Calculator VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)



# Set the base directory for the AlgebraLibs packages
set(AlgebraLibs "${CMAKE_CURRENT_SOURCE_DIR}/AlgebraLibs")

# Set the directory for each package
set(addition_DIR "${AlgebraLibs}/Addition/${PACKAGE_LIB_INSTALL_DIR}")
set(subtraction_DIR "${AlgebraLibs}/Subtraction/${PACKAGE_LIB_INSTALL_DIR}")
set(multiplication_DIR "${AlgebraLibs}/Multiplication/${PACKAGE_LIB_INSTALL_DIR}")
set(division_DIR "${AlgebraLibs}/Division/${PACKAGE_LIB_INSTALL_DIR}")
set(inputoutput_DIR "${AlgebraLibs}/InputOutput/${PACKAGE_LIB_INSTALL_DIR}")

# Find the installed packages
find_package(addition CONFIG REQUIRED)
find_package(subtraction CONFIG REQUIRED)
find_package(multiplication CONFIG REQUIRED)
find_package(division CONFIG REQUIRED)
find_package(inputoutput CONFIG REQUIRED)

# Add the executable
add_executable(${PROJECT_NAME} src/main.cpp)

# Include directories
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    "${AlgebraLibs}/Addition/include"
    "${AlgebraLibs}/Subtraction/include"
    "${AlgebraLibs}/Multiplication/include"
    "${AlgebraLibs}/Division/include"
    "${AlgebraLibs}/InputOutput/include"
)

# Link the libraries
target_link_libraries(${PROJECT_NAME} PRIVATE
    Addition
    Subtraction
    Multiplication
    Division
    InputOutput
)
