# CMake code that wraps ament_vendor macro for use with Nix. The
# wrapped version of ament_vendor serves two purposes:
#
# 1) Capturing information about what needs to be prefetched from from
# the Internet and stores it into vendored-source.json.
#
# 2) Modifying ament_vendor behavior to use the prefetched data
# instead of downloading them (downloading is not possible in Nix
# build sandbox).
#
# The functionality of the wrapper is controlled with the following
# CMake variables:
#
# AMENT_VENDOR_NIX_PREFETCH: If true, ament_vendor captures the
# information needed for prefetching the data. If false or undefined,
# ament_vendor obtains the data from the Nix store.
#
# AMENT_VENDOR_NIX_TAR_${TARGET_NAME}: Nix store path of the vendored
# source.
#
# The above variables are set in Nix function patchAmentVendorGit.

if(NOT ament_cmake_vendor_package_FIND_QUIETLY)
  message(STATUS "Using ament_vendor wrapped for Nix patching (${ament_cmake_vendor_package_DIR})")
endif()

if(AMENT_VENDOR_NIX_PREFETCH)
  # Write empty JSON object to vendored-source.json. Subsequent calls to
  # ament_vendor() will add entries to it.
  file(WRITE ${CMAKE_BINARY_DIR}/vendored-source.json "{}")
  find_program(JQ jq)
  find_program(NIX_PREFETCH_GIT nix-prefetch-git)
endif()

macro(ament_vendor TARGET_NAME)
  cmake_parse_arguments(_ARG "GLOBAL_HOOK;SKIP_INSTALL" "SOURCE_SUBDIR;VCS_TYPE;VCS_URL;VCS_VERSION;SATISFIED" "CMAKE_ARGS;PATCHES" ${ARGN})
  if(_ARG_UNPARSED_ARGUMENTS)
    message(FATAL_ERROR "ament_vendor() called with unused arguments: "
      "${_ARG_UNPARSED_ARGUMENTS}")
  endif()
  if(AMENT_VENDOR_NIX_PREFETCH)
    # Read previous version of vendored-source.json
    file(READ ${CMAKE_BINARY_DIR}/vendored-source.json VENDORED_SOURCE_JSON)

    # Add new entry to vendored-source.json
    execute_process(
      COMMAND ${NIX_PREFETCH_GIT} --url ${_ARG_VCS_URL} --rev ${_ARG_VCS_VERSION} --fetch-submodules
      COMMAND ${JQ} "${VENDORED_SOURCE_JSON} + {${TARGET_NAME}: {url: \"${_ARG_VCS_URL}\", rev: \"${_ARG_VCS_VERSION}\", hash: .hash}}"
      OUTPUT_FILE ${CMAKE_BINARY_DIR}/vendored-source.json
      COMMAND_ECHO STDOUT
      COMMAND_ERROR_IS_FATAL ANY)

    # Minimal implementation of the original ament_vendor macro that
    # makes zenoh_cpp_vendor happy. Without this, generation of
    # zenoh-cpp-vendor/vendored-source.json fails. If needed, we could
    # also use ament_vendor_orig as below, but this is faster, because
    # is doesn't download anything.
    include(ExternalProject)
    externalproject_add(
      ${TARGET_NAME}
      DOWNLOAD_COMMAND ""
    )
  else()
    if(_ARG_GLOBAL_HOOK)
      set(_ARG_GLOBAL_HOOK "GLOBAL_HOOK")
    else()
      unset(_ARG_GLOBAL_HOOK)
    endif()
    if(_ARG_SKIP_INSTALL)
      set(_ARG_SKIP_INSTALL "SKIP_INSTALL")
    else()
      unset(_ARG_SKIP_INSTALL)
    endif()
    cmake_language(CALL ament_vendor_orig ${TARGET_NAME}
      VCS_TYPE tar
      VCS_URL file://${AMENT_VENDOR_NIX_TAR_${TARGET_NAME}}
      VCS_VERSION ${_ARG_VCS_VERSION}
      ${_ARG_GLOBAL_HOOK}
      SATISFIED ${_ARG_SATISFIED}
      ${_ARG_SKIP_INSTALL}
      SOURCE_SUBDIR ${_ARG_SOURCE_SUBDIR}
      PATCHES ${_ARG_PATCHES}
      CMAKE_ARGS ${_ARG_CMAKE_ARGS}
    )
  endif()
endmacro()
