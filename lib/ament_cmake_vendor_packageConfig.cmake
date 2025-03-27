# CMake package that defines alternative version of ament_vendor macro
# to extract information about vendored source to
# vendored-source.json. Normally, the ament_vendor macro is defined in
# the ament_cmake_vendor_package and it downloads the vendored source
# code at compile time. This is not possible with Nix, because Nix
# builds packages without network access. Therefore, we inject this
# alternative macro to cmake at update time and it extracts the
# information needed by Nix to download the source code. The main
# entry point to all this functionality is in the patchAmentVendorGit
# function.

if(NOT ament_cmake_vendor_package_FIND_QUIETLY)
  message(STATUS "Found ament_cmake_vendor_package: Dummy version for Nix patching (${ament_cmake_vendor_package_DIR})")
endif()

find_program(JQ jq)
find_program(NIX_PREFETCH_GIT nix-prefetch-git)

macro(ament_vendor TARGET_NAME)
  cmake_parse_arguments(_ARG "GLOBAL_HOOK;SKIP_INSTALL" "SOURCE_SUBDIR;VCS_TYPE;VCS_URL;VCS_VERSION;SATISFIED" "CMAKE_ARGS;PATCHES" ${ARGN})
  if(_ARG_UNPARSED_ARGUMENTS)
    message(FATAL_ERROR "ament_vendor() called with unused arguments: "
      "${_ARG_UNPARSED_ARGUMENTS}")
  endif()

  execute_process(
    COMMAND ${NIX_PREFETCH_GIT} --url ${_ARG_VCS_URL} --rev ${_ARG_VCS_VERSION}
    COMMAND ${JQ} "{url: \"${_ARG_VCS_URL}\", rev: \"${_ARG_VCS_VERSION}\", hash: .hash}"
    OUTPUT_FILE ${CMAKE_BINARY_DIR}/vendored-source.json
    COMMAND_ECHO STDOUT
    COMMAND_ERROR_IS_FATAL ANY)
endmacro()
