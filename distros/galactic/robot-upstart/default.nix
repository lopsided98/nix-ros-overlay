
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-robot-upstart";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/galactic/robot_upstart/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "23415f06e9d88ad1af93bce698c639efb24850d1f528528e4fe4da4b32ecbe9d";
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
