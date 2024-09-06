
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-robot-upstart";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/robot_upstart-release/archive/release/jazzy/robot_upstart/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "f3ab183c06d2eb3e42c1293eb39d662f78ae19611f9d5dfbe3ec3d6b9b610e48";
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
