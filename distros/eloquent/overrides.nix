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

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
