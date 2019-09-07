# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  nav2-util = rosSuper.nav2-util.overrideAttrs ({
    patches ? [], ...
  }: {
     patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-planning/navigation2/commit/b87942a3502af9e4b6ea7d6cf78a510f55539cc1.patch";
        sha256 = "1xhz0vkam7aka1xz6sin9ggdnqabxk1rcx3zmbrvjpvyp7aq37qj";
        stripLen = 2;
      })
    ];
  });

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
