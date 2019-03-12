{ lib, stdenv, pkgs, pythonPackages }: 
  with lib;
  with pkgs;
  with pythonPackages;
let 
  callPackage = newScope self;
  callPythonPackage = newScope (pythonPackages // self);
  
  self = rec {
    buildRosPackage = { postFixup ? "", ... }@args: stdenv.mkDerivation args // {
    
      postFixup = ''
        wrapPythonPrograms
      '' + postFixup;
    };

    catkin-pkg = pythonPackages.callPackage ./catkin-pkg { };
    
    empy = pythonPackages.callPackage ./empy {};

    rospkg = callPythonPackage ./rospkg {};
    
    rosdistro = callPythonPackage ./rosdistro {};

    rosdep = callPythonPackage ./rosdep {};
    
    rosinstall-generator = callPythonPackage ./rosinstall-generator {};
    
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
    
    rosinstall = buildPythonPackage rec {
      pname = "rosinstall";
      version = "0.7.8";
      name = "${pname}-${version}";

      src = fetchPypi {
        inherit pname version;
        sha256 = "0h7d8ynv44c68sbfn28xw4k18k3ip6252x7r7bqw6b5cifzhia1b";
      };

      nativeBuildInputs = [ makeWrapper ];
      propagatedBuildInputs = [ vcstools pyyaml rosdistro catkinPkg wstool rospkg ];

      meta = {
        description = "The installer for ROS";
        homepage = http://wiki.ros.org/rosinstall;
      };
    };

    consoleBridge = stdenv.mkDerivation rec {
      name = "console_bridge-0.3.2";

      src = fetchFromGitHub {
        owner = "ros";
        repo = "console_bridge";
        rev = "0.4.0";
        sha256 = "1sxwabx59znmx99mfskz4wh1fhkwjanqjj6dy33zim55c6x8qnxr";
      };

      nativeBuildInputs = [ cmake ];

      meta = with lib; {
        description = "A ROS-independent package for logging that seamlessly pipes into rosconsole/rosout for ROS-dependent packages";
        homepage = https://github.com/ros/console_bridge;
        license = licenses.bsd3;
      };
    };
  };

in self
