message(STATUS "Pulling and configuring simdjson")

FetchContent_Declare(simdjson
        GIT_REPOSITORY https://github.com/simdjson/simdjson.git
        GIT_TAG v3.13.0
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
        OVERRIDE_FIND_PACKAGE
)

FetchContent_MakeAvailable(simdjson)
