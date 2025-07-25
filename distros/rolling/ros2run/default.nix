
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2run";
  version = "0.39.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2run/0.39.2-1.tar.gz";
    name = "0.39.2-1.tar.gz";
    sha256 = "b71486d5926f665a8a02dc85bb00fc4f4654eb76be27ba94bc21e30c11900bb4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = "The run command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
