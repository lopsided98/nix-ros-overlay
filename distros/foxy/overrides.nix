# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.4.20190605.tar.gz";
    sha256 = "1ab4d7ngvx009vajqv3kxw0s77z0hdd9xb8in1mvx86i1l3vndxa";
  };

  libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml/archive/10c907871f1ccd779c7fccf6b81a62762b5c4e7b.zip";
    sha256 = "0v6ks4hpxmakgymcfvafynla76gl3866grgwf4vjdsb4rsvr13vx";
  };

  ros1-rosbag-storage-vendor = patchVendorUrl rosSuper.ros1-rosbag-storage-vendor {
    url = "https://github.com/ros/ros_comm/archive/669fbd32d2f92cc295f4b024fcb2f982fddec0f0.zip";
    sha256 = "0phwk8imiy72xnizqj3y6vn5crjrcpr4qazhphv49r8zprirn6nj";
  };

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
