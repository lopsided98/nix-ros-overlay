self: super: with super.lib; let

  pythonOverridesFor = python: python.override (old: {
    packageOverrides = pySelf: pySuper: {
      catkin-pkg = pySelf.callPackage ./catkin-pkg { };
      
      empy = pySelf.callPackage ./empy { };
      
      rosdep = pySelf.callPackage ./rosdep { };

      rosdistro = pySelf.callPackage ./rosdistro { };
      
      rosinstall = pySelf.callPackage ./rosinstall { };

      rosinstall-generator = pySelf.callPackage ./rosinstall-generator { };

      rospkg = pySelf.callPackage ./rospkg { };

      vcstools = pySelf.callPackage ./vcstools { };

      wstool = pySelf.callPackage ./wstool { };
    };
  });

in {
  openni2 = self.callPackage ./openni2 { };

  python27 = pythonOverridesFor super.python27;
  python36 = pythonOverridesFor super.python36;
  python37 = pythonOverridesFor super.python37;
}
