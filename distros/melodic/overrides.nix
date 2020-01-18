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

  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo9;
  };
}
