# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({
    patches ? [], ...
  }: {
     patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros2/rosidl_python/commit/a7ce53c8922963439ba526f7f6c92dc0cc955c5f.patch";
        sha256 = "0yal5mvhwxwkwzv5rlssfc4czck8zmcm36kwssypfwbkggc2700f";
        stripLen = 1;
      })
    ];
  });
}
