cmake_minimum_required(VERSION 3.10)
project(LightEditor)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

file(GLOB_RECURSE sources
	"${CMAKE_SOURCE_DIR}/src/v8/*.c"
	"${CMAKE_SOURCE_DIR}/src/v8/*.cpp"
	)

add_executable(led ${sources})
target_include_directories(led PUBLIC "${CMAKE_SOURCE_DIR}/libs/v8/v8/include")
