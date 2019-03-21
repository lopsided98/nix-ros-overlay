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

  vcstools = buildPythonPackage rec {
    pname = "vcstools";
    version = "0.1.40";
    name = "${pname}-${version}";

    src = fetchPypi {
      inherit pname version;
      sha256 = "1mfasip71ky1g968n1zlramgn3fjxk4c922d0x9cs0nwm2snln4m";
    };

    propagatedBuildInputs = [ pyyaml python-dateutil ];

    # Tries to download files and lots of other issues
    doCheck = false;
    
    meta = {
      description = "Python library for interacting with various VCS systems";
      homepage = http://wiki.ros.org/vcstools;
    };
  };
  
  wstool = buildPythonPackage rec {
    pname = "wstool";
    version = "0.1.17";
    name = "${pname}-${version}";

    src = fetchPypi {
      inherit pname version;
      sha256 = "0dz2gn2qx919s1z5wa94nkvb01pnqp945mvj97108w7i1q8lz6y7";
    };

    propagatedBuildInputs = [ vcstools pyyaml ];

    meta = {
      description = "A tool for managing a workspace of multiple heterogenous SCM repositories";
      homepage = http://wiki.ros.org/wstool;
    };
  };

  console-bridge = self.callPackage ./console-bridge { };
}
