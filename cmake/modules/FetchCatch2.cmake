message(STATUS "Pulling and configuring catch")

FetchContent_Declare(
        Catch2
        GIT_REPOSITORY https://github.com/catchorg/Catch2.git
        GIT_TAG v3.4.0
        GIT_PROGRESS TRUE
        GIT_SHALLOW TRUE
        OVERRIDE_FIND_PACKAGE
)

FetchContent_MakeAvailable(Catch2)
