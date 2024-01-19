
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-robot-upstart";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/humble/robot_upstart/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "69ed49909e2d2ef215129252b073e8f563b4e2d41f04e80db9eff51dcc987df4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python ];

  meta = {
    description = ''The robot_upstart package provides scripts which may be used to install
    and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
