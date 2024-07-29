cmake_minimum_required(VERSION 3.10)

project(Algebra)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)


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

add_subdirectory(addition)
add_subdirectory(subtraction)
add_subdirectory(multiplication)
add_subdirectory(division)
add_subdirectory(inputoutput)


