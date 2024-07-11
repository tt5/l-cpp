# Parent project does not export its library target, so this CML implicitly
# depends on being added from it, i.e. the testing is done only from the build
# tree and is not feasible from an install location

project(cmakeinitTests LANGUAGES CXX)

# ---- Tests ----

add_executable(cmakeinit_test source/cmakeinit_test.cpp)
target_link_libraries(cmakeinit_test PRIVATE cmakeinit_lib)
target_compile_features(cmakeinit_test PRIVATE cxx_std_20)

add_test(NAME cmakeinit_test COMMAND cmakeinit_test)

# ---- End-of-file commands ----

add_folders(Test)
