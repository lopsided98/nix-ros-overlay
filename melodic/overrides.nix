# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  amcl = rosSuper.amcl.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-planning/navigation/commit/f6873e1f335b80cf7f0a5a6c327eabfcac88e6af.patch";
        sha256 = "09477bglbibhfh12a954gbvdshn4c1j21s8c95m8v62qwm21jqld";
        stripLen = 1;
      })
    ];
  });

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
