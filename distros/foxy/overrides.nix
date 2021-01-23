# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  console-bridge-vendor = patchVendorUrl rosSuper.console-bridge-vendor {
    url = "https://github.com/ros/console_bridge/archive/0.5.1.tar.gz";
    sha256 = "0c7ivb99jjfimxb28chlc3pjnmzdz88f5abkh83x846m5k461bf4";
  };

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.4.20190605.tar.gz";
    sha256 = "1ab4d7ngvx009vajqv3kxw0s77z0hdd9xb8in1mvx86i1l3vndxa";
  };

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };

  spdlog-vendor = patchVendorUrl rosSuper.spdlog-vendor {
    url = "https://github.com/gabime/spdlog/archive/v1.5.0.tar.gz";
    sha256 = "12pfi87vh5pjv17iscnm6xkpykhdkg0s0l6mzs12pb7syyz0p3mk";
  };
}
