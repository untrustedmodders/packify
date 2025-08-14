message(STATUS "Pulling and configuring nlohmann")

FetchContent_Declare(
        nlohmann_json
        GIT_REPOSITORY https://github.com/nlohmann/json.git
        GIT_TAG v3.12.0
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
        OVERRIDE_FIND_PACKAGE
)

FetchContent_MakeAvailable(nlohmann_json)
