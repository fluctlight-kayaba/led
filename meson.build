project(
  'led', 'cpp',
)

add_project_arguments('-std=c++17', language: 'cpp')

include = include_directories(
  'libs/v8/v8/include',
)

libs = [
  dependency('JavascriptCore'),
]

executable(
  'led', 'main.cpp', 
  include_directories: include, 
  dependencies: libs,
)
