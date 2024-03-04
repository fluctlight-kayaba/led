project('led', 'cpp')

include = include_directories(
  'libs/v8/v8/include',
)

libs = [
  dependency('gtk+-3.0'),
]

executable(
  'led', 'main.cpp', 
  include_directories: include, 
  dependencies: libs,
)
