self: super: with super.lib; let

  pythonOverridesFor = python: python.override (old: {
    packageOverrides = pySelf: pySuper: {
      bson = pySelf.callPackage ./bson { };

      catkin-pkg = pySelf.callPackage ./catkin-pkg { };

      colcon-cmake = pySelf.callPackage ./colcon/cmake.nix { };

      colcon-core = pySelf.callPackage ./colcon/core.nix { };

      colcon-library-path = pySelf.callPackage ./colcon/library-path.nix { };

      colcon-metadata = pySelf.callPackage ./colcon/metadata.nix { };

      colcon-package-selection = pySelf.callPackage ./colcon/package-selection.nix { };

      colcon-pkg-config = pySelf.callPackage ./colcon/pkg-config.nix { };

      colcon-python-setup-py = pySelf.callPackage ./colcon/python-setup-py.nix { };

      colcon-recursive-crawl = pySelf.callPackage ./colcon/recursive-crawl.nix { };

      colcon-ros = pySelf.callPackage ./colcon/ros.nix { };

      colcon-test-result = pySelf.callPackage ./colcon/test-result.nix { };

      empy = pySelf.callPackage ./empy { };

      rosdep = pySelf.callPackage ./rosdep { };

      rosdistro = pySelf.callPackage ./rosdistro { };

      rosinstall-generator = pySelf.callPackage ./rosinstall-generator { };

      rospkg = pySelf.callPackage ./rospkg { };
    } // optionalAttrs pySuper.isPy3k {
      # This has to be done here (rather than in rosPackages) because
      # packageOverrides doesn't compose
      wxPython = pySelf.wxPython_4_0;
    };
  });

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

  gazebo_7 = self.callPackage ./gazebo/7.nix { };
  gazebo_9 = self.libsForQt5.callPackage ./gazebo/9.nix { };
  gazebo_11 = self.libsForQt5.callPackage ./gazebo { };
  gazebo = self.gazebo_11;

  geographiclib = self.callPackage ./geographiclib { };

  ignition = {
    cmake0 = self.callPackage ./ignition/cmake/0.nix { };
    cmake2 = self.callPackage ./ignition/cmake { };
    cmake = self.ignition.cmake2;

    common1 = self.callPackage ./ignition/common/1.nix { };
    common3 = self.callPackage ./ignition/common { };
    common = self.ignition.common3;

    fuel-tools1 = self.callPackage ./ignition/fuel-tools/1.nix { };
    fuel-tools4 = self.callPackage ./ignition/fuel-tools { };
    fuel-tools = self.ignition.fuel-tools4;

    math2 = self.callPackage ./ignition/math/2.nix { };
    math4 = self.callPackage ./ignition/math/4.nix { };
    math6 = self.callPackage ./ignition/math { };
    math = self.ignition.math6;

    msgs0 = self.callPackage ./ignition/msgs/0.nix { };
    msgs1 = self.callPackage ./ignition/msgs/1.nix { };
    msgs5 = self.callPackage ./ignition/msgs { };
    msgs = self.ignition.msgs5;

    tools = self.callPackage ./ignition/tools { };

    transport2 = self.callPackage ./ignition/transport/2.nix { };
    transport4 = self.callPackage ./ignition/transport/4.nix { };
    transport8 = self.callPackage ./ignition/transport { };
    transport = self.ignition.transport8;
  };

  openni2 = self.callPackage ./openni2 { };

  opensplice_6_9 = self.callPackage ./opensplice { };
  opensplice = self.opensplice_6_9;

  python27 = pythonOverridesFor super.python27;
  python37 = pythonOverridesFor super.python37;
  python38 = pythonOverridesFor super.python38;

  qwt6 = super.qwt6.overrideAttrs ({ postInstall ? "", ... }: {
    # Gazebo 9 expects headers to be in subdirectory
    postInstall = postInstall + ''
      ln -s "$out/include" "$out/include/qwt"
    '';
  });

  sdformat_4 = self.callPackage ./sdformat/4.nix { };
  sdformat_6 = self.callPackage ./sdformat/6.nix { };
  sdformat_9 = self.callPackage ./sdformat { };
  sdformat = self.sdformat_9;
}
