self: super: with super.lib; let

  pythonOverridesFor = python: python.override (old: {
    packageOverrides = pySelf: pySuper: {
      bson = pySelf.callPackage ./bson { };
    
      catkin-pkg = pySelf.callPackage ./catkin-pkg { };

      colcon-cmake = pySelf.callPackage ./colcon/cmake.nix { };

      colcon-core = pySelf.callPackage ./colcon/core.nix { };

      colcon-library-path = pySelf.callPackage ./colcon/library-path.nix { };

      colcon-pkg-config = pySelf.callPackage ./colcon/pkg-config.nix { };

      colcon-python-setup-py = pySelf.callPackage ./colcon/python-setup-py.nix { };

      colcon-recursive-crawl = pySelf.callPackage ./colcon/recursive-crawl.nix { };

      colcon-ros = pySelf.callPackage ./colcon/ros.nix { };

      colcon-test-result = pySelf.callPackage ./colcon/test-result.nix { };

      empy = pySelf.callPackage ./empy { };

      rosdep = pySelf.callPackage ./rosdep { };

      rosdistro = pySelf.callPackage ./rosdistro { };

      rosinstall = pySelf.callPackage ./rosinstall { };

      rosinstall-generator = pySelf.callPackage ./rosinstall-generator { };

      rospkg = pySelf.callPackage ./rospkg { };

      vcstools = pySelf.callPackage ./vcstools { };

      wstool = pySelf.callPackage ./wstool { };
    } // optionalAttrs pySuper.isPy3k {
      # This has to be done here (rather than in rosPackages) because
      # packageOverrides doesn't compose
      wxPython = pySelf.wxPython_4_0;
    };
  });

in {
  colcon = with self.python3Packages; colcon-core.withExtensions [
    colcon-ros
  ];

  geographiclib = self.callPackage ./geographiclib { };

  openni2 = self.callPackage ./openni2 { };

  opensplice = self.opensplice_6_9;
  opensplice_6_9 = self.callPackage ./opensplice { };

  python27 = pythonOverridesFor super.python27;
  python37 = pythonOverridesFor super.python37;
  python38 = pythonOverridesFor super.python38;
}
