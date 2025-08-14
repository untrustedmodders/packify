message(STATUS "Pulling and configuring yaml-cpp")

FetchContent_Declare(yaml-cpp
        GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
        GIT_TAG 0.8.0
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
        OVERRIDE_FIND_PACKAGE
)

FetchContent_MakeAvailable(yaml-cpp)
