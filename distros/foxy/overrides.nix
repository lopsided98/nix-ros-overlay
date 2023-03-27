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

  mcap-vendor = patchVendorGit (patchVendorGit rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap.git";
    fetchgitArgs = {
      rev = "dc6561d9ba867901709e36526dcf7f7359861e9c";
      hash = "sha256-cWBZgCgxssM3xZZPbZlU1yYlZUD7KJ/wiYSgPXNjwzU=";
    };
  }) {
    url = "https://github.com/lz4/lz4.git";
    fetchgitArgs = {
      rev = "d44371841a2f1728a3f36839fd4b7e872d0927d3";
      hash = "sha256-f7GZgOzUrkAfw1mqwlIKQQqDvkvIahGlHvq6AL+aAvA=";
    };
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
