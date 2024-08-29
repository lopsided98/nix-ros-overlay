self: super: with self.lib; {
  cargo-ament-build = self.callPackage ./cargo-ament-build { };

  colcon = with self.python3Packages; colcon-core.withExtensions [
    colcon-argcomplete
    colcon-bash
    colcon-cmake
    colcon-core
    colcon-defaults
    colcon-devtools
    colcon-library-path
    colcon-metadata
    colcon-mixin
    colcon-notification
    colcon-output
    colcon-package-information
    colcon-package-selection
    colcon-parallel-executor
    colcon-python-setup-py
    colcon-recursive-crawl
    colcon-ros
    colcon-test-result
    colcon-zsh
  ];

  gazebo_11 = self.libsForQt5.callPackage ./gazebo { };
  gazebo = self.gazebo_11;

  gz-cmake_3 = self.callPackage ./gazebo/gz-cmake/3.nix { };

  gz-math_7 = self.callPackage ./gazebo/gz-math/7.nix { };

  gz-utils_2 = self.callPackage ./gazebo/gz-utils/2.nix { };

  geographiclib = self.callPackage ./geographiclib { };

  ignition = {
    cmake0 = self.callPackage ./ignition/cmake/0.nix { };
    cmake2 = self.callPackage ./ignition/cmake { };
    cmake = self.ignition.cmake2;

    common3 = self.callPackage ./ignition/common/3.nix { };
    common4 = self.callPackage ./ignition/common { };
    common = self.ignition.common4;

    fuel-tools4 = self.callPackage ./ignition/fuel-tools/4.nix { };
    fuel-tools7 = self.callPackage ./ignition/fuel-tools { };
    fuel-tools = self.ignition.fuel-tools7;

    math4 = self.callPackage ./ignition/math/4.nix { };
    math6 = self.callPackage ./ignition/math { };
    math = self.ignition.math6;

    msgs5 = self.callPackage ./ignition/msgs/5.nix { };
    msgs8 = self.callPackage ./ignition/msgs { };
    msgs = self.ignition.msgs8;

    tools = self.callPackage ./ignition/tools { };

    transport8 = self.callPackage ./ignition/transport/8.nix { };
    transport11 = self.callPackage ./ignition/transport { };
    transport = self.ignition.transport11;

    utils1 = self.callPackage ./ignition/utils { };
    utils = self.ignition.utils1;
  };

  ogre1_9 = self.callPackage ./ogre/1.9.nix { };

  openni2 = self.callPackage ./openni2 { };

  opensplice_6_9 = self.callPackage ./opensplice { };
  opensplice = self.opensplice_6_9;

  pythonPackagesExtensions = super.pythonPackagesExtensions ++ [
    (pyFinal: pyPrev: {
      bson = pyFinal.callPackage ./bson { };

      catkin-pkg = pyFinal.callPackage ./catkin-pkg { };

      catkin-tools = pyFinal.callPackage ./catkin-tools { };

      colcon-argcomplete = pyFinal.callPackage ./colcon/argcomplete.nix { };

      colcon-bash = pyFinal.callPackage ./colcon/bash.nix { };

      colcon-cargo = pyFinal.callPackage ./colcon/cargo.nix { };

      colcon-cmake = pyFinal.callPackage ./colcon/cmake.nix { };

      colcon-core = pyFinal.callPackage ./colcon/core.nix { };

      colcon-defaults = pyFinal.callPackage ./colcon/defaults.nix { };

      colcon-devtools = pyFinal.callPackage ./colcon/devtools.nix { };

      colcon-library-path = pyFinal.callPackage ./colcon/library-path.nix { };

      colcon-metadata = pyFinal.callPackage ./colcon/metadata.nix { };

      colcon-mixin = pyFinal.callPackage ./colcon/mixin.nix { };

      colcon-notification = pyFinal.callPackage ./colcon/notification.nix { };

      colcon-output = pyFinal.callPackage ./colcon/output.nix { };

      colcon-package-information = pyFinal.callPackage ./colcon/package-information.nix { };

      colcon-package-selection = pyFinal.callPackage ./colcon/package-selection.nix { };

      colcon-parallel-executor = pyFinal.callPackage ./colcon/parallel-executor.nix { };

      colcon-pkg-config = pyFinal.callPackage ./colcon/pkg-config.nix { };

      colcon-python-setup-py = pyFinal.callPackage ./colcon/python-setup-py.nix { };

      colcon-recursive-crawl = pyFinal.callPackage ./colcon/recursive-crawl.nix { };

      colcon-ros = pyFinal.callPackage ./colcon/ros.nix { };

      colcon-ros-cargo = pyFinal.callPackage ./colcon/ros-cargo.nix { };

      colcon-test-result = pyFinal.callPackage ./colcon/test-result.nix { };

      colcon-zsh = pyFinal.callPackage ./colcon/zsh.nix { };

      empy_3 = pyPrev.empy.overrideAttrs ({
        pname, ...
      }: rec {
        version = "3.3.4";
        src = pyFinal.fetchPypi {
          inherit pname version;
          hash = "sha256-c6xJeFtgFHnfTqGKfHm8EwSop8NMArlHLPEgauiPAbM=";
        };
      });

      osrf-pycommon = pyFinal.callPackage ./osrf-pycommon {};

      rosdep = pyFinal.callPackage ./rosdep { };

      rosdistro = pyFinal.callPackage ./rosdistro { };

      rosinstall-generator = pyFinal.callPackage ./rosinstall-generator { };

      rospkg = pyFinal.callPackage ./rospkg { };
    })
  ];

  sdformat_9 = self.callPackage ./sdformat/9.nix { };
  sdformat_13 = self.callPackage ./sdformat/13.nix { };
  sdformat = self.sdformat_9;

  superflore = self.python3Packages.callPackage ./superflore { };
}
