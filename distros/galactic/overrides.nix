# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  gazebo = self.gazebo_11;

  iceoryx-posh = patchVendorGit rosSuper.iceoryx-posh {
    url = "https://github.com/skystrife/cpptoml.git";
    file = "cmake/cpptoml/cpptoml.cmake.in";
    fetchgitArgs = {
      rev = "v0.1.1";
      sha256 = "0gxzzi4xbjszzlvmzaniayrd190kag1pmkn1h384s80cvqphbr00";
    };
  };

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.6.20200417.tar.gz";
    sha256 = "17xfc07bgllqr808jm779z98gwz01iik9skw2hcwpgg4j7kdxn5d";
  };

  libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml/archive/refs/tags/0.2.5.zip";
    sha256 = "1j6br21rc379wizvclz46s3kih0kfii6m923p4x4s37wdnm5nq0l";
  };

  pybind11-vendor = patchVendorUrl rosSuper.pybind11-vendor {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.tar.gz";
    sha256 = "0145vj9hrhb9qjp6jfvw0d1qc31lbb103xzxscr0yms0asv4sl4p";
  };

  ros1-rosbag-storage-vendor = patchVendorUrl rosSuper.ros1-rosbag-storage-vendor {
    url = "https://github.com/ros/ros_comm/archive/08fcc096f4e822b56bfb5a30b0a09ec45f0802aa.zip";
    sha256 = "0av26k0rxvlg839snpcbvdcd0gy6yp6wm74wmvp32n9slfkcvcd7";
  };

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
