project(Extras)
cmake_minimum_required(VERSION 2.6)

if(DEFINED_ENV{CPPUTEST_HOME})
   message("using cppunit test found in " $ENV{CPPUTEST_HOME})
else()
   message("Path for CPPUTEST not set ")
#return()
endif()


find_package(CppUTest REQUIRED)

include_directories($ENV{CPPUTEST_HOME}/include)
link_directories($ENV{CPPUTEST_HOME}/lib) 

# add_definitions(-g -std=c++0x)

set(CMAKE_CXX_FLAGS "${CMAXE_CXX_FLAGS} -Wall")
set(sources 
   GeoServer.cpp
   Location.cpp)

set(testSources 
   CppUTestExtensions.cpp
   GeoServerTest.cpp
   LocationTest.cpp
   CppUTestExtensionsTest.cpp)
add_executable(utest testmain.cpp ${testSources} ${sources})

target_link_libraries(utest CppUTest)

