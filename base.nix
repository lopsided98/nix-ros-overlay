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
    };
  });

in {
  python27 = pythonOverridesFor super.python27;
  python36 = pythonOverridesFor super.python36;
  python37 = pythonOverridesFor super.python37;

  console-bridge = self.callPackage ./console-bridge { };
}
