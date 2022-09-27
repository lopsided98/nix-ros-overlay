self: super: with self.lib; let

  pythonOverridesFor = superPython: fix (python: superPython.override ({
    packageOverrides ? _: _: {}, ...
  }: {
    self = python;
    packageOverrides = composeExtensions packageOverrides (pySelf: pySuper: {
      bson = pySelf.callPackage ./bson { };

      catkin-pkg = pySelf.callPackage ./catkin-pkg { };

      catkin-tools = pySelf.callPackage ./catkin-tools { };

      colcon-cmake = pySelf.callPackage ./colcon/cmake.nix { };

      colcon-core = pySelf.callPackage ./colcon/core.nix { };

      colcon-library-path = pySelf.callPackage ./colcon/library-path.nix { };

      colcon-metadata = pySelf.callPackage ./colcon/metadata.nix { };

      colcon-notification = pySelf.callPackage ./colcon/notification.nix { };

      colcon-output = pySelf.callPackage ./colcon/output.nix { };

      colcon-package-selection = pySelf.callPackage ./colcon/package-selection.nix { };

      colcon-parallel-executor = pySelf.callPackage ./colcon/parallel-executor.nix { };

      colcon-pkg-config = pySelf.callPackage ./colcon/pkg-config.nix { };

      colcon-python-setup-py = pySelf.callPackage ./colcon/python-setup-py.nix { };

      colcon-recursive-crawl = pySelf.callPackage ./colcon/recursive-crawl.nix { };

      colcon-ros = pySelf.callPackage ./colcon/ros.nix { };

      colcon-test-result = pySelf.callPackage ./colcon/test-result.nix { };

      osrf-pycommon = pySelf.callPackage ./osrf-pycommon {};

      rosdep = pySelf.callPackage ./rosdep { };

      rosdistro = pySelf.callPackage ./rosdistro { };

      rosinstall-generator = pySelf.callPackage ./rosinstall-generator { };

      rospkg = pySelf.callPackage ./rospkg { };
    });
  }));

in {
  colcon = with self.python3Packages; colcon-core.withExtensions [
    colcon-cmake
    colcon-core
    colcon-library-path
    colcon-metadata
    colcon-package-selection
    colcon-python-setup-py
    colcon-recursive-crawl
    colcon-ros
    colcon-test-result
  ];

  gazebo_9 = self.libsForQt5.callPackage ./gazebo/9.nix { };
  gazebo_11 = self.libsForQt5.callPackage ./gazebo { };
  gazebo = self.gazebo_11;

  geographiclib = self.callPackage ./geographiclib { };

  ignition = {
    cmake0 = self.callPackage ./ignition/cmake/0.nix { };
    cmake2 = self.callPackage ./ignition/cmake { };
    cmake = self.ignition.cmake2;

    common1 = self.callPackage ./ignition/common/1.nix { };
    common3 = self.callPackage ./ignition/common/3.nix { };
    common4 = self.callPackage ./ignition/common { };
    common = self.ignition.common4;

    fuel-tools1 = self.callPackage ./ignition/fuel-tools/1.nix { };
    fuel-tools4 = self.callPackage ./ignition/fuel-tools/4.nix { };
    fuel-tools7 = self.callPackage ./ignition/fuel-tools { };
    fuel-tools = self.ignition.fuel-tools7;

    math4 = self.callPackage ./ignition/math/4.nix { };
    math6 = self.callPackage ./ignition/math { };
    math = self.ignition.math6;

    msgs1 = self.callPackage ./ignition/msgs/1.nix { };
    msgs5 = self.callPackage ./ignition/msgs/5.nix { };
    msgs8 = self.callPackage ./ignition/msgs { };
    msgs = self.ignition.msgs8;

    tools = self.callPackage ./ignition/tools { };

    transport4 = self.callPackage ./ignition/transport/4.nix { };
    transport8 = self.callPackage ./ignition/transport/8.nix { };
    transport11 = self.callPackage ./ignition/transport { };
    transport = self.ignition.transport11;

    utils1 = self.callPackage ./ignition/utils { };
    utils = self.ignition.utils1;
  };

  openni2 = self.callPackage ./openni2 { };

  opensplice_6_9 = self.callPackage ./opensplice { };
  opensplice = self.opensplice_6_9;

  python27 = pythonOverridesFor super.python27;
  python37 = pythonOverridesFor super.python37;
  python38 = pythonOverridesFor super.python38;
  python39 = pythonOverridesFor super.python39;
  python310 = pythonOverridesFor super.python310;

  sdformat_6 = self.callPackage ./sdformat/6.nix { };
  sdformat_9 = self.callPackage ./sdformat { };
  sdformat = self.sdformat_9;

  superflore = self.python3Packages.callPackage ./superflore { };
}
