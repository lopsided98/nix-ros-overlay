# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  gazebo-plugins = rosSuper.gazebo-plugins.overrideAttrs ({
    patches ? [], ...
  }:{
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-simulation/gazebo_ros_pkgs/commit/b756d784d4bdc45bf33b28ac6c0a01c15563e36c.patch";
        sha256 = "08lpkcda9yr3vjc2wxy5hzm99g7876d6402snac3mx5j7fa3w5i2";
        stripLen = 1;
      })
    ];
  });
}
