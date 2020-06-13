# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  cv-bridge = (patchBoostPython rosSuper.cv-bridge).overrideAttrs ({
    patches ? [],
    propagatedBuildInputs ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros-perception/vision_opencv/commit/fbfb25303bd77db6a5943043cc4303d0c0b835c9.patch";
      sha256 = "0pznlbqp99f6bzql3q1sjy9sqk2746wgp7qdqj790j5z0vb2v2r6";
      stripLen = 1;
    }) ];
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.pythonPackages.opencv3 ];
  });

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
