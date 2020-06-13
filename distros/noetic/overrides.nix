# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  gazeboSimulator = self.gazeboSimulator // {
    gazebo = self.gazeboSimulator.gazebo11;
  };

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.6.20200417.tar.gz";
    sha256 = "17xfc07bgllqr808jm779z98gwz01iik9skw2hcwpgg4j7kdxn5d";
  };
}
