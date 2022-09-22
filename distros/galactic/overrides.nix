# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  ament-cmake-export-targets = rosSuper.ament-cmake-export-targets.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Support new target export template introduced with CMake 3.24
      (self.fetchpatch {
        url = "https://github.com/ament/ament_cmake/commit/ca8c26ea3c89e69c0c636b7cd0c088674c689f5f.patch";
        stripLen = 1;
        sha256 = "sha256-ATdzHaD+3R3rhplaNzkEQBRqpkQDHVJLiB2oNlzIjm4=";
      })
    ];
  });

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
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.7.20210816.tar.gz";
    sha256 = "sha256-00FyzWdp4hi6aYUNcn1326ddDftYowB803cMII7h3no=";
  };

  libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml/archive/refs/tags/0.2.5.zip";
    sha256 = "1j6br21rc379wizvclz46s3kih0kfii6m923p4x4s37wdnm5nq0l";
  };

  mapviz = rosSuper.mapviz.overrideAttrs ({
    patches ? [], ...
  }: {
    # Fix linking to GLUT with CMake 3.22
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/swri-robotics/mapviz/commit/d68247748c0647f4f6a77d4f098e8ff2beedd39b.patch";
      sha256 = "sha256-o4NnuMA7N2kn4QAPb9ZkZF8j8aVI7/xQJYX6EGQEkBw=";
      stripLen = 1;
    }) ];
  });

  nav2-util = rosSuper.nav2-util.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Restrict test_msgs to test_dependency
      # https://github.com/ros-planning/navigation2/pull/2827
      (self.fetchpatch {
        url = "https://github.com/ros-planning/navigation2/commit/5cc006ea831e74af7ab08a08131786d27655e22a.patch";
        sha256 = "sha256-ahQT6yqrmPV7Peh70rdIMhB6rtBSUaD1N3YBORsm8n0=";
        stripLen = 1;
      })
    ] ++ patches;
  });

  pybind11-vendor = patchVendorUrl rosSuper.pybind11-vendor {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.tar.gz";
    sha256 = "0145vj9hrhb9qjp6jfvw0d1qc31lbb103xzxscr0yms0asv4sl4p";
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

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
