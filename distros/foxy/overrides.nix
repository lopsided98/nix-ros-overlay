# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
    preConfigure ? "", ...
  }: {
    # Fix running ddsconf from within the build directory (probably an RPATH
    # issue)
    preConfigure = preConfigure + ''
      export LD_LIBRARY_PATH="$(pwd)/build/lib"
    '';
  });

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.7.20210816.tar.gz";
    sha256 = "sha256-00FyzWdp4hi6aYUNcn1326ddDftYowB803cMII7h3no=";
  };

  libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml/archive/10c907871f1ccd779c7fccf6b81a62762b5c4e7b.zip";
    sha256 = "0v6ks4hpxmakgymcfvafynla76gl3866grgwf4vjdsb4rsvr13vx";
  };

  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix finding PyQt5 SIP bindings with SIP >=5
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/python_qt_binding/commit/d97ecb27e4460633f97b816e3217b032a93c5da0.patch";
        sha256 = "08sdsm879bq349kq2k3wbs7p3l2syzrxdw3cgdvxfj2inkhdbf9f";
      })
    ] ++ patches;
  });

  # Fix compatibility with assimp 5.1
  # https://github.com/ros2/rviz/pull/827
  rviz-assimp-vendor = rosSuper.rviz-assimp-vendor.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros2/rviz/commit/95ddcea7459cc4faf9954ba018491d1eea8d4280.patch";
      sha256 = "sha256-JW3GgSukrWR19je35crNeQNSDR6ZRoFRzpR/MBcwMws=";
      stripLen = 1;
      includes = [ "rviz_assimp_vendor-extras.cmake.in" ];
    }) ];
  });

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };

  # Fix compatibility with assimp 5.1
  # https://github.com/ros2/rviz/pull/827
  rviz-rendering = rosSuper.rviz-rendering.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros2/rviz/commit/95ddcea7459cc4faf9954ba018491d1eea8d4280.patch";
      sha256 = "sha256-1kYIrcdm7mu39OFXeDmMWGJygeTKr1fc6ECbM5hf3ZU=";
      stripLen = 1;
      includes = [ "CMakeLists.txt" ];
    }) ];
  });

  yaml-cpp-vendor = rosSuper.yaml-cpp-vendor.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix "CMake Error: Unknown argument -std=c++14 -w"
      (self.fetchpatch {
        url = "https://github.com/ros2/yaml_cpp_vendor/pull/24.patch";
        sha256 = "0via2vcvx0r0w8n626n7ghljadd2apdqn0wcqygmgbd7dmvfr97h";
      })
    ] ++ patches;
  });
}
