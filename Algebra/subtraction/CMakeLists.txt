# set the project name
PROJECT(Subtraction VERSION 1.0)

# Glob the sources
file(GLOB SOURCES 
${PROJECT_SOURCE_DIR}/include/${PROJECT_NAME}/*.h 
${PROJECT_SOURCE_DIR}/src/*.cpp)

# Add the library
ADD_LIBRARY(${PROJECT_NAME} ${SOURCES})

# Include directories
target_include_directories(${PROJECT_NAME} PUBLIC
  $<INSTALL_INTERFACE:${PROJECT_NAME}/include> 
  $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
)

# Glob the headers
file(GLOB_RECURSE HPP ${PROJECT_SOURCE_DIR}/include/${PROJECT_NAME}/*.h) 

# Set target properties
set_target_properties(${PROJECT_NAME} PROPERTIES 
    DEBUG_POSTFIX "d"
    RELWITHDEBINFO_POSTFIX "rd"
    FOLDER "Algebra"
    PUBLIC_HEADER "${HPP}"
)

# Convert project name to lowercase
string(TOLOWER ${PROJECT_NAME} PROJECT_NAME_LOWER)

# Install targets
install (
	TARGETS ${PROJECT_NAME} EXPORT ${PROJECT_NAME_LOWER} DESTINATION ${PROJECT_NAME}/${PACKAGE_LIB_INSTALL_DIR} 
	PUBLIC_HEADER DESTINATION ${PROJECT_NAME}/include/${PROJECT_NAME}
)
install(EXPORT ${PROJECT_NAME_LOWER} FILE ${PROJECT_NAME_LOWER}-config.cmake DESTINATION ${PROJECT_NAME}/${PACKAGE_LIB_INSTALL_DIR} )
