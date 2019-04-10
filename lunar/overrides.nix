# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  catkin = rosSuper.catkin.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/catkin/commit/98f97ffcffbb7127d4a8aff0fcb26d1578557906.patch;
        sha256 = "1z6yl5yqrbivw1zkibkk5vn5ykrsrfmba80vmcqriiz0fdq2sigk";
      })
      (self.fetchpatch {
        url = https://github.com/ros/catkin/commit/4812667954e4cb7f99a753ffd4d725047e73a73b.patch;
        sha256 = "02i12935w119yyqvwlrd0w3z6xl786wlrkh49wsx6djaljhk3w3a";
      })
    ];
  });

  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo7;
  };

  libfreenect = rosSuper.libfreenect.overrideAttrs ({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.libGL self.libGL.dev self.libGLU self.libGLU.dev ];
  });

  # ROS lunar and older provide their own OpenCV 3 package, because older
  # Ubuntu versions did not have one. We don't need to use this.
  inherit (self) opencv3;

  tf2 = rosSuper.tf2.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/geometry2/commit/0173a538f89c66e2783dc67ee3609660625e16b4.patch;
        stripLen = 1;
        sha256 = "0v1kxi4g1s3f8wf2q0yrb3y9mf5i0sjphnq0d2hxpspr21s1wki6";
      })
    ];
  });
}
