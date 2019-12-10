# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    # This is specified in colcon.pkg. We will probably eventually need to start
    # using colcon...
    cmakeFlags = [ "-DBUILD_IDLC=AUTO" ];
  });

  # This build system contains fractal levels of stupidity
  foonathan-memory-vendor = patchVendorGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    sha256 = "1n7xxi61wzpixb3kldnl826syb4yml613q4i38d0cciydhy1gwzl";
    fetchgitArgs = {
      # Needed by the postFetch, then removed there
      leaveDotGit = true;
      # Prevent the build system from trying to download random files
      postFetch = ''
        cd "$out/cmake/comp"
        git fetch https://github.com/foonathan/compatibility.git
        git checkout -f cf13bff238397aab0d8c49b7f6263233cf8a2396
        sed -i 's|\(set(COMP_REMOTE_URL\s\).*|\1"file://''${CMAKE_CURRENT_LIST_DIR}/")|' \
          comp_base.cmake
        rm -rf "$out/.git"
      '';
    };
  };

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
