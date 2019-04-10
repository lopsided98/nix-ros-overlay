# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo7;
  };

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

  # ROS lunar and older provide their own OpenCV 3 package, because older
  # Ubuntu versions did not have one. We don't need to use this.
  inherit (self) opencv3;
}
