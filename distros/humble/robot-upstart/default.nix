
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-robot-upstart";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/humble/robot_upstart/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d7dcd21012f0153a465dc88d2da466316f2a0fdeb79cdca0a2f8a16c3e1db59d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python ];

  meta = {
    description = "The robot_upstart package provides scripts which may be used to install
    and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
