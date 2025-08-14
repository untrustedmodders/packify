message(STATUS "Pulling and configuring tl-expected")

set(EXPECTED_BUILD_TESTS OFF)

FetchContent_Declare(tl-expected
        GIT_REPOSITORY https://github.com/TartanLlama/expected.git
        GIT_TAG v1.2.0
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
        OVERRIDE_FIND_PACKAGE
)

FetchContent_MakeAvailable(tl-expected)
