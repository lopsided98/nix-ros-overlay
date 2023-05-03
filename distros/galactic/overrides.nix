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
      hash = "sha256-mt2iIrkE/5K2kyOCIhsD6PoxKzobOTNNNr4FMEUx79A=";
      # Fix build with GCC 11
      # https://github.com/skystrife/cpptoml/pull/123
      postFetch = ''
        cd "$out"
        patch -p1 < '${self.fetchpatch {
          url = "https://github.com/skystrife/cpptoml/commit/c55a516e90133d89d67285429c6474241346d27a.patch";
          hash = "sha256-p1M5O9+FtG+w2FdJjxecGpRaBV4LSlSVNiRGYMjeMUQ=";
        }}'
      '';
    };
  };

  iceoryx-utils = rosSuper.iceoryx-utils.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix build with GCC 11
      (self.fetchpatch {
        url = "https://github.com/eclipse-iceoryx/iceoryx/commit/fdfad99d593fd96cf47a0091837b324f2cc2df6b.patch";
        stripLen = 1;
        includes = [ "include/*" ];
        hash = "sha256-naXO/T0Mh7ke4XIL5wzkQRkSwL1h7gONmhcqGNYeUoc=";
      })
    ];
  });

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

  rmw-cyclonedds-cpp = rosSuper.rmw-cyclonedds-cpp.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros2/rmw_cyclonedds/commit/f57732d15be53796d518e12352866124efcaa939.patch";
        hash = "sha256-hfvYAAmRYKPkwHCnZTy8tudSPXRlhuQmaujs4cy0fCE=";
        stripLen = 1;
      })
    ];
  });

  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Remove stray numpy import in template
      # https://github.com/ros2/rosidl_python/pull/185
      (self.fetchpatch {
        url = "https://github.com/ros2/rosidl_python/commit/bf866089baeb918834d9d16e05668d9f28887b87.patch";
        hash = "sha256-tOb0t50TbV29+agDupm5XUZJJErfaujgIRtmb2vZxWo=";
        stripLen = 1;
      })
    ];
  });

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };

  urdfdom = rosSuper.urdfdom.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom/pull/142 (backported to 2.3)
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom/commit/f6d9b2e248ab5c7d08b21a104a2d2d7fa3490790.patch";
        hash = "sha256-ykBw9DEBraYHzgrCa1JkDhWTYXBQL1MmfelC5j5ibrs=";
      })
    ];
  });
}
