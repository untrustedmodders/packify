message(STATUS "Pulling and configuring zstd")

option(ZSTD_BUILD_CONTRIB "BUILD_CONTRIB" OFF)
option(ZSTD_BUILD_PROGRAMS "BUILD_PROGRAMS" OFF)
option(ZSTD_BUILD_SHARED "BUILD_SHARED" OFF)
option(ZSTD_BUILD_STATIC "BUILD_STATIC" ON)
option(ZSTD_BUILD_TESTS "BUILD_TESTS" OFF)
option(ZSTD_BUILD_LEGACY_SUPPORT "BUILD_LEGACY_SUPPORT" OFF)
option(ZSTD_MULTITHREAD_SUPPORT "BUILD_MULTITHREAD_SUPPORT" OFF)
option(ZSTD_BUILD_PROGRAMS_LINK_SHARED "BUILD_PROGRAMS_LINK_SHARED" OFF)
option(ZSTD_BUILD_LZ4 "BUILD_LZ4" OFF)
option(ZSTD_BUILD_LZMA "BUILD_LZMA" OFF)
option(ZSTD_BUILD_ZLIB "BUILD_ZLIB" OFF)

FetchContent_Declare(
        zstd_lib
        GIT_REPOSITORY https://github.com/facebook/zstd.git
        GIT_TAG        794ea1b0afca0f020f4e57b6732332231fb23c70
)

FetchContent_MakeAvailable(zstd_lib)

set(zstd_lib_INCLUDE_DIR "${zstd_lib_SOURCE_DIR}/lib")
include_directories(${zstd_lib_INCLUDE_DIR})
add_subdirectory("${zstd_lib_SOURCE_DIR}/build/cmake" "${zstd_lib_BINARY_DIR}")
