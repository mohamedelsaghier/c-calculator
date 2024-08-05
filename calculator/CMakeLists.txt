cmake_minimum_required(VERSION 3.10)

project(Calculator VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)



# Set the base directory for the AlgebraLibs packages
set(AlgebraLibs "${CMAKE_CURRENT_SOURCE_DIR}/AlgebraLibs")

if(${CMAKE_HOST_WIN32})
	set(OS_ENV "x64/msvc16")
elseif(${CMAKE_HOST_UNIX})
	set(OS_ENV "x64/gcc11.3")
elseif(${CMAKE_HOST_APPLE})
	set(OS_ENV "clang")
else()
	message(FATAL_ERROR  "HOSTING environment not Supported"  )
endif()

set(PACKAGE_LIB_INSTALL_DIR ${OS_ENV}/lib)


# Set the directory for each package
set(addition_DIR "${AlgebraLibs}/addition/${PACKAGE_LIB_INSTALL_DIR}")
set(subtraction_DIR "${AlgebraLibs}/subtraction/${PACKAGE_LIB_INSTALL_DIR}")
set(multiplication_DIR "${AlgebraLibs}/multiplication/${PACKAGE_LIB_INSTALL_DIR}")
set(division_DIR "${AlgebraLibs}/division/${PACKAGE_LIB_INSTALL_DIR}")
set(inputoutput_DIR "${AlgebraLibs}/inputoutput/${PACKAGE_LIB_INSTALL_DIR}")

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
    "${AlgebraLibs}/addition/include"
    "${AlgebraLibs}/subtraction/include"
    "${AlgebraLibs}/multiplication/include"
    "${AlgebraLibs}/division/include"
    "${AlgebraLibs}/inputoutput/include"
)

# Link the libraries
target_link_libraries(${PROJECT_NAME} PRIVATE
    addition
    subtraction
    multiplication
    division
    inputoutput
)