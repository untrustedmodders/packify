message(STATUS "Pulling and configuring spdlog")

set(CMAKE_POLICY_VERSION_MINIMUM 3.5)

FetchContent_Declare(
        spdlog
        GIT_REPOSITORY https://github.com/gabime/spdlog.git
        GIT_TAG v1.15.3
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
        OVERRIDE_FIND_PACKAGE
)

FetchContent_MakeAvailable(spdlog)
