# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo11;
  };

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.6.20200417.tar.gz";
    sha256 = "1ab4d7ngvx009vajqv3kxw0s77z0hdd9xb8in1mvx87i1l3vndxa";
  };
}
