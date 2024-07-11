install(
    TARGETS cmakeinit_exe
    RUNTIME COMPONENT cmakeinit_Runtime
)

if(PROJECT_IS_TOP_LEVEL)
  include(CPack)
endif()
