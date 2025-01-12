cmake_minimum_required(VERSION 3.25)
project(first LANGUAGES CXX)

add_executable(app)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

enable_testing()

include(FetchContent)

FetchContent_Declare(fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG master
)
FetchContent_MakeAvailable(fmt)

target_sources(app
  PRIVATE src/main.cpp
)

set_target_properties(app
  PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED ON
)

target_link_libraries(app
  fmt::fmt
)

